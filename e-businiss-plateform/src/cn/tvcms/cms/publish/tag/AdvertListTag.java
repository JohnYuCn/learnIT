/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.jsp.tagext.BodyTagSupport;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.utils.SpringUtils;
import cn.tvcms.cms.plugin.service.AdvertService;
import cn.tvcms.cms.pojo.Advert;


/**
 * @ClassName: advertListTag
 * @Description: 获取广告列表
 * @author lianpeng
 * @date 2014-10-9 下午08:59:04
 * 
 */
public class AdvertListTag extends BodyTagSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String superiorId;
	
	/**
	 * @return the superiorId
	 */
	public String getSuperiorId() {
		return superiorId;
	}

	/**
	 * @param superiorId 要设置的 superiorId
	 */
	public void setSuperiorId(String superiorId) {
		this.superiorId = superiorId;
	}

	/**
	 * @return the advert
	 */
	public Advert getAdvert() {
		return advert;
	}


	private int count;
	
	/**
	 * 获取栏目总个数。
	 *
	 * @author suntao
	 * 2014-7-27 下午02:24:39
	 */
	public int getCount() {
		return count;
	}
	
	private int index;
	
	/**
	 * 当前栏目的序号，从0开始。
	 *
	 * @author suntao
	 * 2014-7-27 下午02:31:35
	 */
	public int getIndex() {
		return index;
	}
	
	private Advert advert;
	
	private List<Advert> list;
	
	@Override
	public int doStartTag() {
		String parentColId = superiorId;
		if (parentColId == null) {
			Object obj = pageContext.getRequest().getAttribute("_currColumn");
			if (obj != null) {
				Advert advert = (Advert)obj;
				parentColId = String.valueOf(advert.getId());
			}
		}
		
		AdvertService advertService = (AdvertService)SpringUtils.getBean("advertService");
		CommonDao commonDao = advertService.getComm();
		Criteria criteria = commonDao.createCriteria(Advert.class);
		if (parentColId.indexOf(',') >= 0) { // 含有逗号
			String[] arr = parentColId.split(",");
			List<Integer> idList = new ArrayList<Integer>();
			for (String str : arr) {
				if (str != null && str.length() > 0) {
					str = str.trim();
					idList.add(Integer.parseInt(str));
				}
			}
			criteria.add(Restrictions.in("id", idList));
		} else {
			criteria.add(Restrictions.eq("id", Integer.parseInt(parentColId)));
		}
		list = commonDao.findByCriteria(Advert.class, criteria);
		
		count = list.size();
		if (list.size() == 0) {
			return EVAL_PAGE;
		} else {
			index = 0;
			advert = list.get(index);
			return EVAL_BODY_INCLUDE;
		}
	}
	
	@Override
	public int doAfterBody() {
		if (list == null || count <= 1 || index >= count - 1) {
			return EVAL_PAGE;
		}
		index++;
		advert = list.get(index);
		return EVAL_BODY_AGAIN;
	}
}

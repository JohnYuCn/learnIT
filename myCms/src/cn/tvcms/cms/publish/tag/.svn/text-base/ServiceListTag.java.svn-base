/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-10-8 下午09:29:17
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.utils.SpringUtils;
import cn.tvcms.cms.pojo.ServicesCategory;
import cn.tvcms.cms.system.service.CodeItemService;

/**
 * @ClassName: SuperiorCategory
 * @Description: 服务项目
 * @author lianpeng
 * @date 2014-10-8 下午09:29:17
 * 
 */
public class ServiceListTag extends BodyTagSupport  {
	
	private static final long serialVersionUID = 1L;
	
	private String superiorId;

	private String attr;
	
	private int count;
	
	private ServicesCategory servicesCategory;
	
	private int index;
	
	/**
	 * @return the servicesCategory
	 */
	public ServicesCategory getServicesCategory() {
		return servicesCategory;
	}


	/**
	 * @return the index
	 */
	public int getIndex() {
		return index;
	}



	/**
	 *  父id
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
	 * @param servicesCategory 要设置的 servicesCategory
	 */
	public void setServicesCategory(ServicesCategory servicesCategory) {
		this.servicesCategory = servicesCategory;
	}


	/**
	 * @return the attr
	 */
	public String getAttr() {
		return attr;
	}

	/**
	 * @param attr 要设置的 attr
	 */
	public void setAttr(String attr) {
		this.attr = attr;
	}
	
	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}

	/**
	 * @param count 要设置的 count
	 */
	public void setCount(int count) {
		this.count = count;
	}

	private List<ServicesCategory> list;
	
	@Override
	public int doStartTag() throws JspException {
		String parentColId = superiorId;
		if (parentColId == null) {
			Object obj = pageContext.getRequest().getAttribute("_currColumn");
			if (obj != null) {
				ServicesCategory category = (ServicesCategory)obj;
				parentColId = String.valueOf(category.getId());
			}
		}
		
		CodeItemService categoryService = (CodeItemService)SpringUtils.getBean("codeItemService");
		CommonDao commonDao = categoryService.getCommonDao();
		Criteria criteria = commonDao.createCriteria(ServicesCategory.class);
		if (parentColId == null || parentColId.length() == 0) {
			criteria.add(Restrictions.isNull("superiorId"));
		} else {
				criteria.add(Restrictions.eq("superiorId", Integer.parseInt(parentColId)));
		}
		
		list = commonDao.findByCriteria(ServicesCategory.class, criteria);
		
		count = list.size();
		if (list.size() == 0) {
			return EVAL_PAGE;
		} else {
			index = 0;
			servicesCategory = list.get(index);
			return EVAL_BODY_INCLUDE;
		}
	}
	
	@Override
	public int doAfterBody() {
		if (list == null || count <= 1 || index >= count - 1) {
			return EVAL_PAGE;
		}
		index++;
		servicesCategory = list.get(index);
		return EVAL_BODY_AGAIN;
	}
}

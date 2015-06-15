/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.jsp.tagext.BodyTagSupport;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.utils.SpringUtils;
import cn.tvcms.cms.cont.service.ContService;
import cn.tvcms.cms.pojo.Cont;
import cn.tvcms.cms.pojo.TvcmsColumn;

/** 
 * 获取内容列表Tag。
 * @author suntao 
 * @version create time：2014-8-10 上午11:51:20 
 * 
 */
public class ContListTag extends BodyTagSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String columnId;
	
	/**
	 * 设置栏目ID。
	 * @Title: setColumnId
	 * @Description: 设置栏目ID。
	 * @author suntao
	 * @param columnId
	 */
	public void setColumnId(String columnId) {
		this.columnId = columnId;
	}
	
	/**
	 * 获取栏目ID。
	 * @Title: getColumnId
	 * @Description: 获取栏目ID。
	 * @author suntao
	 * @return
	 */
	public String getColumnId() {
		return columnId;
	}
	
	private Integer contNum;
	
	/**
	 * 设置显示条数。
	 * @Title: setContNum
	 * @Description: 设置显示条数。
	 * @author suntao
	 * @param contNum
	 */
	public void setContNum(Integer contNum) {
		this.contNum = contNum;
	}
	
	/**
	 * 获取显示条数。
	 * @Title: getContNum
	 * @Description: 获取显示条数。
	 * @author suntao
	 * @return
	 */
	public Integer getContNum() {
		return contNum;
	}
	
    private Integer subTitle;
	
	/**
	 * 设置标题截取数。
	 * @Title: setSubTitle
	 * @Description: 设置标题截取数。
	 * @author suntao
	 * @param subTitle
	 */
	public void setSubTitle(Integer subTitle) {
		this.subTitle = subTitle;
	}
	
	/**
	 * 获取标题截取数。
	 * @Title: getSubTitle
	 * @Description: 获取标题截取数。
	 * @author suntao
	 * @return
	 */
	public Integer getSubTitle() {
		return subTitle;
	}
	
    private Integer tuijian;
	
	/**
	 * 设置推荐。
	 * @Title: setTuijian
	 * @Description: 设置推荐。
	 * @author suntao
	 * @param tuijian
	 */
	public void setTuijian(Integer tuijian) {
		this.tuijian = tuijian;
	}
	
	/**
	 * 获取推荐。
	 * @Title: getTuijian
	 * @Description: 获取推荐。
	 * @author suntao
	 * @return
	 */
	public Integer getTuijian() {
		return tuijian;
	}
	
    private Integer toutiao;
	
	/**
	 * 设置头条。
	 * @Title: setToutiao
	 * @Description: 设置头条。
	 * @author suntao
	 * @param toutiao
	 */
	public void setToutiao(Integer toutiao) {
		this.toutiao = toutiao;
	}
	
	/**
	 * 获取头条。
	 * @Title: getToutiao
	 * @Description: 获取头条。
	 * @author suntao
	 * @return
	 */
	public Integer getToutiao() {
		return toutiao;
	}
	
    private String limit;
	
	/**
	 * 设置范围。
	 * @Title: setLimit
	 * @Description: 设置范围。
	 * @author suntao
	 * @param toutiao
	 */
	public void setLimit(String limit) {
		this.limit = limit;
	}
	
	/**
	 * 获取范围。
	 * @Title: getLimit
	 * @Description: 获取范围。
	 * @author suntao
	 * @return
	 */
	public String getLimit() {
		return limit;
	}
	
    private String releaseTime;
	
	/**
	 * 设置显示排序。
	 * @Title: setReleaseTime
	 * @Description: 设置显示排序。
	 * @author suntao
	 * @param createTime
	 */
	public void setReleaseTime(String releaseTime) {
		this.releaseTime = releaseTime;
	}
	
	/**
	 * 获取显示排序。
	 * @Title: getReleaseTime
	 * @Description: 获取显示排序。
	 * @author suntao
	 * @return
	 */
	public String getReleaseTime() {
		return releaseTime;
	}
	
    private String sql;
	
	/**
	 * 设置附加SQL。
	 * @Title: setSql
	 * @Description: 设置附加SQL。
	 * @author suntao
	 * @param sql
	 */
	public void setSql(String sql) {
		this.sql = sql;
	}
	
	/**
	 * 获取附加SQL。
	 * @Title: getSql
	 * @Description: 获取附加SQL。
	 * @author suntao
	 * @return
	 */
	public String getSql() {
		return sql;
	}
	
	private int count;
	
	/**
	 * 获取内容总个数。
	 *
	 * @author suntao
	 * 2014-8-10 下午12:54:39
	 */
	public int getCount() {
		return count;
	}
	
	private int index;
	
	/**
	 * 当前内容的序号，从0开始。
	 *
	 * @author suntao
	 * 2014-8-10 下午12:55:43
	 */
	public int getIndex() {
		return index;
	}
	
	private Cont cont;
	
	/**
	 * 获取当前内容。
	 *
	 * @author suntao
	 * 2014-8-10 下午12:55:51
	 */
	public Cont getCont() {
		return cont;
	}
	
	/**
	 * 设置日期格式
	 */
	private String dateFormat; 
	/**
	 * @return the dateFormat
	 */
	public String getDateFormat() {
		return dateFormat;
	}

	/**
	 * @param dateFormat 要设置的 dateFormat
	 */
	public void setDateFormat(String dateFormat) {
		this.dateFormat = dateFormat;
	}

	private List<Cont> list;
	
	@Override
	public int doStartTag() {
		String currColId = columnId;
		if (currColId == null) {
			Object obj = pageContext.getRequest().getAttribute("_currColumn");
			if (obj != null) {
				TvcmsColumn column = (TvcmsColumn)obj;
				currColId = String.valueOf(column.getId());
			}
		}
		
		ContService contService = (ContService)SpringUtils.getBean("contService");
		CommonDao commonDao = contService.getDao();
		Criteria criteria = commonDao.createCriteria(Cont.class);
		if (currColId == null || currColId.length() == 0) {
			criteria.add(Restrictions.isNull("columnId"));
		} else {
			if (currColId.indexOf(',') >= 0) { // 含有逗号
				String[] arr = currColId.split(",");
				List<Integer> idList = new ArrayList<Integer>();
				for (String str : arr) {
					if (str != null && str.length() > 0) {
						str = str.trim();
						idList.add(Integer.parseInt(str));
					}
				}
				criteria.add(Restrictions.in("columnId", idList));
			} else {
				criteria.add(Restrictions.eq("columnId", Integer.parseInt(currColId)));
			}
		}
		
		// 推荐
		if (tuijian != null) {
			criteria.add(Restrictions.eq("tuijian", tuijian));
		}
		
		// 头条
		if (toutiao != null) {
			criteria.add(Restrictions.eq("toutiao", toutiao));
		}
		
		if (sql != null && sql.length() > 0) {
			criteria.add(Restrictions.sqlRestriction(sql));
		}
		
		Object parentTag = getParent();
		boolean isPage = false;
		int totalRecords = 0;
		if (parentTag != null && parentTag instanceof PageTag) {
			PageTag pageTag = (PageTag)parentTag;
			isPage = true;
			totalRecords = commonDao.count(criteria);
			pageTag.setTotalRecords(totalRecords);
			
			if (totalRecords > 0) {
				
				Integer pageSize = pageTag.getPageSize();
				if (pageSize == null) {
					pageSize = 20;
				}
				Integer currPage = pageTag.getCurrPage();
				if (currPage == null) {
					currPage = 1;
				}
				criteria.setFirstResult((currPage - 1) * pageSize);
				criteria.setMaxResults(pageSize);
			}
		} else {
			if (limit == null || limit.length() == 0) {
				if (contNum != null) {
					criteria.setMaxResults(contNum);
				}
			} else {
				int pos = limit.indexOf(',');
				if (pos > 0) {
					int firstIdx = Integer.parseInt(limit.substring(0, pos));
					int fetchSize = Integer.parseInt(limit.substring(pos + 1));
					criteria.setFirstResult(firstIdx - 1);
					criteria.setMaxResults(fetchSize);
				}
			}
		}
		
		if (isPage && totalRecords > 0 || !isPage) {
			if ("desc".equals(releaseTime)) {
				criteria.addOrder(Order.desc("releaseTime"));
			} else {
				criteria.addOrder(Order.asc("releaseTime"));
			}
			list = commonDao.findByCriteria(Cont.class, criteria);
			
			count = list.size();
		} else {
			list = new ArrayList<Cont>();
			count = 0;
		}
		
		if (list.size() == 0) {
			return EVAL_PAGE;
		} else {
			index = 0;
			cont = list.get(index);
			return EVAL_BODY_INCLUDE;
		}
	}
	
	@Override
	public int doAfterBody() {
		if (list == null || count <= 1 || index >= count - 1) {
			return EVAL_PAGE;
		}
		index++;
		cont = list.get(index);
		return EVAL_BODY_AGAIN;
	}
}

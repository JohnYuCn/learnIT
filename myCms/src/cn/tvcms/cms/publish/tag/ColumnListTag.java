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
import cn.tvcms.cms.pojo.TvcmsColumn;
import cn.tvcms.cms.column.service.ColumnService;

/** 
 * 获取栏目列表Tag。
 * @author suntao 
 * @version create time：2014-7-27 下午01:56:31 
 * 
 */
public class ColumnListTag extends BodyTagSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String bclassId;
	
	/**
	 * 设置父栏目ID。
	 * @Title: setBclassId
	 * @Description: 设置父栏目ID。
	 * @author suntao
	 * @param bclassId
	 */
	public void setBclassId(String bclassId) {
		this.bclassId = bclassId;
	}
	
	/**
	 * 获取父栏目ID。
	 * @Title: getBclassId
	 * @Description: 获取父栏目ID。
	 * @author suntao
	 * @return
	 */
	public String getBclassId() {
		return bclassId;
	}
	
	private String columnId;
	
	/**
	 * 设置查询的栏目ID。
	 * @Title: setColumnId
	 * @Description: 设置查询的栏目ID。
	 * @author suntao
	 * @param columnId
	 */
	public void setColumnId(String columnId) {
		this.columnId = columnId;
	}
	
	/**
	 * 获取查询的栏目ID。
	 * @Title: getColumnId
	 * @Description: 获取查询的栏目ID。
	 * @author suntao
	 * @return
	 */
	public String getColumnId() {
		return columnId;
	}
	
    private String createTime;
	
	/**
	 * 设置显示排序。
	 * @Title: setCreateTime
	 * @Description: 设置显示排序。
	 * @author suntao
	 * @param createTime
	 */
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	/**
	 * 获取显示排序。
	 * @Title: getCreateTime
	 * @Description: 获取显示排序。
	 * @author suntao
	 * @return
	 */
	public String getCreateTime() {
		return createTime;
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
	
	private TvcmsColumn column;
	
	/**
	 * 获取当前栏目。
	 *
	 * @author suntao
	 * 2014-7-27 下午02:32:24
	 */
	public TvcmsColumn getColumn() {
		return column;
	}
	
	private List<TvcmsColumn> list;
	
	@Override
	public int doStartTag() {
		String parentColId = bclassId;
		if (parentColId == null) {
			Object obj = pageContext.getRequest().getAttribute("_currColumn");
			if (obj != null) {
				TvcmsColumn column = (TvcmsColumn)obj;
				parentColId = String.valueOf(column.getId());
			}
		}
		
		ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
		CommonDao commonDao = columnService.getComm();
		Criteria criteria = commonDao.createCriteria(TvcmsColumn.class);
		if (parentColId == null || parentColId.length() == 0) {
			criteria.add(Restrictions.isNull("parentColId"));
		} else {
			if (parentColId.indexOf(',') >= 0) { // 含有逗号
				String[] arr = parentColId.split(",");
				List<Integer> idList = new ArrayList<Integer>();
				for (String str : arr) {
					if (str != null && str.length() > 0) {
						str = str.trim();
						idList.add(Integer.parseInt(str));
					}
				}
				criteria.add(Restrictions.in("bclassId", idList));
			} else {
				criteria.add(Restrictions.eq("bclassId", Integer.parseInt(parentColId)));
			}
		}
		if (columnId != null && columnId.length() > 0) {
			String[] arr = columnId.split(",");
			List<Integer> idList = new ArrayList<Integer>();
			for (String str : arr) {
				if (str != null && str.length() > 0) {
					str = str.trim();
					idList.add(Integer.parseInt(str));
				}
			}
			if (idList.size() > 0) {
				criteria.add(Restrictions.in("id", idList));
			}
		}
		if (sql != null && sql.length() > 0) {
			criteria.add(Restrictions.sqlRestriction(sql));
		}
		if ("desc".equals(createTime)) {
			criteria.addOrder(Order.desc("createTime"));
		} else {
			criteria.addOrder(Order.asc("createTime"));
		}
		list = commonDao.findByCriteria(TvcmsColumn.class, criteria);
		
		count = list.size();
		if (list.size() == 0) {
			return EVAL_PAGE;
		} else {
			index = 0;
			column = list.get(index);
			return EVAL_BODY_INCLUDE;
		}
	}
	
	@Override
	public int doAfterBody() {
		if (list == null || count <= 1 || index >= count - 1) {
			return EVAL_PAGE;
		}
		index++;
		column = list.get(index);
		return EVAL_BODY_AGAIN;
	}
}

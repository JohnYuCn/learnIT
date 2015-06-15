/**
 * @Project: 特维内容管理系统
 * @Description: 分页Tag。
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author suntao
 * @date 2014-9-14 上午10:31:41
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * @ClassName: PageTag
 * @Description: 分页Tag。
 * @author suntao
 * @date 2014-9-14 上午10:31:41
 * 
 */
public class PageTag extends TagSupport {

	/** 
	 * @Fields serialVersionUID : 
	 */ 
	private static final long serialVersionUID = 1L;

	private Integer pageSize;
	
	/**
	 * 获取每页行数。
	 * @Title: getPageSize
	 * @Description: 获取每页行数。
	 * @author suntao
	 * @date 2014-9-14 上午10:34:53
	 * @return
	 */
	public Integer getPageSize() {
		return pageSize;
	}
	
	/**
	 * 设置每页行数。
	 * @Title: setPageSize
	 * @Description: 设置每页行数。
	 * @author suntao
	 * @date 2014-9-14 上午10:35:24
	 * @param pageSize
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	
	private Integer currPage;
	
	/**
	 * 获取当前页号。
	 * @Title: getCurrPage
	 * @Description: 获取当前页号。
	 * @author suntao
	 * @date 2014-9-14 上午10:36:27
	 * @return
	 */
	public Integer getCurrPage() {
		return currPage;
	}
	
	/**
	 * 设置当前页号。
	 * @Title: setCurrPage
	 * @Description: 设置当前页号。
	 * @author suntao
	 * @date 2014-9-14 上午10:38:13
	 * @param currPage
	 */
	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}
	
	private Integer totalRecords;
	
	/**
	 * 获取总记录数。
	 * @Title: getTotalRecords
	 * @Description: 获取总记录数。
	 * @author suntao
	 * @date 2014-9-14 上午10:39:47
	 * @return
	 */
	public Integer getTotalRecords() {
		return totalRecords;
	}
	
	/**
	 * 设置总记录数。
	 * @Title: setTotalRecords
	 * @Description: 设置总记录数。
	 * @author suntao
	 * @date 2014-9-14 上午10:40:33
	 * @param totalRecords
	 */
	public void setTotalRecords(Integer totalRecords) {
		if (pageSize == null) {
			pageSize = 20;
		}
		if (currPage == null) {
			currPage = 1;
		}
		this.totalRecords = totalRecords;
		
		if (totalRecords == 0) {
			totalPage = 0;
		} else {
			totalPage = totalRecords / pageSize;
			if (totalRecords % pageSize > 0) {
				totalPage++;
			}
		}
		
		// 把总页总数放入header，在便在静态化、生成索引时使用
		HttpServletResponse response = (HttpServletResponse)pageContext.getResponse();
		response.setHeader("totalPage", String.valueOf(totalPage));
	}
	
	private Integer totalPage;
	
	/**
	 * 获取总页数。
	 * @Title: getTotalPage
	 * @Description: 获取总页数。
	 * @author suntao
	 * @date 2014-9-14 上午10:41:28
	 * @return
	 */
	public Integer getTotalPage() {
		return totalPage;
	}
	
	@Override
	public int doStartTag() {
		HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
		String str = request.getParameter("pageSize");
		if (str != null && str.length() > 0) {
			pageSize = Integer.parseInt(str);
		}
		str = request.getParameter("currPage");
		if (str != null && str.length() > 0) {
			currPage = Integer.parseInt(str);
		}
		
		return EVAL_BODY_INCLUDE;
	}
	
	@Override
	public int doAfterBody() {
		return EVAL_PAGE;
	}
}

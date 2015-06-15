/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-9-17 下午09:25:57
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

/**
 * @ClassName: Page
 * @Description: 分页实体类
 * @author lianpeng
 * @date 2014-9-17 下午09:25:57
 */
public class Page {

	//起始位置
	private  Integer start;
	
	//显示记录
	private Integer limit;
	
	//总数
	private  Integer totalCount;
	
	//显示记录数
	private Integer pageSize ;
	
	//当前页数
	private Integer currPage;
	
	private Integer countPage;
	/**
	 * @return the countPage
	 */
	public Integer getCountPage() {
		return countPage;
	}

	/**
	 * @param countPage 要设置的 countPage
	 */
	public void setCountPage(Integer countPage) {
		this.countPage = countPage;
	}

	/**
	 * @return the start
	 */
	public Integer getStart() {
		return start;
	}

	/**
	 * @param start 要设置的 start
	 */
	public void setStart(Integer start) {
		if(start == null){
			start = 0;
		}
		this.start = start;
	}
	
	/**
	 * @return the limit
	 */
	public Integer getLimit() {
		return limit;
	}

	/**
	 * @param limit 要设置的 limit
	 */
	public void setLimit(Integer limit) {
		if(limit == null){
			limit = 20;
		}
		this.limit = limit;
	}


	/**
	 * @return the totalCount
	 */
	public Integer getTotalCount() {
		return totalCount;
	}

	/**
	 * @param totalCount 要设置的 totalCount
	 */
	public void setTotalCount(Integer totalCount) {
		if(pageSize == null){
			pageSize = 20;
		}
		
		if(currPage == null){
			currPage = 1;
		}else{
			currPage = currPage + 1;
		}
		
		if(countPage == null){
			countPage = 0;
		}
		this.totalCount = totalCount;
		if(totalCount == 0){
			countPage = 0;
		}else{
			countPage = totalCount / pageSize;
			if (totalCount % pageSize > 0) {
				countPage++;
			}
		}
	}

	/**
	 * @return the pageSize
	 */
	public Integer getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize 要设置的 pageSize
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @return the currPage
	 */
	public Integer getCurrPage() {
		return currPage;
	}

	/**
	 * @param currPage 要设置的 currPage
	 */
	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	public String getPaging (){
		String paging = "&lt;a href='#' &gt;上一页&lt;/a&gt;共" +totalCount 
		+ "条记录，每页"+ pageSize+"条,当前页数" + currPage +"共"+countPage +"页&lt;input type='text' value='下一页' /&gt;";
		return paging;
	}

}

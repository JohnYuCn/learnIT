/**
 * @Project: 特维内容管理系统
 * @Description: 搜索结果。
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author suntao
 * @date 2014-9-20 下午02:59:34
 * @version V1.0
 */
package cn.tvcms.cms.search.service;

import java.util.List;

/**
 * @ClassName: SearchResult
 * @Description: 搜索结果。
 * @author suntao
 * @date 2014-9-20 下午02:59:34
 * 
 */
public class SearchResult {

	private int pageSize;
	
	private int currPage;
	
	private int totalHit;
	
	private String keyword;
	
	private List<SearchContent> contents;

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getTotalHit() {
		return totalHit;
	}

	public void setTotalHit(int totalHit) {
		this.totalHit = totalHit;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<SearchContent> getContents() {
		return contents;
	}

	public void setContents(List<SearchContent> contents) {
		this.contents = contents;
	}
	
	
}

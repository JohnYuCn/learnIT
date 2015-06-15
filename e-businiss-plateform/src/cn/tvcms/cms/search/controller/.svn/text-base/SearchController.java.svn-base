/**
 * @Project: 特维内容管理系统
 * @Description: 搜索Controller。
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author suntao
 * @date 2014-9-20 下午12:03:14
 * @version V1.0
 */
package cn.tvcms.cms.search.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.search.service.SearchResult;
import cn.tvcms.cms.search.service.SearchService;

/**
 * @ClassName: SearchController
 * @Description: 搜索Controller。
 * @author suntao
 * @date 2014-9-20 下午12:03:14
 * 
 */
@Controller
public class SearchController {
	private static final  Log log = LogFactory.getLog(SearchController.class);
	
	@Autowired
	private SearchService searchService;
    
	/**
	 * 生成建立索引页面。
	 * @Title: createIndexPage
	 * @Description: 生成建立索引页面。
	 * @author suntao
	 * @date 2014-9-20 下午05:35:42
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/search_index/show")
	public ModelAndView createIndexPage(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("search/create_index");
		return mav;
	}
	
	/**
	 * 建立索引。
	 * @Title: createIndex
	 * @Description: 建立索引。
	 * @author suntao
	 * @date 2014-9-20 下午05:36:02
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/search_index/create")
	public Map<String, Object> createIndex(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		String reqType = SystemUtils.getParameter(request, "reqType");
		String index = null;
		String list = null;
		String content = null;
		String single = null;
		if ("2".equals(reqType)) {
			index = SystemUtils.getParameter(request, "index");
			list = SystemUtils.getParameter(request, "list");
			content = SystemUtils.getParameter(request, "content");
			single = SystemUtils.getParameter(request, "single");
		}
		
		try {
			searchService.createIndex(reqType, index, list, content, single);
			
			result.put("success", true);
		} catch (Exception e) {
			result.put("success", false);
			log.error(e.getMessage(), e);
		}
		
		result.put("tag", "1");
		return result;
	}
	
	/**
	 * 搜索以获取搜索结果。
	 * @Title: search
	 * @Description: 搜索以获取搜索结果。
	 * @author suntao
	 * @date 2014-9-20 下午05:36:22
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/search/index")
	public ModelAndView search(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		String keyword = SystemUtils.getParameter(request, "keyword");
		
		String pageSizeStr = SystemUtils.getParameter(request, "pageSize");
		int pageSize = 20;
		if (pageSizeStr != null && pageSizeStr.length() > 0) {
			pageSize = Integer.parseInt(pageSizeStr);
		}

		String currPageStr = SystemUtils.getParameter(request, "currPage");
		int currPage = 1;
		if (currPageStr != null && currPageStr.length() > 0) {
			currPage = Integer.parseInt(currPageStr);
		}

		SearchResult searchResult = searchService.search(keyword, pageSize, currPage);
		mav.addObject("searchResult", searchResult);
		
		mav.setViewName("search/search");
		return mav;
	}
}

/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.publish.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.column.service.ColumnService;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.MessageUtils;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.cont.service.ContService;
import cn.tvcms.cms.pojo.Cont;
import cn.tvcms.cms.pojo.Template;
import cn.tvcms.cms.pojo.TvcmsColumn;
import cn.tvcms.cms.template.service.TemplateService;

/** 
 * 静态化Controller。
 * @author suntao 
 * @version create time：2014-8-10 下午4:40:52 
 * 
 */
@Controller
public class StaticController {
	private static final  Log log = LogFactory.getLog(StaticController.class);
	
	@Autowired
	private ContService contService;
	
	@Autowired
	private ColumnService columnService;
	
	@Autowired
	private TemplateService templateService;
	
	/**
	 * 静态化操作页面。
	 * @Title: createMakeStaticPage
	 * @Description: 静态化操作页面。
	 * @author suntao
	 * @date 2014-8-23 上午10:34:17
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/system/static")
	public ModelAndView createMakeStaticPage(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("system/static");
		return mav;
	}
	
	/**
	 * 静态化后台操作。
	 * @Title: makeStatic
	 * @Description: 静态化后台操作。
	 * @author suntao
	 * @date 2014-8-23 上午11:34:42
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/system/makeStatic")
	public Map<String, Object> makeStatic(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			// 静态化首页
			String index = SystemUtils.getParameter(request, "index");
			if ("1".equals(index)) {
				makeStaticIndex(request);
			}
			
			// 静态化列表
			String list = SystemUtils.getParameter(request, "list");
			if ("1".equals(list)) {
				makeStaticList(request);
			}
			
			// 静态化内容
			String content = SystemUtils.getParameter(request, "content");
			if ("1".equals(content)) {
				makeStaticContent(request);
			}
			
			// 静态化内容
			String single = SystemUtils.getParameter(request, "single");
			if ("1".equals(single)) {
				makeStaticSingle(request);
			}
			
			result.put("success", true);
		} catch (Exception e) {
			result.put("success", false);
			log.error(e.getMessage(), e);
		}
		
		
		result.put("tag", "1");
		return result;
	}
	
	/**
	 * 首页静态化。
	 * @Title: makeStaticIndex
	 * @Description: 首页静态化。
	 * @author suntao
	 * @date 2014-8-23 上午11:35:12
	 * @param request
	 * @throws Exception
	 */
	private void makeStaticIndex(HttpServletRequest request) throws Exception {
		String localUrl = MessageUtils.getMessage("websiteLocalUrl");
		String staticPage = MessageUtils.getMessage("staticPageDir");
		String url = localUrl + "/index.html";
		String dirStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticPage;
		saveStaticPage(url, dirStr, "index.html");
	}
	
	/**
	 * 列表静态化。
	 * @Title: makeStaticList
	 * @Description: 列表静态化。
	 * @author suntao
	 * @date 2014-8-23 下午01:23:25
	 * @param request
	 * @throws Exception
	 */
	private void makeStaticList(HttpServletRequest request) throws Exception {
		String localUrl = MessageUtils.getMessage("websiteLocalUrl");
		String staticPage = MessageUtils.getMessage("staticPageDir");
		String dirStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticPage;
		TvcmsColumn column = columnService.findByFileSave("");
		makeSubColumnStatic(column, dirStr, localUrl);
	}
	
	/**
	 * 对一个栏目的子栏目做静态化。
	 * @Title: makeSubColumnStatic
	 * @Description: 对一个栏目的子栏目做静态化。
	 * @author suntao
	 * @date 2014-8-23 下午01:23:52
	 * @param column
	 * @param dirStr
	 * @param url
	 * @throws Exception
	 */
	private void makeSubColumnStatic(TvcmsColumn column, String dirStr, String url) throws Exception {
		if (column == null) {
			return;
		}
		List<TvcmsColumn> list = columnService.findById(column.getId());
		for (TvcmsColumn subColumn : list) {
			String fileSave = subColumn.getFileSave();
			if (fileSave == null || fileSave.length() == 0) {
				continue;
			}
			String colUrl = url + "/" + fileSave;
			String colDirStr = dirStr + "/" + fileSave;
			String totalPageStr = saveStaticPage(colUrl + "/index.html", colDirStr, "index.html");
			if (totalPageStr != null && totalPageStr.length() > 0) { 
				int totalPage = Integer.parseInt(totalPageStr);
				if (totalPage > 1) { // 如果页数大于1，生成其他页面的静态化文件
					for (int i = 2; i <= totalPage; i++) {
						saveStaticPage(colUrl + "/index.html?currPage=" + i, colDirStr, "index_" + i + ".html");
					}
				}
			}
			
			makeSubColumnStatic(subColumn, colDirStr, colUrl);
		}
	}
	
	/**
	 * 内容静态化。
	 * @Title: makeStaticContent
	 * @Description: 内容静态化。
	 * @author suntao
	 * @date 2014-8-23 下午01:33:01
	 * @param request
	 * @throws Exception
	 */
	private void makeStaticContent(HttpServletRequest request) throws Exception {
		String localUrl = MessageUtils.getMessage("websiteLocalUrl");
		String staticPage = MessageUtils.getMessage("staticPageDir");
		String dirStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticPage;
		TvcmsColumn column = columnService.findByFileSave("");
		makeSubColumnContentStatic(column, dirStr, localUrl);
	}
	
	/**
	 * 对一个栏目的子栏目中所有文章做静态化。
	 * @Title: makeSubColumnContentStatic
	 * @Description: 对一个栏目的子栏目中所有文章做静态化。
	 * @author suntao
	 * @date 2014-8-23 下午01:33:20
	 * @param column
	 * @param dirStr
	 * @param url
	 * @throws Exception
	 */
	private void makeSubColumnContentStatic(TvcmsColumn column, String dirStr, String url) throws Exception {
		if (column == null) {
			return;
		}
		List<TvcmsColumn> list = columnService.findById(column.getId());
		for (TvcmsColumn subColumn : list) {
			String fileSave = subColumn.getFileSave();
			if (fileSave == null || fileSave.length() == 0) {
				continue;
			}
			String colUrl = url + "/" + fileSave;
			String colDirStr = dirStr + "/" + fileSave;
			
			List<Cont> contList = contService.findById(subColumn.getId());
			for (Cont cont : contList) {
				Date createTime = cont.getCreateTime();
				String contDir = null;
				if (createTime == null) {
					contDir = colDirStr;
				} else {
					String createStr = DateTools.getDateYYYYMMDD(createTime);
					contDir = colDirStr + "/" + createStr;
				}
				saveStaticPage(colUrl + "/" + cont.getId() + ".html", contDir, cont.getId() + ".html");
			}
			
			makeSubColumnContentStatic(subColumn, colDirStr, colUrl);
		}
	}
	
	/**
	 * 对单页面进行静态化处理。
	 * @Title: makeStaticSingle
	 * @Description: 对单页面进行静态化处理。
	 * @author suntao
	 * @date 2014-9-14 下午04:57:43
	 * @param request
	 * @throws Exception
	 */
	private void makeStaticSingle(HttpServletRequest request) throws Exception {
		List<Template> list = templateService.findAllSinglePage();
		String localUrl = MessageUtils.getMessage("websiteLocalUrl");
		String staticPage = MessageUtils.getMessage("staticPageDir");
		for (Template template : list) {
			String filename = template.getFilename();
			String url = localUrl + "/" + filename;
			String dirStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticPage;
			saveStaticPage(url, dirStr, filename);
		}
	}
	
	/**
	 * 保存静态页面文件。
	 * @Title: saveStaticPage
	 * @Description: 保存静态页面文件。
	 * @author suntao
	 * @date 2014-8-23 上午11:35:43
	 * @param url
	 * @param dir
	 * @param staticPageName
	 * @throws Exception
	 */
	public String saveStaticPage(String url, String dir, String staticPageName) throws Exception {
		String append = (url.indexOf('?') >= 0) ? "&" : "?";
		URL ur = new URL(url + append + "mode=d"); // 参数mode=d用于不获取静态化化内容，动态执行
		HttpURLConnection urlConn = (HttpURLConnection) ur.openConnection();
        BufferedReader reader = new BufferedReader(new InputStreamReader(urlConn.getInputStream(), "UTF-8"));
        
        // 获取列表总页数
        String result = urlConn.getHeaderField("totalPage");
        
		File dirFile = new File(dir);
		if (!dirFile.exists()) {
			dirFile.mkdirs();
		}
		
		OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(dir + "/" + staticPageName),"UTF-8"); 
		IOUtils.copy(reader, writer);
		writer.flush();
		writer.close();
		reader.close();
		
		return result;
	}
	
}

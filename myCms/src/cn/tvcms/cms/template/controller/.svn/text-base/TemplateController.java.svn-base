/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.template.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.BizException;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.MessageUtils;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.pojo.Template;
import cn.tvcms.cms.pojo.TemplateCatalog;
import cn.tvcms.cms.publish.controller.StaticController;
import cn.tvcms.cms.template.service.TemplateService;

/** 
 * 模板Controller。
 * @author suntao 
 * @version create time：2014-6-22 下午01:49:56 
 * 
 */
@Controller
public class TemplateController {
	@Autowired
	private TemplateService templateService;
	
	@Autowired
	private QueryPaging queryPaging;
	
	@Autowired
	private StaticController staticController;

	/**
	 * 生成左侧菜单页面。
	 *
	 * @author suntao
	 * 2014-6-22 下午03:34:13
	 */
	@RequestMapping("/template/sidebar")
	public ModelAndView createSideBar() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("template/sidebar");
		return mav;
	}
	/**
	 * @Title: initSidebar
	 * @Description: TODO(刷新(加载)树)
	 * @author wangChuang
	 * @date 2015-4-7 下午06:16:47
	 * @return
	 */
	@RequestMapping("template/sidebarLeft")
	public String initSidebar(){
		return "template/sidebarLeft";
	}
	
	/**
	 * 生成模板目录结构的节点数据。
	 *
	 * @author suntao
	 * 2014-6-22 下午01:59:19
	 */
	@RequestMapping("/template/tree_load")
	public List<Map<String, Object>> loadTreeNode(HttpServletRequest request) throws Exception {
		String id = SystemUtils.getParameter(request, "id");
		List<Map<String, Object>> result = new ArrayList<Map<String, Object>>();
		if (id == null || id.length() == 0) {
			result = new ArrayList<Map<String, Object>>();
			Map<String, Object> root = new HashMap<String, Object>();
			root.put("id", "root");
			root.put("name", "模板根目录");
			root.put("isParent", true);
			root.put("open", true);
			result.add(root);
			
			List<Map<String, Object>> children = new ArrayList<Map<String, Object>>();
			List<TemplateCatalog> list = templateService.findCatalog(null);
			convertCatalog(children, list, "root");
			
			root.put("children", children);
		} else if ("root".equals(id)) {
			List<TemplateCatalog> list = templateService.findCatalog(null);
			convertCatalog(result, list, "root");
		} else if (id.startsWith("c")) {
			Integer catalogId = Integer.parseInt(id.substring(1));
			List<TemplateCatalog> list = templateService.findCatalog(catalogId);
			if (list.size() > 0) {
				convertCatalog(result, list, id);
			}
			List<Template> tplList = templateService.findByCatalogId(catalogId);
			for (Template tpl : tplList) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("id", "t" + tpl.getId());
				map.put("name", tpl.getTemplateName());
				map.put("isParent", false);
				map.put("parentId", id);
				result.add(map);
			}
		}
		return result;
	}
	
	private void convertCatalog(List<Map<String, Object>> children, List<TemplateCatalog> list, String parentId) {
		for (TemplateCatalog ctl : list) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", "c" + ctl.getCatalogId());
			map.put("name", ctl.getCatalogName());
			map.put("isParent", true);
			map.put("parentId", parentId);
			children.add(map);
		}
	}
	
	/**
	 * 生成编辑目录的页面。
	 *
	 * @author suntao
	 * 2014-6-22 下午05:40:36
	 */
	@RequestMapping("/template/editCatalog")
	public ModelAndView createEditCatalogPage(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		String oper = SystemUtils.getParameter(request, "op");
		if ("mod".equals(oper)) {
			Integer ctlId = Integer.parseInt(SystemUtils.getParameter(request, "id"));
			TemplateCatalog ctl = templateService.findCatalogById(ctlId);
			mav.addObject("ctl", ctl);
		}
		
		mav.setViewName("template/editCatalog");
		return mav;
	}
	
	/**
	 * 保存目录。
	 *
	 * @author suntao
	 * 2014-6-22 下午05:40:57
	 */
	@RequestMapping("/template/saveCatalog")
	@ResponseBody
	public Object saveCatalog(HttpServletRequest request) throws Exception {
		String result="success";
		
		try {
			String str = SystemUtils.getParameter(request, "id");
			TemplateCatalog ctl = null;
			if (str == null || str.length() == 0) {
				ctl = new TemplateCatalog();
				ctl.setIsDeleted(0);
				ctl.setCreateTime(new Date());
				ctl.setCreateUserId(SystemUtils.getLoginUserId(request));
				
				str = SystemUtils.getParameter(request, "pid");
				if (str != null && str.length() > 0) ctl.setTopCatalogId(Integer.parseInt(str));
			} else {
				Integer cId = Integer.parseInt(str);
				if (cId == 1 || cId == 2 || cId == 3 || cId == 4) throw new BizException("不允许修改");
				ctl = templateService.findCatalogById(cId);
				ctl.setModifyTime(new Date());
				ctl.setModifyUserId(SystemUtils.getLoginUserId(request));
			}
			ctl.setCatalogName(SystemUtils.getParameter(request, "name"));
			templateService.saveCatalog(ctl);
		} catch (Exception e) {
			result = "error";
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * 删除模板目录。
	 *
	 * @author suntao
	 * 2014-6-29 下午02:48:52
	 */
	@RequestMapping("/template/delCatalog")
	@ResponseBody
	public Object delCatalog(HttpServletRequest request) throws Exception {
		String result = "success";
		try {
			String str = SystemUtils.getParameter(request, "id");
			if (str != null && str.length() > 0) {
				Integer cId = Integer.parseInt(str);
				if (cId == 1 || cId == 2 || cId == 3 || cId == 4) throw new BizException("不允许删除");
				TemplateCatalog ctl = templateService.findCatalogById(cId);
				ctl.setDeleteTime(new Date());
				ctl.setDeleteUserId(SystemUtils.getLoginUserId(request));
				ctl.setIsDeleted(1);
				templateService.saveCatalog(ctl);
			}
		} catch (Exception e) {
			result = "error";
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * 生成模板列表界面。
	 *
	 * @author suntao
	 * 2014-6-29 上午11:24:10
	 */
	@RequestMapping("/template/list")
	public ModelAndView createTemplateListPage(HttpServletRequest request) throws Exception {
		Integer catalogId = 0;
		if(request.getParameter("cid")!=null){
			catalogId = Integer.parseInt(request.getParameter("cid"));
		}
		String sqlWhere="from Template where catalogId="+catalogId+" and isDeleted = 0 order by createTime desc";
		ModelAndView mav = new ModelAndView();
		//List<Template> list = templateService.findByCatalogId(catalogId);
		Map<String, Object> map=queryPaging.query(sqlWhere, request, Template.class);
		mav.addObject("paging", map);
		mav.setViewName("template/list");
		return mav;
	}
	/**
	 * 生成模板编辑页面。 
	 *
	 * @author suntao
	 * 2014-6-29 下午01:11:07
	 */
	@RequestMapping("/template/template")
	public ModelAndView createEditTemplatePage(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		String id = SystemUtils.getParameter(request, "id");
		
		if(id!=null){
			if(id.equals("0")){//id 为0时  设置id为 第一条数据的id  默认显示使用
				Template tpl = templateService.findAll().get(0);
				id = tpl.getId().toString();
			}
		}
		if (id != null && id.length() > 0) {
			Template tpl = templateService.findById(Integer.parseInt(id));
			String cont = tpl.getTemplateContent();
			cont = cont.replaceAll("<textarea>", "&lt;textarea&gt;");
			cont = cont.replaceAll("</textarea>", "&lt;/textarea&gt;");
			String oneCont = tpl.getRecordOneContent();
			String twoCont = tpl.getRecordTwoContent();
			if(StringUtils.isNotEmpty(oneCont)){
				oneCont = oneCont.replaceAll("<textarea>", "&lt;textarea&gt;");
				oneCont = oneCont.replaceAll("</textarea>", "&lt;/textarea&gt;");
			}
			if(StringUtils.isNotEmpty(twoCont)){
				twoCont = twoCont.replaceAll("<textarea>", "&lt;textarea&gt;");
				twoCont = twoCont.replaceAll("</textarea>", "&lt;/textarea&gt;");
			}
			tpl.setTemplateContent(cont);
			tpl.setRecordOneContent(oneCont);
			tpl.setRecordTwoContent(twoCont);
			mav.addObject("tpl", tpl);
		}
		mav.addObject("cid", request.getParameter("cid"));
		mav.addObject("treePid", request.getParameter("treePid"));
		mav.addObject("id",id);
		mav.setViewName("template/template");
		return mav;
	}
	
	/**
	 * 保存模板。
	 *
	 * @author suntao
	 * 2014-6-29 下午01:28:46
	 */
	@RequestMapping("/template/saveTemplate")
	@ResponseBody
	public Object saveTemplate(HttpServletRequest request) throws Exception {
		String str = SystemUtils.getParameter(request, "id");
		Template tpl = null;
		String returnString = "success";
		try {
			String isBuild=SystemUtils.getParameter(request, "isBuild");
			if (str == null || str.length() == 0) {
				tpl = new Template();
				tpl.setIsDeleted(0);
				tpl.setCreateTime(new Date());
				tpl.setCreateUserId(SystemUtils.getLoginUserId(request));
				
				str = SystemUtils.getParameter(request, "cid");
				if (str != null && str.length() > 0) tpl.setCatalogId(Integer.parseInt(str));
			} else {
				tpl = templateService.findById(Integer.parseInt(str));
				
				tpl.setModifyUserId(SystemUtils.getLoginUserId(request));
				tpl.setRecordTwoContent(tpl.getRecordOneContent());
				tpl.setRecordTwoTime(tpl.getRecordOneTime());
				tpl.setRecordOneContent(tpl.getTemplateContent());
				if(tpl.getModifyTime()==null){
					tpl.setRecordOneTime(tpl.getCreateTime());	
				}else{
					tpl.setRecordOneTime(tpl.getModifyTime());
				}
				
				tpl.setModifyTime(new Date());
			}
			tpl.setTemplateName(SystemUtils.getParameter(request, "templateName"));
			tpl.setFilename(SystemUtils.getParameter(request, "filename"));
			tpl.setVarName(SystemUtils.getParameter(request, "varName"));System.out.println(SystemUtils.getParameter(request, "varName"));
			tpl.setTemplateContent(SystemUtils.getParameter(request, "templateContent"));
			
			templateService.saveTemplate(tpl, SystemUtils.getWebAppRealPath(request));
			if(isBuild!=null&&isBuild.equals("1")){//执行静态化
				String localUrl = MessageUtils.getMessage("websiteLocalUrl");
				String staticPage = MessageUtils.getMessage("staticPageDir");
				String filename = tpl.getFilename();
				String url = localUrl + "/" + filename;
				String dirStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticPage;
				staticController.saveStaticPage(url, dirStr, filename);
			}
		} catch (Exception e) {
			returnString = "error";
			e.printStackTrace();
		}
		return returnString;
	}
	
	/**
	 * 删除模板。
	 *
	 * @author suntao
	 * 2014-6-29 下午02:45:21
	 */
	@RequestMapping("/template/delTemplate")
	@ResponseBody
	public Object delTemplate(HttpServletRequest request) throws Exception {
		String result = "success";
		try {
			String str = SystemUtils.getParameter(request, "id");
			if (str != null && str.length() > 0) {
				Template tpl = templateService.findById(Integer.parseInt(str));
				tpl.setDeleteTime(new Date());
				tpl.setDeleteUserId(SystemUtils.getLoginUserId(request));
				tpl.setIsDeleted(1);
				templateService.saveTemplate(tpl, SystemUtils.getWebAppRealPath(request));
			}
		} catch (Exception e) {
			result = "error";
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 
	 * @Title: showRecord
	 * @Description显示模板修改记录
	 * @author sunjinyang
	 * @date 2014-10-25 下午01:51:58
	 * @param id
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/template/showRecord/{id}")
	public ModelAndView showRecord(@PathVariable("id") Integer id) throws Exception{
		ModelAndView mav=new ModelAndView();
		String forward="/template/showRecord";
		Template temp=templateService.findById(id);
		mav.addObject("tpl",temp);
		mav.setViewName(forward);
		return mav;
		
	}
	
}

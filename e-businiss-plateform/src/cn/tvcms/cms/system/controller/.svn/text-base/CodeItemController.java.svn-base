/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-26 下午04:59:17
 * @version V1.0
 */
package cn.tvcms.cms.system.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.pojo.ServicesCategory;
import cn.tvcms.cms.system.service.CodeItemService;

/**
 * @ClassName: DataDictionaryController
 * @Description: 代码项管理
 * @author sunJingYang
 * @date 2014-9-26 下午04:59:17
 * 
 */
@Controller
public class CodeItemController {

	@Autowired
	private QueryPaging queryPaging;

	@Autowired
	private CodeItemService codeItemService;

	@Autowired
    HttpSession session;
	
	/**
	 * 
	 * @Title: queryCodeItem
	 * @Description: 返回项目类别页面
	 * @author sunJingYang
	 * @date 2014-9-26 下午06:04:41
	 * @return
	 */
	@RequestMapping("/system/codeItem")
	public String queryCodeItem(Integer menuId) {
		return "/system/codeItem";
	}

	/**
	 * 
	 * @Title: findAllServices
	 * @Description: 获取所有服务项目
	 * @author sunJingYang
	 * @date 2014-9-28 上午09:27:58
	 * @return
	 */
	@RequestMapping("/system/load")
	public List<ServicesCategory> findAllServices() {
		return codeItemService.findAllServices();
	}

	/**
	 * 
	 * @Title: queryCodeItemLeft
	 * @Description:返回服务项目树状页面
	 * @author sunJingYang
	 * @date 2014-9-28 上午09:51:07
	 * @return
	 */
	@RequestMapping("/system/codeItemLeft")
	public String queryCodeItemLeft() {
		return "/system/codeItemLeft";
	}

	/**
	 * 
	 * @Title: findServicesById
	 * @Description: 根据Id查询服务项目
	 * @author sunJingYang
	 * @date 2014-9-28 上午10:26:03
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("system/codeItemRight/{id}")
	public ModelAndView findServicesById(@PathVariable("id") Integer id,
			HttpServletRequest request,ServicesCategory servicesCategory) {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = null;
		String hqlWhere = "";
		hqlWhere = "from ServicesCategory where superiorId=" +id;
		if(servicesCategory!=null){
			if(servicesCategory.getItemsName()!=null){
				if(!servicesCategory.getItemsName().equals("")){
					hqlWhere+=" and itemsName like '%"+servicesCategory.getItemsName()+"%'";
				}
			}
		}
	    hqlWhere+=" order by createTime desc";			
		map = queryPaging.query(hqlWhere, request,ServicesCategory.class);
		mav.addObject("paging", map);
		mav.addObject("superiorId", id);   
		mav.setViewName("/system/codeItemRight");
		
	

		return mav;
	}

	/**
	 * 
	 * @Title: LoginLogDele
	 * @Description: 删除服务项目
	 * @author sunJingYang
	 * @date 2014-9-28 下午12:20:27
	 * @param ids
	 * @param superiorId
	 * @return
	 */
	@RequestMapping("system/codeItemRight/dele/{ids}")
	@ResponseBody
	public Object LoginLogDele(@PathVariable("ids") String ids ) {
		String returnString="success";
		try {
			String[] idss = ids.split(",");
			codeItemService.delete(idss);

		} catch (Exception e) {
			returnString="error";
			e.printStackTrace();
		}
		return returnString;
	}

	/**
	 * 
	 * @Title: updateServicesCategory
	 * @Description: 更新服务项目
	 * @author sunJingYang
	 * @date 2014-9-28 下午01:48:05
	 * @param category
	 * @return
	 */
	@RequestMapping("system/codeItemRight/update")
	@ResponseBody
	public Object updateServicesCategory(ServicesCategory category) {
		String returnString="success";
        try {
			String code=codeItemService.findCode(category.getId());
			category.setCode(code);
			codeItemService.updateServicesCategory(category);
		} catch (Exception e) {
			returnString = "error";
			e.printStackTrace();
		}
		return returnString;
	}

	/**
	 * 
	 * @Title: returnUpdate
	 * @Description: 跳到修改或者增加服务项目页面
	 * @author sunJingYang
	 * @date 2014-9-28 下午01:57:13
	 * @param id
	 * @return
	 */
	@RequestMapping("system/codeItemRightUpdate/{id}/{type}")
	@ResponseBody
	public ModelAndView returnUpdate(@PathVariable("id") Integer id,
			@PathVariable("type") int type) {

		ModelAndView mav = new ModelAndView();
		ServicesCategory category = null;
		if (type == 1) {
			category = codeItemService.findById(id);
			mav.addObject("type", "1");
		} else {
			category = new ServicesCategory();
			category.setSuperiorId(id);
			mav.addObject("type", "2");
		}
		mav.addObject("category", category);
		mav.setViewName("/system/codeItemRightUpdate");
		return mav;
	}

	/**
	 * 
	 * @Title: addServicesCategory
	 * @Description: 新增服务项目
	 * @author sunJingYang
	 * @date 2014-9-28 下午03:26:31
	 * @param id
	 * @return
	 */
	@RequestMapping("/system/codeItemRight/add")
	@ResponseBody
	public Object addServicesCategory(ServicesCategory category) {
        String returnString="success";
		try {
			codeItemService.saveServicesCategory(category);
		} catch (Exception e) {
			returnString= "error";
			e.printStackTrace();
		}
		return returnString;
	}
	/**
	 * 
	 * @Title: findScById
	 * @Description: 异步根据id获取其子级项目
	 * @author sunjinyang
	 * @date 2014-10-18 下午01:06:30
	 * @param id
	 * @return
	 */
	@RequestMapping("/hospital/codeItemRight/findScById/{id}")
	public List<ServicesCategory> findScById(@PathVariable("id") Integer id ){
		
		List<ServicesCategory> list=codeItemService.findListScById(id);
		ServicesCategory category=codeItemService.findById(id);
		if(category.getType()==1){
			for (int i = 0; i < list.size(); i++) {
				if(i==(list.size()/2)){
					list.get(i).setPrice("此列表屬於套餐項目"+category.getItemsName()+"："+category.getPrice());
					break;
				}
			}
		}
		return list;
	}
	
	/**
	 * 
	 * @Title: findScByTerm
	 * @Description: 前台根据条件查询服务项目
	 * @author sunjinyang
	 * @date 2014-10-21 下午12:43:19
	 * @param request
	 * @return
	 */
	@RequestMapping("/hospital/codeItemRight/findScByTerm")
	public List<ServicesCategory> findScByTerm (HttpServletRequest request){
		String term=request.getParameter("ter");
	
		return codeItemService.findByTerm(term);
	}

}

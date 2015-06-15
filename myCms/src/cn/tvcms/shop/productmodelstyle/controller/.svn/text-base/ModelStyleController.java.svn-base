/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2015-1-6 下午05:22:31
 * @version V1.0
 */
package cn.tvcms.shop.productmodelstyle.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.shop.pojo.ModelStyle;
import cn.tvcms.shop.productmodel.service.ModelService;
import cn.tvcms.shop.productmodelstyle.service.ModelStyleService;

/**
 * @ClassName: MoldStyleController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2015-1-6 下午05:22:31
 * 
 */
@Controller
public class ModelStyleController {
	@Autowired
	ModelStyleService service;
	@Autowired
	ModelService modelService;
	/**
	 * 
	 * @Title: toAddOrUpdateModel
	 * @Description: to类型属性添加修改页面
	 * @author miaoxiaochen
	 * @date 2015-1-12 上午11:27:33
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/productModelStyle/toAddOrUpdate")
	public ModelAndView toAddOrUpdateModel(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String mdsID=request.getParameter("mdsID");
		String pmdID=request.getParameter("pmdID");
		mav.addObject("productModels", modelService.getProductMolds());
		mav.addObject("pmdID", pmdID);
		if(null==mdsID||"".equals(mdsID)){
		}else{
			mav.addObject("mds", service.getMoldStyleByID(Integer.parseInt(mdsID)));
		}
		mav.setViewName("shop/productModelStyle/add");
		return mav;
	}
	/**
	 * 
	 * @Title: addOrUpdateModel
	 * @Description: 添加/修改modelStyle 类型属性
	 * @author miaoxiaochen
	 * @date 2015-1-12 上午11:26:53
	 * @param modelStyle
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/productModelStyle/addOrUpdate")
	public ModelAndView addOrUpdateModel(ModelStyle modelStyle,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String mdsID=request.getParameter("mdsID");
		String forward="/shop/productModelStyle/toAddOrUpdate?pmdID="+modelStyle.getPmdID();
		String returnString="";
		if(null==mdsID||"".equals(mdsID)){
			//新加
			
		}else{
			//修改
			modelStyle.setId(Integer.parseInt(mdsID));
			forward="/shop/productModelStyle/list?pmdID="+modelStyle.getPmdID();
		}
		try{
			service.addOrUpdateMoldStyle(modelStyle);
			returnString="成功";
		}catch (Exception e) {
			returnString="操作用户失败!请联系管理员";
			e.printStackTrace();
		}
		mav.addObject("url", forward);
		mav.setViewName("system/returnAlert");
		mav.addObject("returnString",returnString);
		return mav;
	}
}

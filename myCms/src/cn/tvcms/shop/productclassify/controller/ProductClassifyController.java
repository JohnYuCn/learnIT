/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-26 下午05:19:29
 * @version V1.0
 */
package cn.tvcms.shop.productclassify.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;

import cn.tvcms.shop.pojo.ProductClassify;
import cn.tvcms.shop.productclassify.service.ProductClassifyService;
import cn.tvcms.shop.productmodel.service.ModelService;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;


/**
 * @ClassName: ProductClassifyController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2014-12-26 下午05:19:29
 * 
 */
@Controller
public class ProductClassifyController {
	@Autowired
	private ProductClassifyService service;
	@Autowired
	private QueryPaging quertPaging;
	@Autowired
	private ModelService modelService;
	
	private static final  Log log = LogFactory.getLog(ProductClassifyController.class);
	
//	//列表
//	@RequestMapping("shop/productClassify/list")
//	public ModelAndView getProductListAll(){
//		ModelAndView mav=new ModelAndView();
//		
//		List<ProductClassify> productClass = service.getParentClass();
//		mav.setViewName("shop/productClassify/list");
//		mav.addObject("productClass", productClass);
//		return mav;
//	}
	
	/**
	 * 
	 * @Title: getProductListAll
	 * @Description: 获得列表
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午03:24:24
	 * @param classify
	 * @return
	 */
	@RequestMapping("shop/productClassify/list")
	public ModelAndView getProductListAll(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		List<ProductClassify> productClass=null;
		String name=request.getParameter("name");
		String hqlWhere="from ProductClassify";
		if(null==name||"".equals(name)){
		}else{
			hqlWhere="from ProductClassify where name like '%"+name+"%'";
		}
		
		mav.setViewName("shop/productClassify/list");
		mav.addObject("productClass", productClass);
		hqlWhere+=" order by sorting desc";
		Map<String, Object> map=quertPaging.query(hqlWhere, request, ProductClassify.class);
		mav.addObject("paging", map);
		return mav;
	}
	
	/**
	 * 
	 * @Title: toAddProductClass
	 * @Description: to商品分类添加/修改页
	 * @author miaoxiaochen
	 * @date 2014-12-30 下午04:14:13
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/productClassify/toAddOrUpdate") 
	public ModelAndView toAddProductClass(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String pcsID=request.getParameter("pcsID");
		if(null==pcsID||"".equals(pcsID)){
		}else{
			ProductClassify classify=service.getProClasByID(Integer.parseInt(pcsID));
			mav.addObject("cla",classify );
			mav.addObject("proAttScreens", service.getProAttScreens(Integer.parseInt(pcsID)));
		}
		mav.addObject("productModels",modelService.getProductMolds());
		mav.addObject("mapStyleModel", service.getMapModelStyleAll());
		mav.addObject("jsonMap",JSONArray.toJSONString(service.getMapModelStyleAll()));
//		System.out.println(JSONArray.toJSONString(service.getMapModelStyleAll()));
//		System.out.println(service.getMapModelStyleAll());
		mav.addObject("bysorts", service.getProClaSort());
		mav.setViewName("shop/productClassify/add");
		return mav;
	}
	
//	@RequestMapping("shop/ajax/productclassByparentID")
//	public Map<String, Object> toAjaxByParentID(PrintWriter printWriter,HttpServletRequest request){
//		int id=Integer.parseInt(request.getParameter("parentID"));
//		List<ProductClassify> productClass = service.getProClassByParID(id);
//		
//		 String jsonString = JSON.toJSONString(productClass, SerializerFeature.PrettyFormat);
//		 System.out.println(jsonString);
//		 printWriter.write(jsonString); 
//		 printWriter.flush(); 
//		 printWriter.close();
//		 return null;
//	}
	/**
	 * 
	 * @Title: addProductClass
	 * @Description: 添加或修改分类
	 * @author miaoxiaochen
	 * @date 2014-12-29 下午01:44:01
	 * @param classify
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/productClassify/addOrUpdate")
	public ModelAndView addProductClass(ProductClassify classify,HttpServletRequest request){
		String id=request.getParameter("pcs_ID");
		ModelAndView mav=new ModelAndView();
		if(null==id||"".equals(id)){
			classify.setLevel(0);
		}else{
			classify.setPcsID(Integer.parseInt(id));
		}
		String returnString="";
		String forward="/shop/productClassify/toAddOrUpdate";
		try{
			classify.setAddDate(DateTools.getDateyyMMddHHmmss());
			service.saveOrUpdateClass(classify);
			
			returnString="成功!";
		}catch (Exception e) {
			returnString="操作用户失败!请联系管理员";
			e.printStackTrace();
		}
		mav.addObject("url", forward);
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	/**
	 * 
	 * @Title: deleteProductClass
	 * @Description: 删除
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午03:24:24
	 * @param classify
	 * @return
	 */
	@RequestMapping("shop/productClassify/delete")
	public ModelAndView deleteProductClass(ProductClassify classify){
		ModelAndView mav=new ModelAndView();
		String returnString="";
		String forward="/shop/productClassify/list";
		
		System.out.println(classify);
		try{
			service.deleteProductClass(classify);
			returnString="成功!";
		}catch (Exception e) {
			returnString="操作用户失败!请联系管理员";
			e.printStackTrace();
		}
		mav.addObject("url", forward);
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	
}

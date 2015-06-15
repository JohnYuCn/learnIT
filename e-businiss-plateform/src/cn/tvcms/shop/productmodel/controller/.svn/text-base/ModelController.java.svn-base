/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2015-1-5 下午04:43:34
 * @version V1.0
 */
package cn.tvcms.shop.productmodel.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.shop.pojo.ModelStyle;
import cn.tvcms.shop.pojo.ProductModel;
import cn.tvcms.shop.productmodel.service.ModelService;
import cn.tvcms.shop.productmodelstyle.service.ModelStyleService;

/**
 * @ClassName: MoldController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2015-1-5 下午04:43:34
 * 
 */
@Controller
public class ModelController {
	@Autowired
	private ModelService service;
	@Autowired
	private QueryPaging quertPaging;
	@Autowired
	private ModelStyleService styleService; 
	
	/**
	 * 
	 * @Title: getProductMoldList
	 * @Description: 查询和默认list
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:32:58
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/productModel/list")
	public ModelAndView getProductMoldList(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		String name=request.getParameter("name");
		String hqlWhere="from ProductModel";
		
		if(null==name||"".equals(name)){
		}else{
			hqlWhere="from ProductModel where name like '%"+name+"%'";
		}
		
		mav.setViewName("shop/productModel/list");
		hqlWhere+=" order by addDate desc";
		Map<String, Object> map=quertPaging.query(hqlWhere, request, ProductModel.class);
		mav.addObject("paging", map);
		return mav;
	}
	/**
	 * 
	 * @Title: toAddOrUpdateModel
	 * @Description: to添加/修改页面
	 * @author miaoxiaochen
	 * @date 2015-1-7 上午10:37:56
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/productModel/toAddOrUpdate")
	public ModelAndView toAddOrUpdateModel(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String pmdID=request.getParameter("pmdID");
		if(null==pmdID||"".equals(pmdID)){
		}else{
			mav.addObject("pmd", service.getProductMold(Integer.parseInt(pmdID)));
		}
		mav.setViewName("shop/productModel/add");
		return mav;
	}
	/**
	 * 
	 * @Title: addOrUpdateModel
	 * @Description: 修改/添加商品类型
	 * @author miaoxiaochen
	 * @date 2015-1-7 上午11:08:41
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/productModel/addOrUpdate")
	public ModelAndView addOrUpdateModel(ProductModel model,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String pmdID=request.getParameter("pmd_ID");
		String forward="/shop/productModel/toAddOrUpdate";
		String returnString="";
		int count=0;
		if(null==pmdID||"".equals(pmdID)){
		}else{
			count=styleService.getMoldStyleCount(model.getPmdID());
			
		}
		try{
			model.setAddDate(DateTools.getDateyyMMddHHmmss());
			service.addOrUpdateProductMold(model,count);
			returnString="成功!";
		}catch (Exception e) {
			returnString="操作用户失败!请联系管理员";
			e.printStackTrace();
		}
    	mav.addObject("url", forward);
		mav.setViewName("system/returnAlert");
		mav.addObject("returnString",returnString);
		return mav;
	}
	
	/**
	 * 
	 * @Title: deleteProductModel
	 * @Description: 删除商品类型
	 * @author miaoxiaochen
	 * @date 2015-1-7 上午11:12:47
	 * @param model
	 * @return
	 */
	@RequestMapping("shop/productModel/delete")
	public ModelAndView deleteProductModel(ProductModel model){
		ModelAndView mav=new ModelAndView();
		String forward="shop/productModel/list";
		String returnString="";
		try{
			service.deleteProductMold(model);
			returnString="成功!";
		}catch (Exception e) {
			returnString="操作用户失败!请联系管理员";
			e.printStackTrace();
		}
		mav.addObject("url", forward);
		mav.setViewName("system/returnAlert");
		mav.addObject("returnString",returnString);
		return mav;
	}
	
	/**
	 * 
	 * @Title: getProductModelStyleList
	 * @Description: 通过ID获取商品类型下所有属性list
	 * @author miaoxiaochen
	 * @date 2015-1-7 下午01:24:20
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/productModelStyle/list")
	public ModelAndView getProductModelStyleList(HttpServletRequest request){
		ModelAndView mav=new ModelAndView("shop/productModel/modelList");
		String pmdID=request.getParameter("pmdID");
		List<ModelStyle> modelStyles=service.getMoldStylesByProMoldID(Integer.parseInt(pmdID));
		mav.addObject("modelStyles", modelStyles);
		mav.addObject("pmdID", pmdID);
		mav.addObject("productModels", service.getProductMolds());
		return mav;
	}
	/**
	 * 
	 * @Title: deleteProductModelStyle
	 * @Description: 删除
	 * @author miaoxiaochen
	 * @date 2015-1-7 下午06:01:43
	 * @param modelStyle
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/productModelStyle/delete")
	public ModelAndView deleteProductModelStyle(ModelStyle modelStyle,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String forward="shop/productModelStyle/list?pmdID="+request.getParameter("pmdID");
		String returnString="";
		try{
			service.deleteMoldStyle(modelStyle);
			returnString="成功!";
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

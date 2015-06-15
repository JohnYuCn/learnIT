/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-30 上午10:09:08
 * @version V1.0
 */
package cn.tvcms.shop.brand.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import cn.tvcms.shop.brand.service.BrandService;
import cn.tvcms.shop.pojo.Brand;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;

/**
 * @ClassName: BrandController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2014-12-30 上午10:09:08
 * 
 */
@Controller
public class BrandController {
	@Autowired
	private BrandService service; 
	
	@Autowired
	private QueryPaging quertPaging;
	
	/**
	 * 
	 * @Title: getBrandList
	 * @Description: 返回品牌的list全部查询或初始化用
	 * @author miaoxiaochen
	 * @date 2014-12-30 上午10:40:25
	 * @return
	 */
	@RequestMapping("shop/brand/list")
	public ModelAndView getBrandList(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String hqlWhere="from  Brand";
		
		String name=request.getParameter("name");
		if(null==name||"".equals(name)){
		}else{
			hqlWhere="from Brand where name like '%"+name+"%'";
		}
		mav.setViewName("shop/brand/list");
		hqlWhere+=" order by sorting desc";
		Map<String, Object> map=quertPaging.query(hqlWhere, request, Brand.class);
		mav.addObject("paging", map);
		return mav;
		
	}
	/**
	 * 
	 * @Title: getBrandListByName
	 * @Description: 根据name 模糊查询 返回品牌list
	 * @author miaoxiaochen
	 * @date 2014-12-30 上午10:40:22
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/brand/listByName")
	public ModelAndView getBrandListByName(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String name=request.getParameter("name");
		if(null==name||"".equals(name)){
			
		}else{
			
		}
		List<Brand> brands=service.getBrandsByName(name);
		mav.setViewName("shop/brand/list");
		mav.addObject("brands", brands);
		return mav;
		
	}
	/**
	 * 
	 * @Title: toAddOrUpdateBrand
	 * @Description: toBrand添加页面
	 * @author miaoxiaochen
	 * @date 2014-12-30 下午01:31:50
	 * @return
	 */
	@RequestMapping("shop/brand/toAddOrUpdate")
	public ModelAndView toAddOrUpdateBrand(HttpServletRequest request){
		String braID=request.getParameter("braID");
		ModelAndView mav=new ModelAndView();
		if(null==braID||"".equals(braID)){
		}else{
			mav.addObject("bra", service.getBrandByID(Integer.parseInt(braID)));
		}
		mav.setViewName("shop/brand/add");
		return mav;
	}
	/**
	 * 
	 * @Title: addOrUpdateBrand
	 * @Description: 添加或者更新 品牌
	 * @author miaoxiaochen
	 * @date 2014-12-30 上午10:43:35
	 * @param brand
	 * @return
	 */
	@RequestMapping("shop/brand/addOrUpdate")
	public ModelAndView addOrUpdateBrand(Brand brand,HttpServletRequest request){
		String braID=request.getParameter("bra_ID");
		if(null==braID||"".equals(braID)){
		}else{
			brand.setBraID(Integer.parseInt(braID));
		}
		ModelAndView mav=new ModelAndView();
		String returnString="";
		String forward="/shop/brand/list";
		try{
			brand.setAddDate(DateTools.getDateyyMMddHHmmss());
			service.addOrUpdateBrand(brand);
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
	 * @Title: deleteBrand
	 * @Description: 删除品牌
	 * @author miaoxiaochen
	 * @date 2014-12-30 上午10:54:07
	 * @param brand
	 * @return
	 */
	@RequestMapping("shop/brand/delete")
	public ModelAndView deleteBrand(Brand brand){
		ModelAndView mav=new ModelAndView();
		String returnString="";
		String forward="/shop/brand/list";
		try{
			service.deleteBrand(brand);
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

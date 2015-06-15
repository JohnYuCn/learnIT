/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-24 上午11:42:39
 * @version V1.0
 */
package cn.tvcms.shop.product.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.shop.brand.service.BrandService;
import cn.tvcms.shop.pojo.ModelStyle;
import cn.tvcms.shop.pojo.Product;
import cn.tvcms.shop.product.service.ProductService;
import cn.tvcms.shop.productclassify.service.ProductClassifyService;
import cn.tvcms.shop.productmodel.service.ModelService;
import cn.tvcms.shop.productmodelstyle.service.ModelStyleService;

/**
 * @ClassName: ProductController
 * @Description: 商品的controller
 * @author miaoxiaochen
 * @date 2014-12-24 上午11:42:39
 * 
 */
@Controller
public class ProductController {
	private static final  Log log = LogFactory.getLog(ProductController.class);
	//商品
	@Autowired
	private ProductService productService;
	//商品类型属性
	@Autowired
	ModelStyleService modelStyleService;
	//商品类型
	@Autowired
	ModelService modelService;
	//商品分类
	@Autowired
	ProductClassifyService classifyService;
	//商品品牌
	@Autowired
	BrandService brandService;
	
	@RequestMapping("shop/product/list")
	public ModelAndView getProductListAll(HttpServletRequest request) throws ParseException{
		ModelAndView mav=new ModelAndView();
		String where = " from Product where 1 = 1 ";
		String title = request.getParameter("title")!=null?request.getParameter("title"):null;
		String proSerial = request.getParameter("proSerial")!=null?request.getParameter("proSerial"):null;
		String addDate = request.getParameter("addDate")!=null?request.getParameter("addDate"):null;
		if(title!=null&&title.toString().trim()!=""){
			where += " and title like '%"+title.toString().trim()+"%'";
		}
		if(proSerial!=null&&proSerial.toString().trim()!=""){
			where += " and proSerial like '%"+proSerial.toString().trim()+"%'";
		}
		if(addDate!=null&&addDate.toString().trim()!=""){
			//转换成字符串
			addDate=DateTools.getDateYYYYMMDD(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(addDate));
			where += " and addDate between '"+addDate+"' and '"+DateTools.getSpecifiedDayAfter(addDate)+"'";
		}
		Map<String,Object> products = productService.pageProducts(where,request);
		mav.setViewName("shop/product/productList");
		mav.addObject("paging", products);
		return mav;
	}
	/**
	 * 
	 * @Title: addOrUpdateProduct
	 * @Description: 添加/修改商品
	 * @author miaoxiaochen
	 * @date 2015-1-16 上午11:57:03
	 * @param product
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/product/addOrUpdate")
	public ModelAndView addOrUpdateProduct(Product product,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		return mav;
	}
	/**
	 * 
	 * @Title: toAddOrUpdateProduct
	 * @Description: to添加/修改页面主
	 * @author miaoxiaochen
	 * @date 2015-1-16 上午11:56:49
	 * @param request
	 * @return
	 */
	@RequestMapping("shop/product/toAddOrUpdate")
	public ModelAndView toAddOrUpdateProduct(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("shop/product/add");
		mav.addObject("bysorts", classifyService.getProClaSort());
		mav.addObject("productmodels", modelService.getProductMolds());
		mav.addObject("brands", brandService.getBrands());
		
		return mav;
	}
	/**
	 * 
	 * @Title: toAddProductDetails
	 * @Description: to添加商品详情页
	 * @author miaoxiaochen
	 * @date 2015-2-2 下午02:49:55
	 * @return
	 */
	@RequestMapping("shop/product/toAddProductTwo")
	public ModelAndView toAddProductDetails(Product product,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("shop/product/addTwo");
		String returnString="";
		String forward="/shop/product/toAddOrUpdate";
		
		try{
			productService.addProductOne(product);
		}catch(Exception e){
			returnString="操作用户失败!请联系管理员";
			e.printStackTrace();
			mav.addObject("url", forward);
			mav.setViewName("system/returnAlert");
			mav.addObject("returnString",returnString);
		}
		//通过商品类型id获得旗下的详细属性
		List<ModelStyle> modelStyles= modelService.getMoldStylesByProMoldID(product.getPmdID());
		//
		mav.addObject("models", modelStyles);
		return mav;
	}
	
}

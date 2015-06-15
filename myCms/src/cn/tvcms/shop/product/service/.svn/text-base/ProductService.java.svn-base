/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-24 下午02:22:40
 * @version V1.0
 */
package cn.tvcms.shop.product.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.query.CombinationQuery;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.shop.pojo.Product;
import cn.tvcms.shop.product.dao.ProductDao;

/**
 * @ClassName: ProductService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2014-12-24 下午02:22:40
 * 
 */
@Service
public class ProductService {
	@Autowired
	private CommonDao comm;
	@Autowired
	private QueryPaging paging;
	
	@Autowired
	private ProductDao  proDao;
	
	public List<Product> getProduct(){
		return proDao.getProduct();
	}
	@SuppressWarnings("unchecked")
	public List<Product> queryProducts(Product product,String...args ) throws Exception{
		return comm.queryHQL("from Product"+CombinationQuery.queryHql(Product.class, product,args));
	}
	
	public void addProductOne(Product product){
		proDao.addProductOne(product);
	}
	/**
	 * 
	 * @Title: pageProducts
	 * @Description: TODO(分页查询)
	 * @author wangChuang
	 * @date 2015-4-14 下午02:38:37
	 * @param 查询条件
	 * @param request
	 * @return
	 */
	public Map<String,Object> pageProducts(String where,HttpServletRequest request){
		return (Map<String,Object>) paging.query(where, request, Product.class);
	}
}

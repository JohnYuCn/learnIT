/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-24 下午02:22:05
 * @version V1.0
 */
package cn.tvcms.shop.product.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.User;
import cn.tvcms.shop.pojo.Product;
import cn.tvcms.shop.pojo.ProductAttribute;
import cn.tvcms.shop.pojo.ProductGroup;
import cn.tvcms.shop.pojo.ProductModel;
import cn.tvcms.shop.pojo.ProductPrice;
import cn.tvcms.shop.pojo.ProductStock;
import cn.tvcms.shop.util.CommonUtils;
import cn.tvcms.shop.util.Expression;

/**
 * @ClassName: ProductDao
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2014-12-24 下午02:22:05
 * 
 */
@Repository
public class ProductDao {
	@Autowired
	private CommonDao  cmd;
	/**
	 * @return the cmd
	 */
	public CommonDao getCmd() {
		return cmd;
	}
	/**
	 * @param cmd 要设置的 cmd
	 */
	public void setCmd(CommonDao cmd) {
		this.cmd = cmd;
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> getProduct(){
		String hql = " from Product";
		List  list = cmd.queryHQL(hql);
		return list;
	}
	/**
	 * 
	 * @Title: getProductAllByID
	 * @Description: 全属性product
	 * @author miaoxiaochen
	 * @date 2014-12-24 下午03:34:45
	 * @param proID productID
	 * @return 实体
	 */
	public Product getProductAllByID(int proID){
//		String hql="from Product where proID=?";
		Product product=cmd.findById(Product.class, proID);
		ProductModel mold=cmd.findById(ProductModel.class, product.getPmdID());//类型
		ProductPrice price=cmd.findById(ProductPrice.class, product.getPriceID());//价格
		ProductStock stock=cmd.findById(ProductStock.class, product.getStock());//库存
		ProductGroup group=cmd.findById(ProductGroup.class, product.getGroupID());//组合
		ProductAttribute attribute=cmd.findById(ProductAttribute.class, product.getAttributeID());//商品属性
		product.setProductAttribute(attribute);
		product.setProductGroup(group);
		product.setProductMold(mold);
		product.setProductPrice(price);
		product.setProductStock(stock);
		return product;
	}
	/**
	 * 
	 * @Title: getProduct
	 * @Description: 根据条件返回list的基础dao
	 * @author miaoxiaochen
	 * @date 2014-12-26 下午03:20:53
	 * @param expressions
	 * @return
	 */
	public List<Product> getProduct(List<Expression> expressions){
		String hql = " from Product where "+CommonUtils.generateSQL(expressions);
		List  list = cmd.queryHQL(hql);
		return list;
	}
	
	public void addProductOne(Product product){
		cmd.save(product);
	}
	
}

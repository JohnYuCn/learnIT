/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2015-1-6 下午12:19:12
 * @version V1.0
 */
package cn.tvcms.shop.productclassify.service;

import java.util.ArrayList;
import java.util.List;

import cn.tvcms.shop.pojo.ProductClassify;

/**
 * @ClassName: ProductClassifyBySort
 * @Description: 出分类树状图使用
 * @author miaoxiaochen
 * @date 2015-1-6 下午12:19:12
 * 
 */
public class ProductClassifyBySort {
	private ProductClassify classify;
	private List<ProductClassifyBySort> child;
	private String sname;
	private String svalue;
	/**
	 * <p>Title: </p>
	 * <p>Description: </p>
	 */
	public ProductClassifyBySort() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * <p>Title: </p>
	 * <p>Description: </p>
	 */
	public ProductClassifyBySort(ProductClassify productClassify) {
		// TODO Auto-generated constructor stub
		this.classify=productClassify;
		child=new ArrayList<ProductClassifyBySort>();
	}
	/**
	 * @return the classify
	 */
	public ProductClassify getClassify() {
		return classify;
	}
	/**
	 * @param classify 要设置的 classify
	 */
	public void setClassify(ProductClassify classify) {
		this.classify = classify;
	}
	/**
	 * @return the child
	 */
	public List<ProductClassifyBySort> getChild() {
		return child;
	}
	/**
	 * @param child 要设置的 child
	 */
	public void setChild(List<ProductClassifyBySort> child) {
		this.child = child;
	}
	/**
	 * @return the sname
	 */
	public String getSname() {
		return sname;
	}
	/**
	 * @param sname 要设置的 sname
	 */
	public void setSname(String sname) {
		this.sname = sname;
	}
	/**
	 * @return the svalue
	 */
	public String getSvalue() {
		return svalue;
	}
	/**
	 * @param svalue 要设置的 svalue
	 */
	public void setSvalue(String svalue) {
		this.svalue = svalue;
	}
	
	public static List<ProductClassifyBySort> getProClaSort(ProductClassifyBySort sort,int tabCount,List<ProductClassifyBySort>  sorts){
		String tab="";
		ProductClassifyBySort productClassifyBySort=new ProductClassifyBySort();
		
		 for (int i = 0; i < tabCount - 1; ++i) {
			 tab+=("  |     ");
	        }
        if (tabCount > 0){
        	tab+=("  |-----");
        }
        tab+=sort.getClassify().getName();
        productClassifyBySort.setSname(tab);
        sorts.add(productClassifyBySort);
        productClassifyBySort.setSvalue(sort.getClassify().getPcsID()+"");
        for (int i = 0; i < sort.child.size(); ++i) {
        	getProClaSort(sort.child.get(i), tabCount + 1,sorts);
        }
		return sorts;
	}
	/**
	 * @Title: addChild
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午02:51:33
	 * @param productClassifyBySort
	 */
	public void addChild(ProductClassifyBySort productClassifyBySort) {
		// TODO Auto-generated method stub
		child.add(productClassifyBySort);
		
	}
}

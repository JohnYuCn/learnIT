/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 上午11:54:42
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: Product
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2014-12-22 上午11:54:42
 * 
 */
@Entity
@Table(name="shop_product")
public class Product implements Serializable {
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="订单状态码";//类的注释
	/**
	 * id
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int proID;
	/**
	 * 标题
	 */
	private String title;
	/**
	 * 副标题
	 */
	private String subtitle;
	/**
	 * 积分
	 */
	private int integral;
	/**
	 * 标签
	 */
	private String tags;
	/**
	 * 库存
	 */
	private int stock;
	/**
	 * 重量
	 */
	private double weight; 
	/**
	 * 描述
	 */
	private String description;
	/**
	 * 添加时间
	 */
	private String addDate;
	/**
	 * 商品编号
	 */
	private String proSerial;
	/**
	 * 最近上架日期
	 */
	private String saleDate;
	/**
	 * 最近下架日期
	 */
	private String unsaleDate;
	/**
	 * 最后一次修改时间
	 */
	private String editDate;
	/**
	 * 价格
	 */
	private BigDecimal price;
	/**
	 * 图片地址 暂时用一个
	 */
	private String picture;
	/**
	 * 品牌ID
	 */
	private int braID; 
	/**
	 * 商品分类ID
	 */
	private int pcsID;
	/**
	 * 商品的类型ID
	 */
	private int pmdID;
	/**
	 * 价格实体ID
	 */
	private int priceID;
	/**
	 * 商品组合ID
	 */
	private int groupID;
	/**
	 * 商品自带属性ID
	 */
	private int attributeID;
	/**
	 * 商品库存ID
	 */
	private int stockID;
	/**
	 * 商品类型实体
	 */
	@Transient
	private ProductModel productMold;
	/**
	 * 价钱实体
	 */
	@Transient
	private ProductPrice productPrice;
	/**
	 * 库存
	 */
	@Transient
	private ProductStock productStock;
	/**
	 * 商品的详细属性
	 */
	@Transient
	private ProductAttribute productAttribute;
	/**
	 * 商品组合
	 */
	@Transient
	private ProductGroup productGroup;
	

	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	/**
	 * @param classNotes 要设置的 classNotes
	 */
	public void setClassNotes(String classNotes) {
		this.classNotes = classNotes;
	}

	/**
	 * @return the proID
	 */
	public int getProID() {
		return proID;
	}

	/**
	 * @param proID 要设置的 proID
	 */
	public void setProID(int proID) {
		this.proID = proID;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title 要设置的 title
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the subtitle
	 */
	public String getSubtitle() {
		return subtitle;
	}

	/**
	 * @param subtitle 要设置的 subtitle
	 */
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	/**
	 * @return the integral
	 */
	public int getIntegral() {
		return integral;
	}

	/**
	 * @param integral 要设置的 integral
	 */
	public void setIntegral(int integral) {
		this.integral = integral;
	}

	/**
	 * @return the tags
	 */
	public String getTags() {
		return tags;
	}

	/**
	 * @param tags 要设置的 tags
	 */
	public void setTags(String tags) {
		this.tags = tags;
	}

	/**
	 * @return the stock
	 */
	public int getStock() {
		return stock;
	}

	/**
	 * @param stock 要设置的 stock
	 */
	public void setStock(int stock) {
		this.stock = stock;
	}

	/**
	 * @return the weight
	 */
	public double getWeight() {
		return weight;
	}

	/**
	 * @param weight 要设置的 weight
	 */
	public void setWeight(double weight) {
		this.weight = weight;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description 要设置的 description
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the addDate
	 */
	public String getAddDate() {
		return addDate;
	}

	/**
	 * @param addDate 要设置的 addDate
	 */
	public void setAddDate(String addDate) {
		this.addDate = addDate;
	}

	/**
	 * @return the proSerial
	 */
	public String getProSerial() {
		return proSerial;
	}

	/**
	 * @param proSerial 要设置的 proSerial
	 */
	public void setProSerial(String proSerial) {
		this.proSerial = proSerial;
	}

	/**
	 * @return the saleDate
	 */
	public String getSaleDate() {
		return saleDate;
	}

	/**
	 * @param saleDate 要设置的 saleDate
	 */
	public void setSaleDate(String saleDate) {
		this.saleDate = saleDate;
	}

	/**
	 * @return the unsaleDate
	 */
	public String getUnsaleDate() {
		return unsaleDate;
	}

	/**
	 * @param unsaleDate 要设置的 unsaleDate
	 */
	public void setUnsaleDate(String unsaleDate) {
		this.unsaleDate = unsaleDate;
	}

	/**
	 * @return the editDate
	 */
	public String getEditDate() {
		return editDate;
	}

	/**
	 * @param editDate 要设置的 editDate
	 */
	public void setEditDate(String editDate) {
		this.editDate = editDate;
	}

	/**
	 * @return the price
	 */
	public BigDecimal getPrice() {
		return price;
	}

	/**
	 * @param price 要设置的 price
	 */
	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	/**
	 * @return the picture
	 */
	public String getPicture() {
		return picture;
	}

	/**
	 * @param picture 要设置的 picture
	 */
	public void setPicture(String picture) {
		this.picture = picture;
	}

	/**
	 * @return the braID
	 */
	public int getBraID() {
		return braID;
	}

	/**
	 * @param braID 要设置的 braID
	 */
	public void setBraID(int braID) {
		this.braID = braID;
	}

	/**
	 * @return the pcsID
	 */
	public int getPcsID() {
		return pcsID;
	}

	/**
	 * @param pcsID 要设置的 pcsID
	 */
	public void setPcsID(int pcsID) {
		this.pcsID = pcsID;
	}

	/**
	 * @return the pmdID
	 */
	public int getPmdID() {
		return pmdID;
	}

	/**
	 * @param pmdID 要设置的 pmdID
	 */
	public void setPmdID(int pmdID) {
		this.pmdID = pmdID;
	}

	/**
	 * @return the productPrice
	 */
	public ProductPrice getProductPrice() {
		return productPrice;
	}

	/**
	 * @param productPrice 要设置的 productPrice
	 */
	public void setProductPrice(ProductPrice productPrice) {
		this.productPrice = productPrice;
	}

	/**
	 * @return the productStock
	 */
	public ProductStock getProductStock() {
		return productStock;
	}

	/**
	 * @param productStock 要设置的 productStock
	 */
	public void setProductStock(ProductStock productStock) {
		this.productStock = productStock;
	}

	/**
	 * @return the productAttribute
	 */
	public ProductAttribute getProductAttribute() {
		return productAttribute;
	}

	/**
	 * @param productAttribute 要设置的 productAttribute
	 */
	public void setProductAttribute(ProductAttribute productAttribute) {
		this.productAttribute = productAttribute;
	}

	/**
	 * @return the productGroup
	 */
	public ProductGroup getProductGroup() {
		return productGroup;
	}

	/**
	 * @param productGroup 要设置的 productGroup
	 */
	public void setProductGroup(ProductGroup productGroup) {
		this.productGroup = productGroup;
	}

	/**
	 * @return the productMold
	 */
	public ProductModel getProductMold() {
		return productMold;
	}

	/**
	 * @param productMold 要设置的 productMold
	 */
	public void setProductMold(ProductModel productMold) {
		this.productMold = productMold;
	}

	/**
	 * @return the priceID
	 */
	public int getPriceID() {
		return priceID;
	}

	/**
	 * @param priceID 要设置的 priceID
	 */
	public void setPriceID(int priceID) {
		this.priceID = priceID;
	}

	/**
	 * @return the groupID
	 */
	public int getGroupID() {
		return groupID;
	}

	/**
	 * @param groupID 要设置的 groupID
	 */
	public void setGroupID(int groupID) {
		this.groupID = groupID;
	}

	/**
	 * @return the attributeID
	 */
	public int getAttributeID() {
		return attributeID;
	}

	/**
	 * @param attributeID 要设置的 attributeID
	 */
	public void setAttributeID(int attributeID) {
		this.attributeID = attributeID;
	}

	/**
	 * @return the stockID
	 */
	public int getStockID() {
		return stockID;
	}

	/**
	 * @param stockID 要设置的 stockID
	 */
	public void setStockID(int stockID) {
		this.stockID = stockID;
	}

	/* (非 Javadoc)
	 * <p>Title: toString</p>
	 * <p>Description: </p>
	 * @author miaoxiaochen
	 * @return
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Product [addDate=" + addDate + ", attributeID=" + attributeID
				+ ", braID=" + braID + ", classNotes=" + classNotes
				+ ", description=" + description + ", editDate=" + editDate
				+ ", groupID=" + groupID + ", integral=" + integral
				+ ", pcsID=" + pcsID + ", picture=" + picture + ", pmdID="
				+ pmdID + ", price=" + price + ", priceID=" + priceID
				+ ", proID=" + proID + ", proSerial=" + proSerial
				+ ", productAttribute=" + productAttribute + ", productGroup="
				+ productGroup + ", productMold=" + productMold
				+ ", productPrice=" + productPrice + ", productStock="
				+ productStock + ", saleDate=" + saleDate + ", stock=" + stock
				+ ", stockID=" + stockID + ", subtitle=" + subtitle + ", tags="
				+ tags + ", title=" + title + ", unsaleDate=" + unsaleDate
				+ ", weight=" + weight + "]";
	}

	

	
	
	
}

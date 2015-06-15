/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午03:10:18
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
 * @ClassName: ProductGroup
 * @Description: 商品组合
 * @author miaoxiaochen
 * @date 2014-12-22 下午03:10:18
 * 
 */
@Entity
@Table(name="shop_productgroup")
public class ProductGroup implements Serializable {

	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="商品分类";//类的注释
	/**
	 * 主键
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pgID;
	/**
	 * 商品ID集合(用,分割 用不用以后再研究)
	 */
	private int proID;
	/**
	 * 原始总价
	 */
	private BigDecimal oldPrice;
	/**
	 * 支付总价
	 */
	private BigDecimal payPrice;
	/**
	 * 创建时间
	 */
	private String createDate;
	/**
	 * 到期时间
	 */
	private String endDate;
	/**
	 * 是否删除
	 */
	private int isDelete;
	/**
	 * 创建人
	 */
	private int uid;
	/**
	 * IP地址
	 */
	private String ip;
	/**
	 * 描述
	 */
	private String description;
	/**
	 * 赠品(用,号分割) 用不用到时候再研究
	 */
	private String freeProduct;
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
	 * @return the pgID
	 */
	public int getPgID() {
		return pgID;
	}
	/**
	 * @param pgID 要设置的 pgID
	 */
	public void setPgID(int pgID) {
		this.pgID = pgID;
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
	 * @return the oldPrice
	 */
	public BigDecimal getOldPrice() {
		return oldPrice;
	}
	/**
	 * @param oldPrice 要设置的 oldPrice
	 */
	public void setOldPrice(BigDecimal oldPrice) {
		this.oldPrice = oldPrice;
	}
	/**
	 * @return the payPrice
	 */
	public BigDecimal getPayPrice() {
		return payPrice;
	}
	/**
	 * @param payPrice 要设置的 payPrice
	 */
	public void setPayPrice(BigDecimal payPrice) {
		this.payPrice = payPrice;
	}
	/**
	 * @return the createDate
	 */
	public String getCreateDate() {
		return createDate;
	}
	/**
	 * @param createDate 要设置的 createDate
	 */
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	/**
	 * @return the endDate
	 */
	public String getEndDate() {
		return endDate;
	}
	/**
	 * @param endDate 要设置的 endDate
	 */
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	/**
	 * @return the isDelete
	 */
	public int getIsDelete() {
		return isDelete;
	}
	/**
	 * @param isDelete 要设置的 isDelete
	 */
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	/**
	 * @return the uid
	 */
	public int getUid() {
		return uid;
	}
	/**
	 * @param uid 要设置的 uid
	 */
	public void setUid(int uid) {
		this.uid = uid;
	}
	/**
	 * @return the ip
	 */
	public String getIp() {
		return ip;
	}
	/**
	 * @param ip 要设置的 ip
	 */
	public void setIp(String ip) {
		this.ip = ip;
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
	 * @return the freeProduct
	 */
	public String getFreeProduct() {
		return freeProduct;
	}
	/**
	 * @param freeProduct 要设置的 freeProduct
	 */
	public void setFreeProduct(String freeProduct) {
		this.freeProduct = freeProduct;
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
		return "ProductGroup [classNotes=" + classNotes + ", createDate="
				+ createDate + ", description=" + description + ", endDate="
				+ endDate + ", freeProduct=" + freeProduct + ", ip=" + ip
				+ ", isDelete=" + isDelete + ", oldPrice=" + oldPrice
				+ ", payPrice=" + payPrice + ", pgID=" + pgID + ", proID="
				+ proID + ", uid=" + uid + "]";
	}
	
	
}

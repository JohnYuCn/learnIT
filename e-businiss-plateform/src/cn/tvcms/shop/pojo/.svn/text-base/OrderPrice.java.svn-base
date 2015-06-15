/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-23 下午01:26:13
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * @ClassName: OrderPrice
 * @Description: 订单价格表
 * @author miaoxiaochen
 * @date 2014-12-23 下午01:26:13
 * 
 */
public class OrderPrice implements Serializable{

	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	
	@Transient
	private  String classNotes="订单价格表";//类的注释
	/**
	 * ID
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int opID;
	/**
	 * 订单id
	 */
	private int ordID;
	/**
	 * 商品总价
	 */
	private BigDecimal proPrice;
	/**
	 * 运费
	 */
	private BigDecimal freight;
	/**
	 * 优惠券
	 */
	private String couponID;
	/**
	 * 成交价格
	 */
	private BigDecimal ordPrice;
	/**
	 * 价格类型
	 */
	private int type;
	/**
	 * 促销ID
	 */
	private int promotionID;
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
	 * @return the opID
	 */
	public int getOpID() {
		return opID;
	}
	/**
	 * @param opID 要设置的 opID
	 */
	public void setOpID(int opID) {
		this.opID = opID;
	}
	/**
	 * @return the ordID
	 */
	public int getOrdID() {
		return ordID;
	}
	/**
	 * @param ordID 要设置的 ordID
	 */
	public void setOrdID(int ordID) {
		this.ordID = ordID;
	}
	/**
	 * @return the proPrice
	 */
	public BigDecimal getProPrice() {
		return proPrice;
	}
	/**
	 * @param proPrice 要设置的 proPrice
	 */
	public void setProPrice(BigDecimal proPrice) {
		this.proPrice = proPrice;
	}
	/**
	 * @return the freight
	 */
	public BigDecimal getFreight() {
		return freight;
	}
	/**
	 * @param freight 要设置的 freight
	 */
	public void setFreight(BigDecimal freight) {
		this.freight = freight;
	}
	/**
	 * @return the couponID
	 */
	public String getCouponID() {
		return couponID;
	}
	/**
	 * @param couponID 要设置的 couponID
	 */
	public void setCouponID(String couponID) {
		this.couponID = couponID;
	}
	/**
	 * @return the ordPrice
	 */
	public BigDecimal getOrdPrice() {
		return ordPrice;
	}
	/**
	 * @param ordPrice 要设置的 ordPrice
	 */
	public void setOrdPrice(BigDecimal ordPrice) {
		this.ordPrice = ordPrice;
	}
	/**
	 * @return the type
	 */
	public int getType() {
		return type;
	}
	/**
	 * @param type 要设置的 type
	 */
	public void setType(int type) {
		this.type = type;
	}
	/**
	 * @return the promotionID
	 */
	public int getPromotionID() {
		return promotionID;
	}
	/**
	 * @param promotionID 要设置的 promotionID
	 */
	public void setPromotionID(int promotionID) {
		this.promotionID = promotionID;
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
		return "OrderPrice [classNotes=" + classNotes + ", couponID="
				+ couponID + ", freight=" + freight + ", opID=" + opID
				+ ", ordID=" + ordID + ", ordPrice=" + ordPrice + ", proPrice="
				+ proPrice + ", promotionID=" + promotionID + ", type=" + type
				+ "]";
	}
	
	
	

}

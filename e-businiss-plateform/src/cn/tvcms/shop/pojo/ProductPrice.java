/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午04:21:29
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
 * @ClassName: ProductPrice
 * @Description: 商品价格
 * @author miaoxiaochen
 * @date 2014-12-22 下午04:21:29
 * 
 */
@Entity
@Table(name="shop_productprice")
public class ProductPrice implements Serializable {

	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private String classNotes="商品价格";//类的注释
	/**
	 * 主键
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int ppID;
	/**
	 * 商品ID
	 */
	private int proID;
	/**
	 * 类型
	 */
	private int type;
	/**
	 * 价格
	 */
	private BigDecimal price;
	/**
	 * 折扣价
	 */
	private BigDecimal kickback;
	/**
	 * 开始时间
	 */
	private String begindate;
	/**
	 * 结束时间
	 */
	private String enddate;
	/**
	 * 特价
	 */
	private BigDecimal specialPrice;
	/**
	 * 倒计时
	 */
	private int countDown;
	/**
	 * 是否循环倒计时
	 */
	private int isCountDown;
	/**
	 * 是否执行
	 */
	private int isTrue;
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
	 * @return the ppID
	 */
	public int getPpID() {
		return ppID;
	}
	/**
	 * @param ppID 要设置的 ppID
	 */
	public void setPpID(int ppID) {
		this.ppID = ppID;
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
	 * @return the kickback
	 */
	public BigDecimal getKickback() {
		return kickback;
	}
	/**
	 * @param kickback 要设置的 kickback
	 */
	public void setKickback(BigDecimal kickback) {
		this.kickback = kickback;
	}
	/**
	 * @return the begindate
	 */
	public String getBegindate() {
		return begindate;
	}
	/**
	 * @param begindate 要设置的 begindate
	 */
	public void setBegindate(String begindate) {
		this.begindate = begindate;
	}
	/**
	 * @return the enddate
	 */
	public String getEnddate() {
		return enddate;
	}
	/**
	 * @param enddate 要设置的 enddate
	 */
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	/**
	 * @return the specialPrice
	 */
	public BigDecimal getSpecialPrice() {
		return specialPrice;
	}
	/**
	 * @param specialPrice 要设置的 specialPrice
	 */
	public void setSpecialPrice(BigDecimal specialPrice) {
		this.specialPrice = specialPrice;
	}
	/**
	 * @return the countDown
	 */
	public int getCountDown() {
		return countDown;
	}
	/**
	 * @param countDown 要设置的 countDown
	 */
	public void setCountDown(int countDown) {
		this.countDown = countDown;
	}
	/**
	 * @return the isCountDown
	 */
	public int getIsCountDown() {
		return isCountDown;
	}
	/**
	 * @param isCountDown 要设置的 isCountDown
	 */
	public void setIsCountDown(int isCountDown) {
		this.isCountDown = isCountDown;
	}
	/**
	 * @return the isTrue
	 */
	public int getIsTrue() {
		return isTrue;
	}
	/**
	 * @param isTrue 要设置的 isTrue
	 */
	public void setIsTrue(int isTrue) {
		this.isTrue = isTrue;
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
		return "ProductPrice [begindate=" + begindate + ", classNotes="
				+ classNotes + ", countDown=" + countDown + ", enddate="
				+ enddate + ", isCountDown=" + isCountDown + ", isTrue="
				+ isTrue + ", kickback=" + kickback + ", ppID=" + ppID
				+ ", price=" + price + ", proID=" + proID + ", specialPrice="
				+ specialPrice + ", type=" + type + "]";
	}
	
	
	
}

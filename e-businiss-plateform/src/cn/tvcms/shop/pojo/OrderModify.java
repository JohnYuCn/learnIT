/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午06:51:59
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
 * @ClassName: OrderModify
 * @Description: 订单修改记录
 * @author miaoxiaochen
 * @date 2014-12-22 下午06:51:59
 * 
 */
@Entity
@Table(name="shop_ordermodify")
public class OrderModify implements Serializable {

	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	
	@Transient
	private  String classNotes="订单修改记录";//类的注释
	
	/**
	 * ID
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int omID;
	/**
	 * 订单ID
	 */
	private int ordID;
	/**
	 * 修改人
	 */
	private int modifier;
	/**
	 * 原始订单状态
	 */
	private int oldStyle;
	/**
	 * 修改后的状态
	 */
	private int newStyle;
	/**
	 * 修改时间
	 */
	private String modifyDate;
	/**
	 * 拆分订单
	 */
	private int isSplit;
	/**
	 * 原始订单价格
	 */
	private BigDecimal oldPrice;
	/**
	 * 修改后的价格
	 */
	private BigDecimal newPrice;
	/**
	 * 修改时IP
	 */
	private String ip;
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
	 * @return the omID
	 */
	public int getOmID() {
		return omID;
	}
	/**
	 * @param omID 要设置的 omID
	 */
	public void setOmID(int omID) {
		this.omID = omID;
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
	 * @return the modifier
	 */
	public int getModifier() {
		return modifier;
	}
	/**
	 * @param modifier 要设置的 modifier
	 */
	public void setModifier(int modifier) {
		this.modifier = modifier;
	}
	/**
	 * @return the oldStyle
	 */
	public int getOldStyle() {
		return oldStyle;
	}
	/**
	 * @param oldStyle 要设置的 oldStyle
	 */
	public void setOldStyle(int oldStyle) {
		this.oldStyle = oldStyle;
	}
	/**
	 * @return the newStyle
	 */
	public int getNewStyle() {
		return newStyle;
	}
	/**
	 * @param newStyle 要设置的 newStyle
	 */
	public void setNewStyle(int newStyle) {
		this.newStyle = newStyle;
	}
	/**
	 * @return the modifyDate
	 */
	public String getModifyDate() {
		return modifyDate;
	}
	/**
	 * @param modifyDate 要设置的 modifyDate
	 */
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	/**
	 * @return the isSplit
	 */
	public int getIsSplit() {
		return isSplit;
	}
	/**
	 * @param isSplit 要设置的 isSplit
	 */
	public void setIsSplit(int isSplit) {
		this.isSplit = isSplit;
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
	 * @return the newPrice
	 */
	public BigDecimal getNewPrice() {
		return newPrice;
	}
	/**
	 * @param newPrice 要设置的 newPrice
	 */
	public void setNewPrice(BigDecimal newPrice) {
		this.newPrice = newPrice;
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
	/* (非 Javadoc)
	 * <p>Title: toString</p>
	 * <p>Description: </p>
	 * @author miaoxiaochen
	 * @return
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "OrderModify [classNotes=" + classNotes + ", ip=" + ip
				+ ", isSplit=" + isSplit + ", modifier=" + modifier
				+ ", modifyDate=" + modifyDate + ", newPrice=" + newPrice
				+ ", newStyle=" + newStyle + ", oldPrice=" + oldPrice
				+ ", oldStyle=" + oldStyle + ", omID=" + omID + ", ordID="
				+ ordID + "]";
	}
	

}

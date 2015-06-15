/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-23 上午10:42:58
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: OrderPayInfo
 * @Description: 订单的支付信息
 * @author miaoxiaochen
 * @date 2014-12-23 上午10:42:58
 * 
 */
@Entity
@Table(name="shop_orderpayinfo")
public class OrderPayInfo implements Serializable{

	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="订单的支付信息";//类的注释
	/**
	 * ID
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int opiID;
	/**
	 * 订单ID
	 */
	private int ordID;
	/**
	 * 支付方式
	 */
	private int payType;
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
	 * @return the opiID
	 */
	public int getOpiID() {
		return opiID;
	}
	/**
	 * @param opiID 要设置的 opiID
	 */
	public void setOpiID(int opiID) {
		this.opiID = opiID;
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
	 * @return the payType
	 */
	public int getPayType() {
		return payType;
	}
	/**
	 * @param payType 要设置的 payType
	 */
	public void setPayType(int payType) {
		this.payType = payType;
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
		return "OrderPayInfo [classNotes=" + classNotes + ", opiID=" + opiID
				+ ", ordID=" + ordID + ", payType=" + payType + "]";
	}
	
	
}

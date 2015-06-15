/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午06:37:34
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
 * @ClassName: OrderInvoice
 * @Description: 订单发票 明天在考虑一下 是否加入到order中
 * @author miaoxiaochen
 * @date 2014-12-22 下午06:37:34
 * 
 */
@Entity
@Table(name="shop_orderinvoice")
public class OrderInvoice implements Serializable {
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="订单发票";//类的注释
	/**
	 * ID
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int oiID;
	/**
	 * 订单ID
	 */
	private int ordID;
	/**
	 * 发票抬头
	 */
	private String invTitle;
	/**
	 * 发票内容
	 */
	private String invContent;
	/**
	 * 发票类型
	 */
	private int invType;
	/**
	 * 发票开具人
	 */
	private String invOwner;
	/**
	 * 发票备注
	 */
	private String invRemark;
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
	 * @return the oiID
	 */
	public int getOiID() {
		return oiID;
	}
	/**
	 * @param oiID 要设置的 oiID
	 */
	public void setOiID(int oiID) {
		this.oiID = oiID;
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
	 * @return the invTitle
	 */
	public String getInvTitle() {
		return invTitle;
	}
	/**
	 * @param invTitle 要设置的 invTitle
	 */
	public void setInvTitle(String invTitle) {
		this.invTitle = invTitle;
	}
	/**
	 * @return the invContent
	 */
	public String getInvContent() {
		return invContent;
	}
	/**
	 * @param invContent 要设置的 invContent
	 */
	public void setInvContent(String invContent) {
		this.invContent = invContent;
	}
	/**
	 * @return the invType
	 */
	public int getInvType() {
		return invType;
	}
	/**
	 * @param invType 要设置的 invType
	 */
	public void setInvType(int invType) {
		this.invType = invType;
	}
	/**
	 * @return the invOwner
	 */
	public String getInvOwner() {
		return invOwner;
	}
	/**
	 * @param invOwner 要设置的 invOwner
	 */
	public void setInvOwner(String invOwner) {
		this.invOwner = invOwner;
	}
	/**
	 * @return the invRemark
	 */
	public String getInvRemark() {
		return invRemark;
	}
	/**
	 * @param invRemark 要设置的 invRemark
	 */
	public void setInvRemark(String invRemark) {
		this.invRemark = invRemark;
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
		return "OrderInvoice [classNotes=" + classNotes + ", invContent="
				+ invContent + ", invOwner=" + invOwner + ", invRemark="
				+ invRemark + ", invTitle=" + invTitle + ", invType=" + invType
				+ ", oiID=" + oiID + ", ordID=" + ordID + "]";
	}
	
}

/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午06:24:16
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;

import javax.persistence.GenerationType;
import javax.persistence.Transient;

import javax.persistence.GeneratedValue;

import javax.persistence.Id;

import javax.persistence.Table;

import javax.persistence.Entity;

/**
 * @ClassName: OrderDistribution
 * @Description: 订单配送方式
 * @author miaoxiaochen
 * @date 2014-12-22 下午06:24:16
 * 
 */
@Entity
@Table(name="shop_orderdistribution")
public class OrderDistribution implements Serializable{
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="订单配送方式";//类的注释
	/**
	 * ID
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int odID;
	/**
	 * 状态码
	 */
	private int code;
	/**
	 * 名称
	 */
	private String name;
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
	 * @return the odID
	 */
	public int getOdID() {
		return odID;
	}
	/**
	 * @param odID 要设置的 odID
	 */
	public void setOdID(int odID) {
		this.odID = odID;
	}
	/**
	 * @return the code
	 */
	public int getCode() {
		return code;
	}
	/**
	 * @param code 要设置的 code
	 */
	public void setCode(int code) {
		this.code = code;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name 要设置的 name
	 */
	public void setName(String name) {
		this.name = name;
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
		return "OrderDistribution [classNotes=" + classNotes + ", code=" + code
				+ ", name=" + name + ", odID=" + odID + "]";
	}
	
	
}

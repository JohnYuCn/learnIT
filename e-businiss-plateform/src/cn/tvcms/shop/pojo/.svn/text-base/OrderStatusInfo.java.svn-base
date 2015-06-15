/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-23 下午01:59:26
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;

import javax.persistence.GenerationType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * @ClassName: OrderStatusInfo
 * @Description: 订单状态码
 * @author miaoxiaochen
 * @date 2014-12-23 下午01:59:26
 * 
 */
public class OrderStatusInfo implements Serializable{

	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	
	@Transient
	private  String classNotes="订单状态码";//类的注释
	
	/**
	 * ID
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int osiID;
	/**
	 * 状态码
	 */
	private int code;
	/**
	 * 描述
	 */
	private String description;
	
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
	 * @return the osiID
	 */
	public int getOsiID() {
		return osiID;
	}

	/**
	 * @param osiID 要设置的 osiID
	 */
	public void setOsiID(int osiID) {
		this.osiID = osiID;
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
		return "OrderStatusInfo [classNotes=" + classNotes + ", code=" + code
				+ ", description=" + description + ", name=" + name
				+ ", osiID=" + osiID + "]";
	}
	
}

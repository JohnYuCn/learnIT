/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-23 下午01:44:46
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * @ClassName: OrderProductAtt
 * @Description: 订单商品属性
 * @author miaoxiaochen
 * @date 2014-12-23 下午01:44:46
 * 
 */
public class OrderProductAtt implements Serializable{

	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	
	@Transient
	private  String classNotes="订单商品属性";//类的注释
	/**
	 * ID
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int opaID;
	/**
	 * 商品ID
	 */
	private int opID;
	/**
	 * 尺寸
	 */
	private String size;
	/**
	 * 颜色
	 */
	private String color;
	/**
	 * 数量
	 */
	private int number;
	/**
	 * 名字
	 */
	private String name;
	/**
	 * 类型
	 */
	private int type;
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
	 * @return the opaID
	 */
	public int getOpaID() {
		return opaID;
	}
	/**
	 * @param opaID 要设置的 opaID
	 */
	public void setOpaID(int opaID) {
		this.opaID = opaID;
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
	 * @return the size
	 */
	public String getSize() {
		return size;
	}
	/**
	 * @param size 要设置的 size
	 */
	public void setSize(String size) {
		this.size = size;
	}
	/**
	 * @return the color
	 */
	public String getColor() {
		return color;
	}
	/**
	 * @param color 要设置的 color
	 */
	public void setColor(String color) {
		this.color = color;
	}
	/**
	 * @return the number
	 */
	public int getNumber() {
		return number;
	}
	/**
	 * @param number 要设置的 number
	 */
	public void setNumber(int number) {
		this.number = number;
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
	/* (非 Javadoc)
	 * <p>Title: toString</p>
	 * <p>Description: </p>
	 * @author miaoxiaochen
	 * @return
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "OrderProductAtt [classNotes=" + classNotes + ", color=" + color
				+ ", name=" + name + ", number=" + number + ", opID=" + opID
				+ ", opaID=" + opaID + ", size=" + size + ", type=" + type
				+ "]";
	}
	

}

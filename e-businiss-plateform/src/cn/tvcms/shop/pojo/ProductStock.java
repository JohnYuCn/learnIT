/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午04:54:57
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
 * @ClassName: ProductStock
 * @Description: 商品详细库存
 * @author miaoxiaochen
 * @date 2014-12-22 下午04:54:57
 * 
 */
@Entity
@Table(name="shop_productstock")
public class ProductStock implements Serializable{
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	
	@Transient
	private String classNotes="商品详细库存";//类的注释
	/**
	 * 主键
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int psID;
	/**
	 * 商品ID
	 */
	private int proID;
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
	 * 名称
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
	 * @return the psID
	 */
	public int getPsID() {
		return psID;
	}
	/**
	 * @param psID 要设置的 psID
	 */
	public void setPsID(int psID) {
		this.psID = psID;
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
		return "ProductStock [classNotes=" + classNotes + ", color=" + color
				+ ", name=" + name + ", number=" + number + ", proID=" + proID
				+ ", psID=" + psID + ", size=" + size + ", type=" + type + "]";
	}
	
}

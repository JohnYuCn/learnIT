/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午05:13:11
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
 * @ClassName: ShopCart
 * @Description: 购物车
 * @author miaoxiaochen
 * @date 2014-12-22 下午05:13:11
 * 
 */
@Entity
@Table(name="shop_shopcart")
public class ShopCart implements Serializable{
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	
	@Transient
	private String classNotes="购物车";//类的注释
	/**
	 * 主键
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int scID;
	/**
	 * 用户ID
	 */
	private int userID;
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
	 * 添加时间
	 */
	private String addDate;
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
	 * @return the scID
	 */
	public int getScID() {
		return scID;
	}
	/**
	 * @param scID 要设置的 scID
	 */
	public void setScID(int scID) {
		this.scID = scID;
	}
	/**
	 * @return the userID
	 */
	public int getUserID() {
		return userID;
	}
	/**
	 * @param userID 要设置的 userID
	 */
	public void setUserID(int userID) {
		this.userID = userID;
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
	/**
	 * @return the addDate
	 */
	public String getAddDate() {
		return addDate;
	}
	/**
	 * @param addDate 要设置的 addDate
	 */
	public void setAddDate(String addDate) {
		this.addDate = addDate;
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
		return "ShopCart [addDate=" + addDate + ", classNotes=" + classNotes
				+ ", color=" + color + ", name=" + name + ", number=" + number
				+ ", proID=" + proID + ", scID=" + scID + ", size=" + size
				+ ", type=" + type + ", userID=" + userID + "]";
	}
	
	
}

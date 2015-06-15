/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午02:19:45
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
 * @ClassName: ProductAttribute
 * @Description: 商品属性表
 * @author miaoxiaochen
 * @date 2014-12-22 下午02:19:45
 * 
 */
@Entity
@Table(name="shop_productattribute")
public class ProductAttribute implements Serializable{
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="商品属性表";//类的注释
	/**
	 * 主键
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int paID;
	/**
	 * 商品ID
	 */
	private int proID;
	/**
	 * key值
	 */
	private String attKey;
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}
	/**
	 * value值
	 */
	private String attValue;
	/**
	 * 类型
	 */
	private int attType;
	/**
	 * 添加时间
	 */
	private String addDate;
	/**
	 * @return the paID
	 */
	public int getPaID() {
		return paID;
	}
	/**
	 * @param paID 要设置的 paID
	 */
	public void setPaID(int paID) {
		this.paID = paID;
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
	 * @return the attKey
	 */
	public String getAttKey() {
		return attKey;
	}
	/**
	 * @param attKey 要设置的 attKey
	 */
	public void setAttKey(String attKey) {
		this.attKey = attKey;
	}
	/**
	 * @return the attValue
	 */
	public String getAttValue() {
		return attValue;
	}
	/**
	 * @param attValue 要设置的 attValue
	 */
	public void setAttValue(String attValue) {
		this.attValue = attValue;
	}
	/**
	 * @return the attType
	 */
	public int getAttType() {
		return attType;
	}
	/**
	 * @param attType 要设置的 attType
	 */
	public void setAttType(int attType) {
		this.attType = attType;
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
		return "ProductAttribute [addDate=" + addDate + ", attKey=" + attKey
				+ ", attType=" + attType + ", attValue=" + attValue
				+ ", classNotes=" + classNotes + ", paID=" + paID + ", proID="
				+ proID + "]";
	}
	
	
}

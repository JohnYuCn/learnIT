/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-23 下午01:31:37
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * @ClassName: OrderProduct
 * @Description: 订单商品表
 * @author miaoxiaochen
 * @date 2014-12-23 下午01:31:37
 * 
 */
public class OrderProduct implements Serializable{

	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	
	@Transient
	private  String classNotes="订单商品表";//类的注释
	/**
	 * ID
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int opID;
	/**
	 * 订单ID
	 */
	private int ordID;
	/**
	 * 标题
	 */
	private String title;
	/**
	 * 副标题
	 */
	private String subtitle;
	/**
	 * 重量
	 */
	private double weight;
	/**
	 * 描述
	 */
	private String description;
	/**
	 * 图片地址 暂时用一个
	 */
	private String picture;
	/**
	 * 商品分类
	 */
	private int pcsID;
	/**
	 * 标题图片
	 */
	private String titlePicture;
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
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title 要设置的 title
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the subtitle
	 */
	public String getSubtitle() {
		return subtitle;
	}
	/**
	 * @param subtitle 要设置的 subtitle
	 */
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	/**
	 * @return the weight
	 */
	public double getWeight() {
		return weight;
	}
	/**
	 * @param weight 要设置的 weight
	 */
	public void setWeight(double weight) {
		this.weight = weight;
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
	 * @return the picture
	 */
	public String getPicture() {
		return picture;
	}
	/**
	 * @param picture 要设置的 picture
	 */
	public void setPicture(String picture) {
		this.picture = picture;
	}
	/**
	 * @return the pcsID
	 */
	public int getPcsID() {
		return pcsID;
	}
	/**
	 * @param pcsID 要设置的 pcsID
	 */
	public void setPcsID(int pcsID) {
		this.pcsID = pcsID;
	}
	/**
	 * @return the titlePicture
	 */
	public String getTitlePicture() {
		return titlePicture;
	}
	/**
	 * @param titlePicture 要设置的 titlePicture
	 */
	public void setTitlePicture(String titlePicture) {
		this.titlePicture = titlePicture;
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
		return "OrderProduct [classNotes=" + classNotes + ", description="
				+ description + ", opID=" + opID + ", ordID=" + ordID
				+ ", pcsID=" + pcsID + ", picture=" + picture + ", subtitle="
				+ subtitle + ", title=" + title + ", titlePicture="
				+ titlePicture + ", weight=" + weight + "]";
	}
	
	
}

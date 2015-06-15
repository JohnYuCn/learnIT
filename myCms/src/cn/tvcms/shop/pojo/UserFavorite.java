/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午06:02:05
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
 * @ClassName: UserFavorite
 * @Description: 用户收藏夹
 * @author miaoxiaochen
 * @date 2014-12-22 下午06:02:05
 * 
 */
@Entity
@Table(name="shop_userfavorite")
public class UserFavorite implements Serializable{
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private String classNotes="用户收藏夹";//类的注释
	/**
	 * id
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int ufID;
	/**
	 * 用户ID
	 */
	private int userID;
	/**
	 * 商品ID
	 */
	private int proID;
	/**
	 * 标题
	 */
	private String title;
	/**
	 * 标题图片
	 */
	private String titlePicture;
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
	 * @return the ufID
	 */
	public int getUfID() {
		return ufID;
	}
	/**
	 * @param ufID 要设置的 ufID
	 */
	public void setUfID(int ufID) {
		this.ufID = ufID;
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
		return "UserFavorite [addDate=" + addDate + ", classNotes="
				+ classNotes + ", proID=" + proID + ", title=" + title
				+ ", titlePicture=" + titlePicture + ", ufID=" + ufID
				+ ", userID=" + userID + "]";
	}
	
	
}

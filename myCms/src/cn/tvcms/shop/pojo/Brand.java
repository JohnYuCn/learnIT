/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-19 下午03:30:09
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
 * @ClassName: Brand
 * @Description: 商城的品牌类
 * @author miaoxiaochen
 * @date 2014-12-19 下午03:30:09
 * 
 */
@Entity
@Table(name ="shop_brand")
public class Brand implements Serializable {
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="商城的品牌类";//类的注释

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int braID;
	
	/**
	 * 品牌名称
	 */
	private String name;
	/**
	 * 网络地址
	 */
	private String website;
	/**
	 * 描述
	 */
	private String description;
	/**
	 * logo地址
	 */
	private String logo;
	/**
	 * 排序
	 */
	private int sorting;
	/**
	 * 是否显示0不显示
	 */
	private int isShow;
	
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
	 * @return the website
	 */
	public String getWebsite() {
		return website;
	}
	/**
	 * @param website 要设置的 website
	 */
	public void setWebsite(String website) {
		this.website = website;
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
	 * @return the logo
	 */
	public String getLogo() {
		return logo;
	}
	/**
	 * @param logo 要设置的 logo
	 */
	public void setLogo(String logo) {
		this.logo = logo;
	}
	/**
	 * @return the sorting
	 */
	public int getSorting() {
		return sorting;
	}
	/**
	 * @param sorting 要设置的 sorting
	 */
	public void setSorting(int sorting) {
		this.sorting = sorting;
	}
	/**
	 * @return the isShow
	 */
	public int getIsShow() {
		return isShow;
	}
	/**
	 * @param isShow 要设置的 isShow
	 */
	public void setIsShow(int isShow) {
		this.isShow = isShow;
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
		return "Brand [addDate=" + addDate + ", braID=" + braID
				+ ", classNotes=" + classNotes + ", description=" + description
				+ ", isShow=" + isShow + ", logo=" + logo + ", name=" + name
				+ ", sorting=" + sorting + ", website=" + website + "]";
	}
	/**
	 * @return the braID
	 */
	public int getBraID() {
		return braID;
	}
	/**
	 * @param braID 要设置的 braID
	 */
	public void setBraID(int braID) {
		this.braID = braID;
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

	
	
}

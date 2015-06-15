/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午02:41:47
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: ProductClassify
 * @Description: 商品分类
 * @author miaoxiaochen
 * @date 2014-12-22 下午02:41:47
 * 
 */
@Entity
@Table(name="shop_productclassify")
public class ProductClassify implements Serializable{
	
	
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="商品分类";//类的注释
	/**
	 * 主键
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pcsID;
	/**
	 * 父ID
	 */
	private int parentID;
	/**
	 * 等级,从0开始排列(0为父级可以有多个)
	 */
	private int level;
	/**
	 * 名称
	 */
	private String name;
	/**
	 * 是否显示 0不显示
	 */
	private int isShow;
	/**
	 * 是否导航栏显示 0不显示
	 */
	private int isNavigation;
	/**
	 * 关键字
	 */
	private String keyword;
	/**
	 * 描述
	 */
	private String description;
	/**
	 * 是否推荐
	 */
	private int recommend;
	/**
	 * 排序
	 */
	private int sorting;
	/**
	 * 添加时间
	 */
	private String addDate;
	
	/**
	 * 分类下的 筛选属性
	 */
	@Transient
	private List<ProAttScreen> proAttScreens;
	
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}
	/**
	 * @return the proAttScreens
	 */
	public List<ProAttScreen> getProAttScreens() {
		return proAttScreens;
	}
	/**
	 * @param proAttScreens 要设置的 proAttScreens
	 */
	public void setProAttScreens(List<ProAttScreen> proAttScreens) {
		this.proAttScreens = proAttScreens;
	}
	/**
	 * @param classNotes 要设置的 classNotes
	 */
	public void setClassNotes(String classNotes) {
		this.classNotes = classNotes;
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
	 * @return the parentID
	 */
	public int getParentID() {
		return parentID;
	}
	/**
	 * @param parentID 要设置的 parentID
	 */
	public void setParentID(int parentID) {
		this.parentID = parentID;
	}
	/**
	 * @return the level
	 */
	public int getLevel() {
		return level;
	}
	/**
	 * @param level 要设置的 level
	 */
	public void setLevel(int level) {
		this.level = level;
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
	/**
	 * @return the isNavigation
	 */
	public int getIsNavigation() {
		return isNavigation;
	}
	/**
	 * @param isNavigation 要设置的 isNavigation
	 */
	public void setIsNavigation(int isNavigation) {
		this.isNavigation = isNavigation;
	}
	/**
	 * @return the keyword
	 */
	public String getKeyword() {
		return keyword;
	}
	/**
	 * @param keyword 要设置的 keyword
	 */
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
	 * @return the recommend
	 */
	public int getRecommend() {
		return recommend;
	}
	/**
	 * @param recommend 要设置的 recommend
	 */
	public void setRecommend(int recommend) {
		this.recommend = recommend;
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
		return "ProductClassify [addDate=" + addDate + ", classNotes="
				+ classNotes + ", description=" + description
				+ ", isNavigation=" + isNavigation + ", isShow=" + isShow
				+ ", keyword=" + keyword + ", level=" + level + ", name="
				+ name + ", parentID=" + parentID + ", pcsID=" + pcsID
				+ ", proAttScreens=" + proAttScreens + ", recommend="
				+ recommend + ", sorting=" + sorting + "]";
	}
	
	
	 
}

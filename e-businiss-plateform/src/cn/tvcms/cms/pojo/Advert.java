/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-29 下午01:40:49
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: Advert
 * @Description: 实体类（广告）
 * @author sunJingYang
 * @date 2014-9-29 下午01:40:49
 * 
 */
@Entity
@Table(name = "tvcms_advert")
public class Advert  implements Serializable{

	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="广告";//类的注释

	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;// 主键ID
	
	@Column(name="ad_name")
	private String adName;//广告名称
	
	@Column
	private Integer type;//广告类型 2==图片 1==文字
	
	@Column(name="alt_name")
	private String altName;//提示文字
	
	@Column(name="pv_count")
	private Integer pvCount;//浏览次数
	
	@Column(name="uv_count")
	private Integer uvCount;//Ip浏览次数
	
	@Column(name="image_url")
	private String imageUrl;//图片路径
	
	@Column(name="image_name")
	private String imageName;//图片名称
	
	@Column
	private String notes;//注释
	
	@Column(name="link_address")
	private String linkAddress;//链接地址
	
	
	
	@Column(name = "is_deleted")
	private Integer isDeleted;// 删除标识

	@Column(name = "create_user_id")
	private Integer createUserId;// 创建用户

	@Column(name = "create_time")
	private Date createTime;// 创建时间

	@Column(name = "modify_user_id")
	private Integer modifyUserId;// 修改用户

	@Column(name = "modify_time")
	private Date modifyTime;// 修改时间

	@Column(name = "delete_user_id")
	private Integer deleteUserId;// 删除用户

	@Column(name = "delete_time")
	private Date deleteTime;// 删除时间

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id 要设置的 id
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the adName
	 */
	public String getAdName() {
		return adName;
	}

	/**
	 * @param adName 要设置的 adName
	 */
	public void setAdName(String adName) {
		this.adName = adName;
	}

	/**
	 * @return the altName
	 */
	public String getAltName() {
		return altName;
	}

	/**
	 * @param altName 要设置的 altName
	 */
	public void setAltName(String altName) {
		this.altName = altName;
	}

	/**
	 * @return the pvCount
	 */
	public Integer getPvCount() {
		return pvCount;
	}

	/**
	 * @param pvCount 要设置的 pvCount
	 */
	public void setPvCount(Integer pvCount) {
		this.pvCount = pvCount;
	}

	/**
	 * @return the uvCount
	 */
	public Integer getUvCount() {
		return uvCount;
	}

	/**
	 * @param uvCount 要设置的 uvCount
	 */
	public void setUvCount(Integer uvCount) {
		this.uvCount = uvCount;
	}

	/**
	 * @return the imageUrl
	 */
	public String getImageUrl() {
		return imageUrl;
	}

	/**
	 * @param imageUrl 要设置的 imageUrl
	 */
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	/**
	 * @return the notes
	 */
	public String getNotes() {
		return notes;
	}

	/**
	 * @param notes 要设置的 notes
	 */
	public void setNotes(String notes) {
		this.notes = notes;
	}

	/**
	 * @return the linkAddress
	 */
	public String getLinkAddress() {
		return linkAddress;
	}

	/**
	 * @param linkAddress 要设置的 linkAddress
	 */
	public void setLinkAddress(String linkAddress) {
		this.linkAddress = linkAddress;
	}



	/**
	 * @return the createUserId
	 */
	public Integer getCreateUserId() {
		return createUserId;
	}

	/**
	 * @param createUserId 要设置的 createUserId
	 */
	public void setCreateUserId(Integer createUserId) {
		this.createUserId = createUserId;
	}

	/**
	 * @return the createTime
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * @param createTime 要设置的 createTime
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * @return the modifyUserId
	 */
	public Integer getModifyUserId() {
		return modifyUserId;
	}

	/**
	 * @param modifyUserId 要设置的 modifyUserId
	 */
	public void setModifyUserId(Integer modifyUserId) {
		this.modifyUserId = modifyUserId;
	}

	/**
	 * @return the modifyTime
	 */
	public Date getModifyTime() {
		return modifyTime;
	}

	/**
	 * @param modifyTime 要设置的 modifyTime
	 */
	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	/**
	 * @return the deleteUserId
	 */
	public Integer getDeleteUserId() {
		return deleteUserId;
	}

	/**
	 * @param deleteUserId 要设置的 deleteUserId
	 */
	public void setDeleteUserId(Integer deleteUserId) {
		this.deleteUserId = deleteUserId;
	}

	/**
	 * @return the deleteTime
	 */
	public Date getDeleteTime() {
		return deleteTime;
	}

	/**
	 * @param deleteTime 要设置的 deleteTime
	 */
	public void setDeleteTime(Date deleteTime) {
		this.deleteTime = deleteTime;
	}

	/**
	 * @return the imageName
	 */
	public String getImageName() {
		return imageName;
	}

	/**
	 * @param imageName 要设置的 imageName
	 */
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	/**
	 * @return the isDeleted
	 */
	public Integer getIsDeleted() {
		return isDeleted;
	}

	/**
	 * @param isDeleted 要设置的 isDeleted
	 */
	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	/**
	 * @return the type
	 */
	public Integer getType() {
		return type;
	}

	/**
	 * @param type 要设置的 type
	 */
	public void setType(Integer type) {
		this.type = type;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public static void main(String[] args) {
		System.out.println("hello...");
	}
}

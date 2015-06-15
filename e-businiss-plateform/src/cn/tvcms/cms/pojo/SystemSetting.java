/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
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
 * 系统设置实体类
 * @author lianpeng
 * @version create time：2014年5月18日  
 *
 */
@Entity
@Table(name = "tvcms_sys_type")
public class SystemSetting implements Serializable {
	@Transient
	private  String classNotes="系统设置";//类的注释
	
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id ;
	
	@Column(name="website_name")
	private String websiteName ;//网站名称
	
	@Column(name="website_url")
	private String websiteUrl;//网站地址
	
	@Column
	private String keyword;//关键字
	
	@Column
	private String description;//网站描述

	@Column(name="index_mode")
	private Integer indexMode;//首页模式， 1表示静态页面 2表示动态页面
	
	@Column(name="web_mode")
	private Integer webMode;//整站模式
	
	@Column(name="html_savepath")
	private String htmlSavePath;//文档HTML默认保存路径
	
	@Column(name="img_savepath")
	private String imgSavePath;//图片文件默认上传路径
	
	@Column(name="verify_num")
	private Integer verifyNum;//验证码
	
	@Column(name="verify_bgcolor")
	private String verifyBgcolor;//验证码背景色
	
	@Column(name="verify_num_color")
	private String verifyNumColor;//验证码颜色
	
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
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getWebsiteName() {
		return websiteName;
	}

	public void setWebsiteName(String websiteName) {
		this.websiteName = websiteName;
	}

	public String getWebsiteUrl() {
		return websiteUrl;
	}

	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getIndexMode() {
		return indexMode;
	}

	public void setIndexMode(Integer indexMode) {
		this.indexMode = indexMode;
	}

	public String getHtmlSavePath() {
		return htmlSavePath;
	}

	public void setHtmlSavePath(String htmlSavePath) {
		this.htmlSavePath = htmlSavePath;
	}

	public String getImgSavePath() {
		return imgSavePath;
	}

	public void setImgSavePath(String imgSavePath) {
		this.imgSavePath = imgSavePath;
	}

	public Integer getVerifyNum() {
		return verifyNum;
	}

	public void setVerifyNum(Integer verifyNum) {
		this.verifyNum = verifyNum;
	}

	public String getVerifyBgcolor() {
		return verifyBgcolor;
	}

	public void setVerifyBgcolor(String verifyBgcolor) {
		this.verifyBgcolor = verifyBgcolor;
	}

	public String getVerifyNumColor() {
		return verifyNumColor;
	}

	public void setVerifyNumColor(String verifyNumColor) {
		this.verifyNumColor = verifyNumColor;
	}

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Integer getCreateUserId() {
		return createUserId;
	}

	public void setCreateUserId(Integer createUserId) {
		this.createUserId = createUserId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getModifyUserId() {
		return modifyUserId;
	}

	public void setModifyUserId(Integer modifyUserId) {
		this.modifyUserId = modifyUserId;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public Integer getDeleteUserId() {
		return deleteUserId;
	}

	public void setDeleteUserId(Integer deleteUserId) {
		this.deleteUserId = deleteUserId;
	}

	public Date getDeleteTime() {
		return deleteTime;
	}

	public void setDeleteTime(Date deleteTime) {
		this.deleteTime = deleteTime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Integer getWebMode() {
		return webMode;
	}

	public void setWebMode(Integer webMode) {
		this.webMode = webMode;
	}
	

}

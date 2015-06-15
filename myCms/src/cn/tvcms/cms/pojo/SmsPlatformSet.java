/**
 * @Project: 特维内容管理系统
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014年10月2日 下午4:25:27
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
 * @ClassName: SmsPlatformSet
 * @Description: 短信平台配置表实体类
 * @author xurannan
 * @date 2014年10月2日 下午4:25:27
 * 
 */
@Entity
@Table(name = "tvcms_SmsPlatform_Set")
public class SmsPlatformSet implements Serializable{
	@Transient
	private  String classNotes="短信平台配置";//类的注释
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
	
	@Column(name="sms_name")
	private String smsName ;//短信平台用户名
	
	@Column(name="sms_pwd")
	private String smsPwd;//密码
	
	@Column
	private String sign;//签名
	
	@Column(name="send_phone")
	private String sendPhone;//发送手机号
	
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

	public String getSmsName() {
		return smsName;
	}

	public void setSmsName(String smsName) {
		this.smsName = smsName;
	}

	public String getSmsPwd() {
		return smsPwd;
	}

	public void setSmsPwd(String smsPwd) {
		this.smsPwd = smsPwd;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}
	
	public String getSendPhone() {
		return sendPhone;
	}

	public void setSendPhone(String sendPhone) {
		this.sendPhone = sendPhone;
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
	
}

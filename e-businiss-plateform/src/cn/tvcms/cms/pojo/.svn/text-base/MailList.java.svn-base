/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-11-6 上午09:35:21
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;



/**
 * @ClassName: MailList
 * @Description:通讯录实体类
 * @author sunjinyang
 * @date 2014-11-6 上午09:35:21
 * 
 */
@Entity
@Table(name="tvcms_sms_mail_list")
public class MailList implements Serializable{
	/**
	 * @param classNotes 要设置的 classNotes
	 */
	public void setClassNotes(String classNotes) {
		this.classNotes = classNotes;
	}






	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;

	@Transient
	private String classNotes="通讯录实体类";
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;  //主键
	
	@Column
	private String pinyin;//姓名所对应的拼音
	
	@Column
	private String name;  //姓名
	
	@Column
	private String phone;  //手机号
	
	@Column
	private String remarks;  //备注
	

	

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "mail_list_group_id")
	private MailListGroup groupId; //所属分组
	
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
	 * @return the pinyin
	 */
	public String getPinyin() {
		return pinyin;
	}






	/**
	 * @param pinyin 要设置的 pinyin
	 */
	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}






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
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}






	/**
	 * @param phone 要设置的 phone
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}






	/**
	 * @return the remarks
	 */
	public String getRemarks() {
		return remarks;
	}






	/**
	 * @param remarks 要设置的 remarks
	 */
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}













	/**
	 * @return the groupId
	 */
	public MailListGroup getGroupId() {
		return groupId;
	}






	/**
	 * @param groupId 要设置的 groupId
	 */
	public void setGroupId(MailListGroup groupId) {
		this.groupId = groupId;
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
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}
	

}

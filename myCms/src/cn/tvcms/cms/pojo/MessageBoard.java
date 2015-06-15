/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-24 下午03:41:32
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
 * @ClassName: MessageBoard
 * @Description: TODO(留言板实体类)
 * @author sunJingYang
 * @date 2014-9-24 下午03:41:32
 * 
 */
@Entity
@Table(name = "tvcms_message_board")
public class MessageBoard implements Serializable{

private static final long serialVersionUID = 1L;
@Transient
private  String classNotes="留言";//类的注释
	
	/**
 * @return the classNotes
 */
public String getClassNotes() {
	return classNotes;
}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;//主键
	
	@Column
	private String name;//名称
	
	@Column
	private String contact;//联系方式
	
	@Column(name="written_time")//留言时间
	private Date writtenTime;
	
	@Column(name="written_ip")//留言IP
	private String writtenIp;
	
	@Column(name="send_record_id")
	private String sendRecordId;//短信发送记录
	

	@Column(name="is_examine")
	private  Integer isExamine; //是否通过审核1==通过 2或null==未通过
	
	
	@Column(name="reply_content")
	private String replyContent;//回复内容
	
	@Column
	private String message;//留言内容
	
	@Column(name="services_name")
	private String servicesName;//服务项目名
	
	@Column(name="sms_send_record_id")
	private Integer sendId;//短信发送记录ID
	
	@Column(name="is_deleted")
	private Integer isDeleted;//删除标识
	
	@Column(name="create_user_id")
	private Integer createId;//创建用户
	
	@Column(name="create_time")
	private Date createTime;//创建时间
	
	@Column(name="modify_user_id")
	private Integer modifyId;//修改用户
	
	@Column(name="modify_time")
	private Date modifyTime;//修改时间
	
	@Column(name="delete_user_id")
	private Integer deleteId;//删除用户
	
	@Column(name="delete_time")
	private Date deleteTime;//删除时间

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
	 * @return the contact
	 */
	public String getContact() {
		return contact;
	}

	/**
	 * @param contact 要设置的 contact
	 */
	public void setContact(String contact) {
		this.contact = contact;
	}



	/**
	 * @return the isExamine
	 */
	public Integer getIsExamine() {
		return isExamine;
	}

	/**
	 * @param isExamine 要设置的 isExamine
	 */
	public void setIsExamine(Integer isExamine) {
		this.isExamine = isExamine;
	}

	/**
	 * @return the replyContent
	 */
	public String getReplyContent() {
		return replyContent;
	}

	/**
	 * @param replyContent 要设置的 replyContent
	 */
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message 要设置的 message
	 */
	public void setMessage(String message) {
		this.message = message;
	}



	/**
	 * @return the sendId
	 */
	public Integer getSendId() {
		return sendId;
	}

	/**
	 * @param sendId 要设置的 sendId
	 */
	public void setSendId(Integer sendId) {
		this.sendId = sendId;
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
	 * @return the createId
	 */
	public Integer getCreateId() {
		return createId;
	}

	/**
	 * @param createId 要设置的 createId
	 */
	public void setCreateId(Integer createId) {
		this.createId = createId;
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
	 * @return the modifyId
	 */
	public Integer getModifyId() {
		return modifyId;
	}

	/**
	 * @param modifyId 要设置的 modifyId
	 */
	public void setModifyId(Integer modifyId) {
		this.modifyId = modifyId;
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
	 * @return the deleteId
	 */
	public Integer getDeleteId() {
		return deleteId;
	}

	/**
	 * @param deleteId 要设置的 deleteId
	 */
	public void setDeleteId(Integer deleteId) {
		this.deleteId = deleteId;
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
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
	 * @return the writtenTime
	 */
	public Date getWrittenTime() {
		return writtenTime;
	}

	/**
	 * @param writtenTime 要设置的 writtenTime
	 */
	public void setWrittenTime(Date writtenTime) {
		this.writtenTime = writtenTime;
	}

	/**
	 * @return the writtenIp
	 */
	public String getWrittenIp() {
		return writtenIp;
	}

	/**
	 * @param writtenIp 要设置的 writtenIp
	 */
	public void setWrittenIp(String writtenIp) {
		this.writtenIp = writtenIp;
	}

	/**
	 * @return the servicesName
	 */
	public String getServicesName() {
		return servicesName;
	}

	/**
	 * @param servicesName 要设置的 servicesName
	 */
	public void setServicesName(String servicesName) {
		this.servicesName = servicesName;
	}

	/**
	 * @return the sendRecordId
	 */
	public String getSendRecordId() {
		return sendRecordId;
	}

	/**
	 * @param sendRecordId 要设置的 sendRecordId
	 */
	public void setSendRecordId(String sendRecordId) {
		this.sendRecordId = sendRecordId;
	}


	
	

}

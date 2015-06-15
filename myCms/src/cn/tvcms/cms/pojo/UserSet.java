/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author xurannan
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
 * 系统用户设置实体类
 * @author xurannan
 * @version create time：2014年5月26日 下午11:49:41 
 * 
 */

@Entity
@Table(name = "tvcms_user_set")
public class UserSet implements Serializable {
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="系统用户设置";//类的注释
	
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	
		@Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
		private Integer id;//主键ID
		
		@Column(name="login_num")
		private Integer loginNum;//后台登录验证码
		
		@Column(name="login_fre")
		private Integer loginFre;//后台登录次数限制
		
		@Column(name="login_time")
		private Integer loginTime;//重新登录时间间隔 
		
		@Column(name="session_time")
		private Integer sessionTime;//登录超时时间设置
		
		@Column(name="member_register")
		private Integer memberRegister;//会员注册
		
		@Column(name="user_limit_start")
		private Integer userLimitStart;//注册用户名限制开始
		
		@Column(name="user_limit_end")
		private Integer userLimitEnd;//注册用户名限制结束
		
		@Column(name="pwd_limit_start")
		private Integer pwdLimitStart;//注册密码限制开始
		
		@Column(name="pwd_limit_end")
		private Integer pwdLimitEnd;//密码限制结束
		
		@Column(name="user_file_size")
		private Integer userFileSize;//会员上传文件大小
		
		@Column(name="user_file_type")
		private String userFileType;//会员附件许可的类型
		
		@Column(name="file_coun_size")
		private Integer fileCounSize;//会员附件总大小限制
		
		@Column(name="emal_uniqueness")
		private Integer emalUniqueness;//会员邮箱唯一性检查
		
		@Column(name="ipInterval_time")
		private Integer ipIntervalTime;//同一IP注册间隔限制
		
		@Column(name="reserve_keyword")
		private String reserveKeyword;//用户名保留关键字
		
		@Column(name="login_number")
		private Integer loginNumber;//会员登录验证码
		
		@Column(name="register_number")
		private Integer registerNumber;//会员注册验证码
		
		@Column(name="is_comments")
		private String isComments;//是否开启评论   1==开启  2==关闭
		
		@Column(name="is_deleted")
		private Integer isDeleted;//删除标识
		
		@Column(name="create_user_id")
		private Integer createUserId;//创建用户
		
		@Column(name="create_time")
		private Date createTime;//创建时间
		
		@Column(name="modify_user_id")
		private Integer modifyUserId;//修改用户
		
		@Column(name="modify_time")
		private Date modifyTime;//修改时间
		
		@Column(name="delete_user_id")
		private Integer deleteUserId;//删除用户
		
		@Column(name="delete_time")
		private Date deleteTime;//删除时间
		
		@Column(name="name_registr")
		private Integer nameReg;
		
		@Column(name="mail_registr")
		private Integer mailReg;
		
		@Column(name="phone_registr")
		private Integer phoneReg;
		

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public Integer getLoginNum() {
			return loginNum;
		}

		public void setLoginNum(Integer loginNum) {
			this.loginNum = loginNum;
		}

		public Integer getLoginFre() {
			return loginFre;
		}

		public void setLoginFre(Integer loginFre) {
			this.loginFre = loginFre;
		}

		public Integer getLoginTime() {
			return loginTime;
		}

		public void setLoginTime(Integer loginTime) {
			this.loginTime = loginTime;
		}

		public Integer getIpIntervalTime() {
			return ipIntervalTime;
		}

		public void setIpIntervalTime(Integer ipIntervalTime) {
			this.ipIntervalTime = ipIntervalTime;
		}

		public Integer getSessionTime() {
			return sessionTime;
		}

		public void setSessionTime(Integer sessionTime) {
			this.sessionTime = sessionTime;
		}

		public Integer getMemberRegister() {
			return memberRegister;
		}

		public void setMemberRegister(Integer memberRegister) {
			this.memberRegister = memberRegister;
		}

		public Integer getUserLimitStart() {
			return userLimitStart;
		}

		public void setUserLimitStart(Integer userLimitStart) {
			this.userLimitStart = userLimitStart;
		}

		public Integer getUserLimitEnd() {
			return userLimitEnd;
		}

		public void setUserLimitEnd(Integer userLimitEnd) {
			this.userLimitEnd = userLimitEnd;
		}

		public Integer getPwdLimitStart() {
			return pwdLimitStart;
		}

		public void setPwdLimitStart(Integer pwdLimitStart) {
			this.pwdLimitStart = pwdLimitStart;
		}

		public Integer getPwdLimitEnd() {
			return pwdLimitEnd;
		}

		public void setPwdLimitEnd(Integer pwdLimitEnd) {
			this.pwdLimitEnd = pwdLimitEnd;
		}

		public Integer getUserFileSize() {
			return userFileSize;
		}

		public void setUserFileSize(Integer userFileSize) {
			this.userFileSize = userFileSize;
		}

		public String getUserFileType() {
			return userFileType;
		}

		public void setUserFileType(String userFileType) {
			this.userFileType = userFileType;
		}

		public Integer getFileCounSize() {
			return fileCounSize;
		}

		public void setFileCounSize(Integer fileCounSize) {
			this.fileCounSize = fileCounSize;
		}

		public Integer getEmalUniqueness() {
			return emalUniqueness;
		}

		public void setEmalUniqueness(Integer emalUniqueness) {
			this.emalUniqueness = emalUniqueness;
		}

		public Integer getIpIntegerervalTime() {
			return ipIntervalTime;
		}

		public void setIpIntegerervalTime(Integer ipIntegerervalTime) {
			this.ipIntervalTime = ipIntegerervalTime;
		}

		public String getReserveKeyword() {
			return reserveKeyword;
		}

		public void setReserveKeyword(String reserveKeyword) {
			this.reserveKeyword = reserveKeyword;
		}

		public Integer getLoginNumber() {
			return loginNumber;
		}

		public void setLoginNumber(Integer loginNumber) {
			this.loginNumber = loginNumber;
		}

		public Integer getRegisterNumber() {
			return registerNumber;
		}

		public void setRegisterNumber(Integer registerNumber) {
			this.registerNumber = registerNumber;
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

		/**
		 * @return the nameReg
		 */
		public Integer getNameReg() {
			return nameReg;
		}

		/**
		 * @param nameReg 要设置的 nameReg
		 */
		public void setNameReg(Integer nameReg) {
			this.nameReg = nameReg;
		}

		/**
		 * @return the mailReg
		 */
		public Integer getMailReg() {
			return mailReg;
		}

		/**
		 * @param mailReg 要设置的 mailReg
		 */
		public void setMailReg(Integer mailReg) {
			this.mailReg = mailReg;
		}

		/**
		 * @return the phoneReg
		 */
		public Integer getPhoneReg() {
			return phoneReg;
		}

		/**
		 * @param phoneReg 要设置的 phoneReg
		 */
		public void setPhoneReg(Integer phoneReg) {
			this.phoneReg = phoneReg;
		}

		/**
		 * @return the isComments
		 */
		public String getIsComments() {
			return isComments;
		}

		/**
		 * @param isComments 要设置的 isComments
		 */
		public void setIsComments(String isComments) {
			this.isComments = isComments;
		}
		
		
		
}

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

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * 用户实体类
 * @author lianpeng
 * @version 1.0
 */
@Entity
@Table(name = "tvcms_user")
public class User implements Serializable {
	@Transient
	private  String classNotes="用户";//类的注释
	
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	private static final long serialVersionUID = 1L;
	
	//主键
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id ;
	
	//用户名
	@Column(name = "username")
	private String userName;
	
	//密码
	private String password;
	
	//用户真实名称
	@Column(name = "true_name")
	private String trueName;
	
	//性别
	private String sex;
	
	//邮箱
	private String email;
	
	//用户组Id
//	@Column(name = "group_id")
	@OneToOne(cascade=CascadeType.ALL)  
    @JoinColumn(name="group_id")
	private UserGroup userGroup;

	/**
	 * @return the userGroup
	 */
	public UserGroup getUserGroup() {
		return userGroup;
	}

	/**
	 * @param userGroup 要设置的 userGroup
	 */
	public void setUserGroup(UserGroup userGroup) {
		this.userGroup = userGroup;
	}

	//部门id
	@Column(name = "dept_id")
	private Integer deptid; 
	
	//是否禁止登录
	@Column(name = "is_disabled")
	private Integer isDisabled;
	
	//登录次数
	@Column(name = "login_times")
	private Integer loginTimes;
	
	//上次登录时间
	@Column(name = "last_login_time")
	private Date lastLoginTime;
	
	//上次修改密码
	@Column(name = "last_modpwd_time")
	private Date laseModPwdTime;
	
	//删除标识
	@Column(name = "is_deleted")
	private Integer isDeleted;
	
	//创建用户ID
	@Column(name = "create_user_id")
	private Integer createUserId;
	
	//创建时间
	@Column(name = "create_time")
	private Date createTime;
	
	//修改用户
	@Column(name = "modify_user_id")
	private Integer modifyUserId;
	
	//修改时间
	@Column(name = "modify_time")
	private Date modifyTime;
	
	//删除用户
	@Column(name = "delete_user_id")
	private Date deleteUserId;
	
	//删除时间
	@Column(name = "delete_time")
	private Date deleteTime;
	
	//最后登录ip
	@Column(name = "last_login_ip")
	private String lastLoginIp;
	  
	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTrueName() {
		return trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getDeptid() {
		return deptid;
	}

	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
	}

	public Integer getIsDisabled() {
		return isDisabled;
	}

	public void setIsDisabled(Integer isDisabled) {
		this.isDisabled = isDisabled;
	}

	public Integer getLoginTimes() {
		return loginTimes;
	}

	public void setLoginTimes(Integer loginTimes) {
		this.loginTimes = loginTimes;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date laseLoginTime) {
		this.lastLoginTime = laseLoginTime;
	}

	public Date getLaseModPwdTime() {
		return laseModPwdTime;
	}

	public void setLaseModPwdTime(Date laseModPwdTime) {
		this.laseModPwdTime = laseModPwdTime;
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

	public Date getDeleteUserId() {
		return deleteUserId;
	}

	public void setDeleteUserId(Date deleteUserId) {
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

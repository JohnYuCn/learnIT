/**
 * @Project: 特维内容管理系统
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014年9月14日 下午2:00:46
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
 * @ClassName: Member
 * @Description: 会员用户实体类
 * @author xurannan
 * @date 2014年9月14日 下午2:00:46
 * 
 */
@Entity
@Table(name = "tvcms_member")
public class Member implements Serializable {
	@Transient
	private  String classNotes="会员";//类的注释
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;// 主键ID
	
	@Column
	private String username;// 用户名
	
	@Column
	private String password;//密码
	
	@Column(name="birth_date")//出生日期
	private Date birthDate;
	
	@Column
	private Integer age;//年龄
	
	@Column(name = "true_name")
	private String trueName;//真实姓名
	
	@Column
	private String email;// 邮箱
	
	@Column
	private String address;//地址
	
	@Column
	private String phone;//联系电话
	
	@Column(name="registration_method")
	private Integer registrationMthod;
	
	@Column(name="is_activation")
	private Integer isActivation;
	
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
	 * @return the birthDate
	 */
	public Date getBirthDate() {
		return birthDate;
	}

	/**
	 * @param birthDate 要设置的 birthDate
	 */
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address 要设置的 address
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	@Column
	private String gender;// 性别
	
	@Column(name = "group_id")
	private String groupId;// 会员组ID
	
	@Column(name = "is_disabled")
	private String isDisabled;// 是否禁止登录
	
	@Column(name = "login_times")
	private Integer loginTimes;// 登录次数
	
	@Column(name = "last_login_time")
	private Date lastLoginTime;// 上次登录时间
	
	@Column(name = "last_modpwd_time")
	private String lastModpwdTime;// 上次修改密码时间
	
	@Column(name = "preview_pass")
	private String previewPass;// 是否审核通过
	
	@Column(name = "register_time")
	private Date registerTime;// 注册时间
	
	@Column(name = "register_ip")
	private Date registerIp;// 注册IP
	
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGroupId() {
		return groupId;
	}

	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

	public String getIsDisabled() {
		return isDisabled;
	}

	public void setIsDisabled(String isDisabled) {
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

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getLastModpwdTime() {
		return lastModpwdTime;
	}

	public void setLastModpwdTime(String lastModpwdTime) {
		this.lastModpwdTime = lastModpwdTime;
	}

	public String getPreviewPass() {
		return previewPass;
	}

	public void setPreviewPass(String previewPass) {
		this.previewPass = previewPass;
	}

	public Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public Date getRegisterIp() {
		return registerIp;
	}

	public void setRegisterIp(Date registerIp) {
		this.registerIp = registerIp;
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
	 * @return the registrationMthod
	 */
	public Integer getRegistrationMthod() {
		return registrationMthod;
	}

	/**
	 * @param registrationMthod 要设置的 registrationMthod
	 */
	public void setRegistrationMthod(Integer registrationMthod) {
		this.registrationMthod = registrationMthod;
	}

	/**
	 * @return the isActivation
	 */
	public Integer getIsActivation() {
		return isActivation;
	}

	/**
	 * @param isActivation 要设置的 isActivation
	 */
	public void setIsActivation(Integer isActivation) {
		this.isActivation = isActivation;
	}

	/**
	 * @return the age
	 */
	public Integer getAge() {
		return age;
	}

	/**
	 * @param age 要设置的 age
	 */
	public void setAge(Integer age) {
		this.age = age;
	}

	/* (非 Javadoc)
	 * <p>Title: toString</p>
	 * <p>Description: </p>
	 * @author wangChuang
	 * @return
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Member [address=" + address + ", age=" + age + ", birthDate="
				+ birthDate + ", classNotes=" + classNotes + ", createTime="
				+ createTime + ", createUserId=" + createUserId
				+ ", deleteTime=" + deleteTime + ", deleteUserId="
				+ deleteUserId + ", email=" + email + ", gender=" + gender
				+ ", groupId=" + groupId + ", id=" + id + ", isActivation="
				+ isActivation + ", isDeleted=" + isDeleted + ", isDisabled="
				+ isDisabled + ", lastLoginTime=" + lastLoginTime
				+ ", lastModpwdTime=" + lastModpwdTime + ", loginTimes="
				+ loginTimes + ", modifyTime=" + modifyTime + ", modifyUserId="
				+ modifyUserId + ", password=" + password + ", phone=" + phone
				+ ", previewPass=" + previewPass + ", registerIp=" + registerIp
				+ ", registerTime=" + registerTime + ", registrationMthod="
				+ registrationMthod + ", trueName=" + trueName + ", username="
				+ username + "]";
	}

	
	
	
}

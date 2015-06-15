/**
 * @Project: 特维内容管理系统
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014年9月20日 下午6:08:08
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
 * @ClassName: UserLoginLog
 * @Description: 系统用户登录日志实体类
 * @author xurannan
 * @date 2014年9月20日 下午6:08:08
 * 
 */
@Entity
@Table(name = "tvcms_user_login_log")
public class UserLoginLog implements Serializable {
	@Transient
	private  String classNotes="系统用户登录日志";//类的注释
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
	
	@Column(name = "user_name")
	private String userName;// 用户ID
	
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName 要设置的 userName
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "login_state")
	private String loginState;//登录状态（成功、用户名错误、密码错误、频繁登录、暴力破解）1==登录成功 2==用户名不存在 3==用户名或密码错误
	
	@Column(name = "login_ip")
	private String loginIp;// 登录IP
	
	@Column(name = "login_time")
	private Date loginTime;// 登录时间
	
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



	public String getLoginState() {
		return loginState;
	}

	public void setLoginState(String loginState) {
		this.loginState = loginState;
	}

	public String getLoginIp() {
		return loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	

	/**
	 * @return the loginTime
	 */
	public Date getLoginTime() {
		return loginTime;
	}

	/**
	 * @param loginTime 要设置的 loginTime
	 */
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
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
	
}

/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-12-5 下午05:00:36
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
 * @ClassName: Authorization
 * @Description: 授权
 * @author sunjinyang
 * @date 2014-12-5 下午05:00:36
 * 
 */
@Entity
@Table(name="tvcms_authorization")
public class Authorization implements Serializable{
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="授权";//类的注释


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;// 主键ID

	@Column(name="domain_name")
	private String domainName;//域名
	
	@Transient
	private String userName;//暂存操作人姓名
	
	@Column(name="code")
	private String code;//授权码
	
	@Column(name="user_id")
	private Integer userId;//授权人
	
	@Column
	private String type;//授权类型
	
	@Column
	private String status;//状态
	
	@Column(name="end_time")
	private String endTime;//授权结束日期
	
	@Column(name="start_time")
	private Date startTime;//授权开始日期
	
	@Column(name="is_check")
	private String isCheck;//客户端是否已验证 1==已验证  其他为未验证

	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	/**
	 * @param classNotes 要设置的 classNotes
	 */
	public void setClassNotes(String classNotes) {
		this.classNotes = classNotes;
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
	 * @return the domainName
	 */
	public String getDomainName() {
		return domainName;
	}

	/**
	 * @param domainName 要设置的 domainName
	 */
	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code 要设置的 code
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @param userId 要设置的 userId
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}


	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status 要设置的 status
	 */
	public void setStatus(String status) {
		this.status = status;
	}





	/**
	 * @return the endTime
	 */
	public String getEndTime() {
		return endTime;
	}

	/**
	 * @param endTime 要设置的 endTime
	 */
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	/**
	 * @return the startTime
	 */
	public Date getStartTime() {
		return startTime;
	}

	/**
	 * @param startTime 要设置的 startTime
	 */
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

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

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type 要设置的 type
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the isCheck
	 */
	public String getIsCheck() {
		return isCheck;
	}

	/**
	 * @param isCheck 要设置的 isCheck
	 */
	public void setIsCheck(String isCheck) {
		this.isCheck = isCheck;
	}
	
	
	
	
}

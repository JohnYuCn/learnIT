/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-12-7 下午03:10:13
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
 * @ClassName: MessagePush
 * @Description: 消息推送
 * @author sunjinyang
 * @date 2014-12-7 下午03:10:13
 * 
 */
@Entity
@Table(name="message_push")
public class MessagePush implements Serializable{
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="消息推送";//类的注释
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;// 主键ID
	
	@Column(name="domain_name")
	private String domainName;//域名
	
	@Column
	private String content;//内容
	
	
	
	@Column(name="user_id")
	private Integer userId;//推送人
	
	@Column(name="send_time")
	private Date sendTime;//发送时间
	
	@Transient
	private String userName;//发送人暂存
	
	@Column
	private String title;//标题
	
	
	

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title 要设置的 title
	 */
	public void setTitle(String title) {
		this.title = title;
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
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content 要设置的 content
	 */
	
	public void setContent(String content) {
		this.content = content;
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
	 * @return the sendTime
	 */
	public Date getSendTime() {
		return sendTime;
	}

	/**
	 * @param sendTime 要设置的 sendTime
	 */

	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}
	
	
	
	
	
	
	
}

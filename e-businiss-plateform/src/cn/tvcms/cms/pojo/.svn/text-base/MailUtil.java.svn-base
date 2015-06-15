/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lp
 * @date 2014-11-11 下午10:28:32
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: MailUtil
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author lp
 * @date 2014-11-11 下午10:28:32
 * 
 */

@Entity
@Table(name = "tvcms_mail")
public class MailUtil  implements Serializable  {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id; // 目录ID

	/**
	 * 发件人邮箱服务器
	 */
	@Column(name = "mail_host")
	private String emailHost;

	/**
	 * 发件人邮箱端口号
	 */
	@Column( name="mail_post" )
	private Integer port;
	
	/**
	 * 发件人用户名
	 */
	@Column(name = "mail_name")
	private String emailUserName;

	/**
	 * 发件人密码
	 */
	@Column(name = "mail_pwd")
	private String emailPassword;

	/**
	 * 收件人邮箱
	 */
	@Transient
	private String toEmails;
	/**
	 * 邮件主题
	 */
	@Column(name = "mail_subject")
	private String subject;
	/**
	 * 邮件内容
	 */
	@Column(name = "mail_text")
	private String content;

	private  String classNotes="邮件";//类的注释
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	
	/**
	 * @return the emailHost
	 */
	public String getEmailHost() {
		return emailHost;
	}

	/**
	 * @param emailHost
	 *            要设置的 emailHost
	 */
	public void setEmailHost(String emailHost) {
		this.emailHost = emailHost;
	}

	/**
	 * @return the emailUserName
	 */
	public String getEmailUserName() {
		return emailUserName;
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
	 * @param emailUserName
	 *            要设置的 emailUserName
	 */
	public void setEmailUserName(String emailUserName) {
		this.emailUserName = emailUserName;
	}

	/**
	 * @return the emailPassword
	 */
	public String getEmailPassword() {
		return emailPassword;
	}

	/**
	 * @param emailPassword
	 *            要设置的 emailPassword
	 */
	public void setEmailPassword(String emailPassword) {
		this.emailPassword = emailPassword;
	}

	/**
	 * @return the toEmails
	 */
	public String getToEmails() {
		return toEmails;
	}

	/**
	 * @param toEmails
	 *            要设置的 toEmails
	 */
	public void setToEmails(String toEmails) {
		this.toEmails = toEmails;
	}

	/**
	 * @return the subject
	 */
	public String getSubject() {
		return subject;
	}

	/**
	 * @param subject
	 *            要设置的 subject
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content
	 *            要设置的 content
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * @return the port
	 */
	public Integer getPort() {
		return port;
	}

	/**
	 * @param port 要设置的 port
	 */
	public void setPort(Integer port) {
		this.port = port;
	}

}
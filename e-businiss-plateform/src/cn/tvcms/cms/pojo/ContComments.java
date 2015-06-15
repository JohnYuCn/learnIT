/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2015-1-12 下午02:56:38
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
 * @ClassName: ContComments
 * @Description: 内容评论实体类
 * @author sunjinyang
 * @date 2015-1-12 下午02:56:38
 * 
 */
@Entity
@Table(name="tvcms_cont_comments")
public class ContComments implements Serializable{
	@Transient
	private  String classNotes="内容评论实体类";//类的注释

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
	private String title;//标题
	
	@Column(name="comment_time")
	private Date commentTime;//评论时间
	
	@Column(name="cont_id")
	private Integer contId;//内容id
	
	@Column(name="comment_content")
	private String commentContent;//评论内容
	
	@Column
	private String ip;//ip地址 
	
	@Column(name="is_examine")
	private String isExamine;//2=未通过     1=通过
	
	@Column(name="reply_time")
	private Date replyTime;//回复时间
	
	@Column(name="reply_content")
	private String replyContent;//回复内容
	
	@Column(name="reply_userid")
	private Integer userId;//回复人

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
	 * @return the commentTime
	 */
	public Date getCommentTime() {
		return commentTime;
	}

	/**
	 * @param commentTime 要设置的 commentTime
	 */
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	/**
	 * @return the commentContent
	 */
	public String getCommentContent() {
		return commentContent;
	}

	/**
	 * @param commentContent 要设置的 commentContent
	 */
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	/**
	 * @return the ip
	 */
	public String getIp() {
		return ip;
	}

	/**
	 * @param ip 要设置的 ip
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}

	/**
	 * @return the isExamine
	 */
	public String getIsExamine() {
		return isExamine;
	}

	/**
	 * @param isExamine 要设置的 isExamine
	 */
	public void setIsExamine(String isExamine) {
		this.isExamine = isExamine;
	}

	/**
	 * @return the replyTime
	 */
	public Date getReplyTime() {
		return replyTime;
	}

	/**
	 * @param replyTime 要设置的 replyTime
	 */
	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
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
	 * @return the contId
	 */
	public Integer getContId() {
		return contId;
	}

	/**
	 * @param contId 要设置的 contId
	 */
	public void setContId(Integer contId) {
		this.contId = contId;
	}
	
	
	
	
	
	
	
	
}

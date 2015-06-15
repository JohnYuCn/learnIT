/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-10-13 上午10:30:41
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;



/**
 * @ClassName: Comment
 * @Description:评论表对应的实体类
 * @author sunJingYang
 * @date 2014-10-13 上午10:30:41
 * 
 */
@Entity
@Table(name="tvcms_comment")
public class Comment implements Serializable{
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="评论";//类的注释
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id")
	private Integer id; //主键Id
	
	@Column
	private String title;//标题
	
	@Column
	private String content;//内容
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "member_id")
	private Member member;//会员id 为空时为匿名
	
	@Column(name="is_examine")
	private Integer isExamine;//是否通过审核1==通过 2或null==未通过
	
    @Column(name="review_time")
    private Date reviewTime;//评论时间 
    
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
	 * @return the reviewTime
	 */
	public Date getReviewTime() {
		return reviewTime;
	}

	/**
	 * @param reviewTime 要设置的 reviewTime
	 */
	public void setReviewTime(Date reviewTime) {
		this.reviewTime = reviewTime;
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
	 * @return the member
	 */
	public Member getMember() {
		return member;
	}

	/**
	 * @param member 要设置的 member
	 */
	public void setMember(Member member) {
		this.member = member;
	}
	

}

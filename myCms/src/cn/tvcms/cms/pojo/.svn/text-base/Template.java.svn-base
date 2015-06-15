/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
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
 * 模板实体类
 * @author suntao
 * @version create time：2014年6月22日  下午1:34:23
 *
 */
@Entity
@Table(name = "tvcms_template")
public class Template implements Serializable {
	@Transient
	private  String classNotes="模板";//类的注释
	
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id ;
	
	@Column(name="template_name")
	private String templateName;//模板名称
	
	@Column(name="catalog_id")
	private Integer catalogId;//目录ID
	
	@Column(name="record_two_time")//第二次修改时间
	private Date recordTwoTime;
	
	@Column(name="record_one_time")//第一次修改时间
	private Date recordOneTime;
	
	@Column(name="record_two_content")//第二次修改内容
	private String recordTwoContent;
	
	@Column(name="record_one_content")//第一次修改内容
	private String recordOneContent;
	
	@Column(name="filename")
	private String filename;//文件名
	
	@Column(name="var_name")
	private String varName;//变量名
	

	
	@Column(name="template_content")
	private String templateContent;//模板内容
	
	@Column(name="manageid")
	private Integer manageid;//管理分类id
	
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

	public String getTemplateName() {
		return templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}

	public Integer getCatalogId() {
		return catalogId;
	}

	public void setCatalogId(Integer catalogId) {
		this.catalogId = catalogId;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public String getVarName() {
		return varName;
	}

	public void setVarName(String varName) {
		this.varName = varName;
	}

	public String getTemplateContent() {
		return templateContent;
	}

	public void setTemplateContent(String templateContent) {
		this.templateContent = templateContent;
	}

	public Integer getManageid() {
		return manageid;
	}

	public void setManageid(Integer manageid) {
		this.manageid = manageid;
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

	/**
	 * @return the recordTwoTime
	 */
	public Date getRecordTwoTime() {
		return recordTwoTime;
	}

	/**
	 * @param recordTwoTime 要设置的 recordTwoTime
	 */
	public void setRecordTwoTime(Date recordTwoTime) {
		this.recordTwoTime = recordTwoTime;
	}

	/**
	 * @return the recordOneTime
	 */
	public Date getRecordOneTime() {
		return recordOneTime;
	}

	/**
	 * @param recordOneTime 要设置的 recordOneTime
	 */
	public void setRecordOneTime(Date recordOneTime) {
		this.recordOneTime = recordOneTime;
	}

	/**
	 * @return the recordTwoContent
	 */
	public String getRecordTwoContent() {
		return recordTwoContent;
	}

	/**
	 * @param recordTwoContent 要设置的 recordTwoContent
	 */
	public void setRecordTwoContent(String recordTwoContent) {
		this.recordTwoContent = recordTwoContent;
	}

	/**
	 * @return the recordOneContent
	 */
	public String getRecordOneContent() {
		return recordOneContent;
	}

	/**
	 * @param recordOneContent 要设置的 recordOneContent
	 */
	public void setRecordOneContent(String recordOneContent) {
		this.recordOneContent = recordOneContent;
	}



	/**
	 * @param classNotes 要设置的 classNotes
	 */
	public void setClassNotes(String classNotes) {
		this.classNotes = classNotes;
	}


	

}

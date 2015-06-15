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
 * 栏目实体类。
 * @author xurannan
 */
@Entity
@Table(name = "tvcms_column")
public class TvcmsColumn implements Serializable {
	@Transient
	private  String classNotes="栏目";//类的注释

	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	private static final long serialVersionUID = 1L;
    
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;//主键ID
	
	@Column(name = "column_name")
	private String columnname;//栏目名称
	
	@Column(name = "bclassid")
	private Integer bclassId;//上级栏目ID
	
	@Column
	private String parent;//上级目录
	
	@Column
	private String thumbnail;//栏目缩略图
	
	@Column
	private Integer sort;//排序
	
	@Column
	private String title;//栏目标题
	
	@Column(name = "keywords")
	private String keyWords;//栏目关键词
	
	@Column(name = "description")
	private String descriPtion;//栏目描述
	
	@Column(name="column_type")
	private String columnType;//栏目类型
	
	@Column(name="column_url")
	private String columnurl;//外部栏目URL
	
	@Column(name="file_save")
	private String fileSave;//栏目保存目录
	
	@Column(name="is_nav")
	private String isnav;//是否显示到导航
	
	@Column(name="access_rights")
	private String accessRights;//栏目访问权限
	
	@Column(name="template_style")
	private String templateStyle;//模板风格
	
	@Column(name="index_style")
	private String indexStyle;//栏目首页模板
	
	@Column(name="list_style")
	private String listStyle;//栏目列表页模板
	
	@Column(name="cont_style")
	private String contStyle;//栏目内容页模板
	
	@Column(name="is_deleted")
	private Integer isDeleted;//删除标识
	
	@Column(name="create_user_id")
	private Integer createUserId;//创建用户
	
	@Column(name="create_time")
	private Date createTime;//创建时间
	
	@Column(name="modify_user_id")
	private Date modifyUserId;//修改用户
	
	@Column(name="modify_time")
	private Date modifyTime;//修改时间
	
	@Column(name="delete_user_id")
	private Integer deleteUserId;//删除用户
	
	@Column(name="delete_time")
	private Date deleteTime;//删除时间

	@Column(name="hidden")
	private Integer isHidden;//是否显示栏目
	/**
	 * @return the isHidden
	 */
	public Integer getIsHidden() {
		return isHidden;
	}

	/**
	 * @param isHidden 要设置的 isHidden
	 */
	public void setIsHidden(Integer isHidden) {
		this.isHidden = isHidden;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getColumnname() {
		return columnname;
	}

	public void setColumnname(String columnname) {
		this.columnname = columnname;
	}

	public Integer getBclassId() {
		return bclassId;
	}

	public void setBclassId(Integer bclassId) {
		this.bclassId = bclassId;
	}
	
	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}

	public String getDescriPtion() {
		return descriPtion;
	}

	public void setDescriPtion(String descriPtion) {
		this.descriPtion = descriPtion;
	}

	public String getColumnType() {
		return columnType;
	}

	public void setColumnType(String columnType) {
		this.columnType = columnType;
	}

	public String getColumnurl() {
		return columnurl;
	}

	public void setColumnurl(String columnurl) {
		this.columnurl = columnurl;
	}

	public String getFileSave() {
		return fileSave;
	}

	public void setFileSave(String fileSave) {
		this.fileSave = fileSave;
	}

	public String getIsnav() {
		return isnav;
	}

	public void setIsnav(String isnav) {
		this.isnav = isnav;
	}

	public String getAccessRights() {
		return accessRights;
	}

	public void setAccessRights(String accessRights) {
		this.accessRights = accessRights;
	}

	public String getTemplateStyle() {
		return templateStyle;
	}

	public void setTemplateStyle(String templateStyle) {
		this.templateStyle = templateStyle;
	}

	public String getIndexStyle() {
		return indexStyle;
	}

	public void setIndexStyle(String indexStyle) {
		this.indexStyle = indexStyle;
	}

	public String getListStyle() {
		return listStyle;
	}

	public void setListStyle(String listStyle) {
		this.listStyle = listStyle;
	}

	public String getContStyle() {
		return contStyle;
	}

	public void setContStyle(String contStyle) {
		this.contStyle = contStyle;
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

	public Date getModifyUserId() {
		return modifyUserId;
	}

	public void setModifyUserId(Date modifyUserId) {
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

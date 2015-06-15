/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-26 下午12:15:54
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: ServicesCategory
 * @Description: 服务项目表
 * @author sunJingYang
 * @date 2014-9-26 下午12:15:54
 * 
 */
@Entity
@Table(name="services_category")
public class ServicesCategory implements Serializable {
	@Transient
	private  String classNotes="服务项目";//类的注释

	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;//主键ID
	
	@Column(name="reference_value")
	private String referenceValue;//参考值
	
	@Column
	private String unit;//单位
	


	@Column(name="superior_id")
	private Integer superiorId;//父项目ID
	
	@Column(name="items_name")
	private String itemsName;//项目名称
	
	@Column(name="en_items_name")
	private String enItemsName;//项目英文名称
	
	@Column
	private String description;//描述
	
	@Column(name="en_description")
	private String enDescription;//英文描述
	
	@Column
	private String price;//价格
	
	@Column
	private String code;//代码项
	
	@Transient
	private List<ServicesCategory> list;//存放此目录的下级目录
	

	@Column
	private Integer type;//服务项目类型 1==套餐服务
	


	@Column(name="is_deleted")
	private Integer isDeleted;//删除标识
	
	@Column(name="create_user_id")
	private Integer createId;//创建用户
	
	@Column(name="create_time")
	private Date createTime;//创建时间
	
	@Column(name="modify_user_id")
	private Integer modifyId;//修改用户
	
	@Column(name="modify_time")
	private Date modifyTime;//修改时间
	
	@Column(name="delete_user_id")
	private Integer deleteId;//删除用户
	
	@Column(name="delete_time")
	private Date deleteTime;//删除时间
	
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
	 * @return the superiorId
	 */
	public Integer getSuperiorId() {
		return superiorId;
	}

	/**
	 * @param superiorId 要设置的 superiorId
	 */
	public void setSuperiorId(Integer superiorId) {
		this.superiorId = superiorId;
	}

	/**
	 * @return the itemsName
	 */
	public String getItemsName() {
		return itemsName;
	}

	/**
	 * @param itemsName 要设置的 itemsName
	 */
	public void setItemsName(String itemsName) {
		this.itemsName = itemsName;
	}

	/**
	 * @return the enItemsName
	 */
	public String getEnItemsName() {
		return enItemsName;
	}

	/**
	 * @param enItemsName 要设置的 enItemsName
	 */
	public void setEnItemsName(String enItemsName) {
		this.enItemsName = enItemsName;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description 要设置的 description
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the enDescription
	 */
	public String getEnDescription() {
		return enDescription;
	}

	/**
	 * @param enDescription 要设置的 enDescription
	 */
	public void setEnDescription(String enDescription) {
		this.enDescription = enDescription;
	}

	/**
	 * @return the price
	 */
	public String getPrice() {
		return price;
	}

	/**
	 * @param price 要设置的 price
	 */
	public void setPrice(String price) {
		this.price = price;
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
	 * @return the createId
	 */
	public Integer getCreateId() {
		return createId;
	}

	/**
	 * @param createId 要设置的 createId
	 */
	public void setCreateId(Integer createId) {
		this.createId = createId;
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
	 * @return the modifyId
	 */
	public Integer getModifyId() {
		return modifyId;
	}

	/**
	 * @param modifyId 要设置的 modifyId
	 */
	public void setModifyId(Integer modifyId) {
		this.modifyId = modifyId;
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
	 * @return the deleteId
	 */
	public Integer getDeleteId() {
		return deleteId;
	}

	/**
	 * @param deleteId 要设置的 deleteId
	 */
	public void setDeleteId(Integer deleteId) {
		this.deleteId = deleteId;
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
	 * @return the referenceValue
	 */
	public String getReferenceValue() {
		return referenceValue;
	}

	/**
	 * @param referenceValue 要设置的 referenceValue
	 */
	public void setReferenceValue(String referenceValue) {
		this.referenceValue = referenceValue;
	}

	/**
	 * @return the list
	 */
	public List<ServicesCategory> getList() {
		return list;
	}

	/**
	 * @param list 要设置的 list
	 */
	public void setList(List<ServicesCategory> list) {
		this.list = list;
	}

	/**
	 * @return the unit
	 */
	public String getUnit() {
		return unit;
	}

	/**
	 * @param unit 要设置的 unit
	 */
	public void setUnit(String unit) {
		this.unit = unit;
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
	 * @return the type
	 */
	public Integer getType() {
		return type;
	}

	/**
	 * @param type 要设置的 type
	 */
	public void setType(Integer type) {
		this.type = type;
	}

	
}

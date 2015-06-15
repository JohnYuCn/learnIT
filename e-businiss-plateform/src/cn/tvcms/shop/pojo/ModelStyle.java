/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-19 下午05:04:38
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import javax.persistence.Entity;

/**
 * @ClassName: MoldStyle
 * @Description: 商城商品的属性
 * @author miaoxiaochen
 * @date 2014-12-19 下午05:04:38
 * 
 */
@Entity
@Table(name="shop_modelstyle")
public class ModelStyle implements Serializable{
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="商城商品的属性";//类的注释
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	/**
	 * 名称
	 */
	private String name;
	/**
	 * 商品类型ID
	 */
	private int pmdID;
	/**
	 * 写入方式
	 */
	private int msMethods;
	/**
	 * 可选值
	 */
	private String msValue;
	@Transient
	private List<String> strings;
	private String addDate;
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
	public int getId() {
		return id;
	}
	/**
	 * @param id 要设置的 id
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name 要设置的 name
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the pmdID
	 */
	public int getPmdID() {
		return pmdID;
	}
	/**
	 * @param pmdID 要设置的 pmdID
	 */
	public void setPmdID(int pmdID) {
		this.pmdID = pmdID;
	}
	/**
	 * @return the msMethods
	 */
	public int getMsMethods() {
		return msMethods;
	}
	/**
	 * @param msMethods 要设置的 msMethods
	 */
	public void setMsMethods(int msMethods) {
		this.msMethods = msMethods;
	}
	/**
	 * @return the msValue
	 */
	public String getMsValue() {
		return msValue;
	}
	/**
	 * @param msValue 要设置的 msValue
	 */
	
	public void setMsValue(String msValue) {
		this.msValue = msValue;
	}
	/**
	 * @return the addDate
	 */
	public String getAddDate() {
		return addDate;
	}
	/**
	 * @param addDate 要设置的 addDate
	 */
	public void setAddDate(String addDate) {
		this.addDate = addDate;
	}
	
	/**
	 * @return the strings
	 */
	public List<String> getStrings() {
		if(null==msValue||"".equals(msValue)){
			return strings;
		}else{
			String[] split = msValue.split("&");
			strings=new ArrayList<String>();
			 for (String string : split) {
				 strings.add(string); 
			}
			 return strings;
		}
		
	}
	/**
	 * @param strings 要设置的 strings
	 */
	public void setStrings(List<String> strings) {
		this.strings = strings;
	}
	/* (非 Javadoc)
	 * <p>Title: toString</p>
	 * <p>Description: </p>
	 * @author miaoxiaochen
	 * @return
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "MoldStyle [addDate=" + addDate + ", classNotes=" + classNotes
				+ ", id=" + id + ", msMethods=" + msMethods + ", msValue="
				+ msValue + ", name=" + name + ", pmdID=" + pmdID + "]";
	}
	
	
}

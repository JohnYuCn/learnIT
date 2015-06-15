/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2015-1-13 上午11:47:06
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: ProAttScreen
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2015-1-13 上午11:47:06
 * 
 */
@Entity
@Table(name="shop_proattscreen")
public class ProAttScreen implements Serializable{
	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;

	@Transient
	private  String classNotes="商品分类下商品类型属性检索";//类的注释

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pacID;
	/**
	 * 商品分类ID
	 */
	private int pcsID;
	/**
	 * 商品类型ID
	 */
	private int pmdID;
	/**
	 * 商品类型属性ID
	 */
	private int msID;
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
	 * @return the pacID
	 */
	public int getPacID() {
		return pacID;
	}
	/**
	 * @param pacID 要设置的 pacID
	 */
	public void setPacID(int pacID) {
		this.pacID = pacID;
	}
	/**
	 * @return the pcsID
	 */
	public int getPcsID() {
		return pcsID;
	}
	/**
	 * @param pcsID 要设置的 pcsID
	 */
	public void setPcsID(int pcsID) {
		this.pcsID = pcsID;
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
	 * @return the msID
	 */
	public int getMsID() {
		return msID;
	}
	/**
	 * @param msID 要设置的 msID
	 */
	public void setMsID(int msID) {
		this.msID = msID;
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
		return "ProAttScreen [classNotes=" + classNotes + ", msID=" + msID
				+ ", pacID=" + pacID + ", pcsID=" + pcsID + ", pmdID=" + pmdID
				+ "]";
	}
	
	
	
}

/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-22 下午03:44:42
 * @version V1.0
 */
package cn.tvcms.shop.pojo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: ProductMold
 * @Description: 商品类型
 * @author miaoxiaochen
 * @date 2014-12-22 下午03:44:42
 * 
 */
@Entity
@Table(name="shop_productmodel")
public class ProductModel  implements Serializable{

	/** 
	 * @Fields 11111serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */ 
	private static final long serialVersionUID = 1L;

	@Transient
	private String classNotes="商品类型";//类的注释
	/**
	 * 主键
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pmdID; 
	/**
	 * 名称
	 */
	private String name;
	/**
	 * 总属性数
	 */
	private int styleCount;
	/**
	 * 添加修改时间
	 */
	private String addDate;
	@Transient
	private List<ModelStyle> moldStyles;
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
	 * @return the styleCount
	 */
	public int getStyleCount() {
		return styleCount;
	}
	/**
	 * @param styleCount 要设置的 styleCount
	 */
	public void setStyleCount(int styleCount) {
		this.styleCount = styleCount;
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
	 * @return the moldStyles
	 */
	public List<ModelStyle> getMoldStyles() {
		return moldStyles;
	}
	/**
	 * @param moldStyles 要设置的 moldStyles
	 */
	public void setMoldStyles(List<ModelStyle> moldStyles) {
		this.moldStyles = moldStyles;
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
		return "ProductMold [addDate=" + addDate + ", classNotes=" + classNotes
				+ ", moldStyles=" + moldStyles + ", name=" + name + ", pmdID="
				+ pmdID + ", styleCount=" + styleCount + "]";
	}
	
	
}

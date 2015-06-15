/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-10-6 下午12:53:50
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

/**
 * @ClassName: columnAttributeMapping
 * @Description: 数据库表中字段与实体类属性
 * @author sunJingYang
 * @date 2014-10-6 下午12:53:50
 * 
 */
public class columnAttributeMapping {
	private String columnName;//列名
	private String attributeName;//属性名
	private String columnType;//列类型
	private String attributeType;//属性类型
	private String tableName;//表名
	private String className;//类名
	private int columnSize;//列长度
	private String remarks;//注释
	private int isNull;//是否允许为空
	private String columnDef;//列默认值
	/**
	 * @return the columnName
	 */
	public String getColumnName() {
		return columnName;
	}
	/**
	 * @param columnName 要设置的 columnName
	 */
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	/**
	 * @return the attributeName
	 */
	public String getAttributeName() {
		return attributeName;
	}
	/**
	 * @param attributeName 要设置的 attributeName
	 */
	public void setAttributeName(String attributeName) {
		this.attributeName = attributeName;
	}
	/**
	 * @return the columnType
	 */
	public String getColumnType() {
		return columnType;
	}
	/**
	 * @param columnType 要设置的 columnType
	 */
	public void setColumnType(String columnType) {
		this.columnType = columnType;
	}
	/**
	 * @return the attributeType
	 */
	public String getAttributeType() {
		return attributeType;
	}
	/**
	 * @param attributeType 要设置的 attributeType
	 */
	public void setAttributeType(String attributeType) {
		this.attributeType = attributeType;
	}
	/**
	 * @return the tableName
	 */
	public String getTableName() {
		return tableName;
	}
	/**
	 * @param tableName 要设置的 tableName
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	/**
	 * @return the className
	 */
	public String getClassName() {
		return className;
	}
	/**
	 * @param className 要设置的 className
	 */
	public void setClassName(String className) {
		this.className = className;
	}
	/**
	 * @return the columnSize
	 */
	public int getColumnSize() {
		return columnSize;
	}
	/**
	 * @param columnSize 要设置的 columnSize
	 */
	public void setColumnSize(int columnSize) {
		this.columnSize = columnSize;
	}
	/**
	 * @return the remarks
	 */
	public String getRemarks() {
		return remarks;
	}
	/**
	 * @param remarks 要设置的 remarks
	 */
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	/**
	 * @return the isNull
	 */
	public int getIsNull() {
		return isNull;
	}
	/**
	 * @param isNull 要设置的 isNull
	 */
	public void setIsNull(int isNull) {
		this.isNull = isNull;
	}
	/**
	 * @return the columnDef
	 */
	public String getColumnDef() {
		return columnDef;
	}
	/**
	 * @param columnDef 要设置的 columnDef
	 */
	public void setColumnDef(String columnDef) {
		this.columnDef = columnDef;
	}

}

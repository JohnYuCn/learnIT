/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-11-3 上午10:05:10
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

/**
 * @ClassName: TableClassMapping
 * @Description: 数据库表与实体类的映射关系实体类
 * @author sunjinyang
 * @date 2014-11-3 上午10:05:10
 * 
 */
public class TableClassMapping {
	private String tableName;//表名
	private String className;//类名
	private String explain;//说明
	private String primaryKey;//主键


	/**
	 * @return the primaryKey
	 */
	public String getPrimaryKey() {
		return primaryKey;
	}
	/**
	 * @param primaryKey 要设置的 primaryKey
	 */
	public void setPrimaryKey(String primaryKey) {
		this.primaryKey = primaryKey;
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
	 * @return the explain
	 */
	public String getExplain() {
		return explain;
	}
	/**
	 * @param explain 要设置的 explain
	 */
	public void setExplain(String explain) {
		this.explain = explain;
	}
}

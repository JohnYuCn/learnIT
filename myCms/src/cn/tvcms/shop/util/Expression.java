/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-26 下午02:33:58
 * @version V1.0
 */
package cn.tvcms.shop.util;

/**
 * @ClassName: Expression
 * @Description: sql 表达式
 * @author miaoxiaochen
 * @date 2014-12-26 下午02:33:58
 * 
 */
public class Expression {
	private String name; // 名称
	private String operator; // 操作符
	private Object value; // 值
	private String connector;//连接符 第一个连接符无效

	public Expression() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getConnector() {
		return connector;
	}
	public void setConnector(String connector) {
		this.connector = connector;
	}
	public Expression(String name, String operator, Object value) {
		super();
		this.name = name;
		this.operator = operator;
		this.value = value;
	}
	public Expression(String name, String operator, Object value,String connector) {
		super();
		this.name = name;
		this.operator = operator;
		this.value = value;
		this.connector=connector;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public Object getValue() {
		return value;
	}

	public void setValue(Object value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "Expression [name=" + name + ", operator=" + operator
				+ ", value=" + value + "]";
	}

}

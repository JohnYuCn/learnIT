/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-29 下午01:40:49
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: Author
 * @Description: 实体类  信息来源
 * @author lianpeng
 * 
 */
@Entity
@Table(name = "tvcms_source")
public class Source  implements Serializable{

	private static final long serialVersionUID = 1L;
	@Transient
	private  String classNotes="信息来源";//类的注释

	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;// 主键ID
	
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
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Column
	private String name;
	
}

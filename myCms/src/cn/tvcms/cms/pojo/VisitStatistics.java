/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author wangChuang
 * @date 2015-4-17 下午04:10:13
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

import org.hibernate.annotations.GenericGenerator;

/**
 * @ClassName: VisitStatistics
 * @Description: TODO(访问统计)
 * @author wangChuang
 * @date 2015-4-17 下午04:10:13
 * 
 */
@Entity
@Table( name="tvcms_visit_statistics" )
public class VisitStatistics implements Serializable{
	@Transient
	private  String classNotes="用户iP访问记录";//类的注释
	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String  id;// 主键ID
	
	@Column( name="ip" )
	private String ip;
	
	@Column(name = "time")
	private Date time;// 创建时间
	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id 要设置的 id
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the ip
	 */
	public String getIp() {
		return ip;
	}

	/**
	 * @param ip 要设置的 ip
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}

	/**
	 * @return the time
	 */
	public Date getTime() {
		return time;
	}

	/**
	 * @param time 要设置的 time
	 */
	public void setTime(Date time) {
		this.time = time;
	}

	
}

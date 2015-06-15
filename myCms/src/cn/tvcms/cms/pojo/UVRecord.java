/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lp
 * @date 2014-12-11 下午09:52:49
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

/**
 * @ClassName: UVRecord
 * @Description: uv实体
 * @author lp
 * @date 2014-12-11 下午09:52:49
 * 
 */
/**
 * @ClassName: UVRecord
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author lp
 * @date 2014-12-11 下午10:22:27
 * 
 */
@Entity
@Table( name="tvcms_uv_ip_record" )
public class UVRecord implements Serializable{
	
	@Transient
	private  String classNotes="用户iP记录";//类的注释

	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
    @GeneratedValue(generator="systemUUID")
	private String  id;// 主键ID

	@Column( name="user_ip" )
	private String userIp;
	
	@Column( name="cont_id" )
	private Integer contId;
	
	@Column( name="visit_time" )
	private Integer visitTime;

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
	 * @return the userIp
	 */
	public String getUserIp() {
		return userIp;
	}

	/**
	 * @param userIp 要设置的 userIp
	 */
	public void setUserIp(String userIp) {
		this.userIp = userIp;
	}

	/**
	 * @return the contId
	 */
	public Integer getContId() {
		return contId;
	}

	/**
	 * @param contId 要设置的 contId
	 */
	public void setContId(Integer contId) {
		this.contId = contId;
	}

	/**
	 * @return the visitTime
	 */
	public Integer getVisitTime() {
		return visitTime;
	}

	/**
	 * @param visitTime 要设置的 visitTime
	 */
	public void setVisitTime(Integer visitTime) {
		this.visitTime = visitTime;
	}

	
	
}

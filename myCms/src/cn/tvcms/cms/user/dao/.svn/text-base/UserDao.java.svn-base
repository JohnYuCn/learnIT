/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-8-10 下午12:40:24
 * @version V1.0
 */
package cn.tvcms.cms.user.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.User;

/**
 * @ClassName: UserDao
 * @Description: 用户dao
 * @author lianpeng
 * @date 2014-8-10 下午12:40:24
 * 
 */
@Repository
public class UserDao {

	@Autowired
	private CommonDao  cmd;
	/**
	 * @return the cmd
	 */
	public CommonDao getCmd() {
		return cmd;
	}
	/**
	 * @param cmd 要设置的 cmd
	 */
	public void setCmd(CommonDao cmd) {
		this.cmd = cmd;
	}
	
	@SuppressWarnings("unchecked")
	public List<User> getUser(String userName){
		String hql = " from User where username = '"+userName+"'";
		List  list = cmd.queryHQL(hql);
		return list;
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Object> getPersion(){
		String hql = "select id,name from Author";
		List  list = cmd.queryHQL(hql);
		return list;
	}
}

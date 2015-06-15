/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-10-12 下午09:50:04
 * @version V1.0
 */
package cn.tvcms.cms.login.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.tvcms.cms.common.dao.CommonDao;

/**
 * @ClassName: LoginDao
 * @Description: 登陆
 * @author lianpeng
 * @date 2014-10-12 下午09:50:04
 * 
 */
@Repository
public class LoginDao {

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
	public List findLoginLog(Date beginLoginTime,String userName,Date lastLoginTime){
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String hql = "from UserLoginLog where userName ='"+userName+"' and loginState = 3 and loginTime between" +
				" '"+df.format(beginLoginTime)+"' and '"+df.format(lastLoginTime)+"' ";
		List  list = cmd.queryHQL(hql);
		return list;
	}
}

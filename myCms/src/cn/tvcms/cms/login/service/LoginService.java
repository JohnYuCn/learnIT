/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author: xurannan
 * @version V1.0
 */
package cn.tvcms.cms.login.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.login.dao.LoginDao;
import cn.tvcms.cms.pojo.User;
import cn.tvcms.cms.pojo.UserLoginLog;
import cn.tvcms.cms.pojo.UserSet;

/** 
 *
 * @author xurannan 
 * @version create time：2014年5月18日 下午5:23:50 
 * 
 */
@Service
public class LoginService {

	@Autowired
	private CommonDao commonDao;
	
	@Autowired
	private LoginDao loginDao;
	
	public boolean checkUser(String username, String password) {
		
		return true;
	}
	
	/**
	 * 后台登录校验
	 * @author xurannan
	 * 2014年6月1日 下午2:30:44
	 */
	@SuppressWarnings("unchecked")
	public List doLogin(String username,String password){
		String hql = "from User where userName='"+username+"' and password='"+password+"' ";
		List list = commonDao.queryHQL(hql);
		return list;
	}
	/**
	 * @Title: isExist
	 * @Description: 验证帐号是否存在
	 * @author sunJingYang
	 * @date 2014-9-22 下午03:24:17
	 * @param username
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public boolean isExist(String username){
		String hql="from User where userName='"+username+"' ";
		List list=commonDao.queryHQL(hql);
		if(list.size()<1){
			return false;
		}
		return true;
	}
	
	/**
	 * 后台用户登录次数查询
	 * @author xurannan
	 * 2014年6月8日 下午11:41:37
	 */
	@SuppressWarnings("unchecked")
	public List findloginTimes(Integer id){
		String sql = "select login_times from tvcms_user where id = '"+id+"'";
		List list = commonDao.querySQL(sql);
		return list;
	}
	
	/**
	 * 登录后更新用户信息
	 * @author xurannan
	 * 2014年6月20日 下午23:19:15
	 */
	public void updateAdminUser(User user){
		//String sql ="update tvcms_user set login_times=";
		commonDao.update(user);
	}
	
	@Transactional(readOnly=false, propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void save(User user) {
		commonDao.save(user);
	}
	
	/**
	 * 根据ID查询实体对象 
	 * @author xurannan
	 * 2014年6月22日 下午2:40:10
	 */
	public User findByid(Integer id){
		User user = commonDao.findById(User.class, id);
		return user;
	}
	
	/**
	 * @Title: save
	 * @Description: 保存系统用户登录日志
	 * @author xurannan
	 * @date 2014年9月20日 下午6:18:39
	 * @param user
	 */
	@Transactional(readOnly=false, propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void save(UserLoginLog userloginlog) {
		commonDao.save(userloginlog);
	}
	
	/**
	 * @Title: loginVerify
	 * @Description: 判断是否符合登陆
	 * @author lianpeng
	 * @date 2014-10-12 下午10:12:08
	 * @param userName
	 * @return 返回0是符合  不等于0是需要多长时间后在进行登陆
	 * @throws Exception 
	 */
	@SuppressWarnings("unchecked")
	public Integer loginVerify(String userName) throws Exception{
		List<UserSet> list = commonDao.findAll(UserSet.class);
		Integer errorLoginNum = 0;
		Integer lastLoginTime = 0;
		if(list != null && !list.isEmpty()){
			UserSet userset = list.get(0);
			errorLoginNum = userset.getLoginFre();
			lastLoginTime = userset.getLoginTime();
			//判读是否符合登陆条件
			Date d=new Date();  
			SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String  lastLogin =  df.format(new Date(d.getTime() - lastLoginTime * 60 * 1000));
			//Date d1 = df.parse(lastLogin);
			String newdate = DateTools.getStandSystemDate();
			List errList = loginDao.findLoginLog(DateTools.getDateTime(lastLogin) , userName,DateTools.getDateTime(newdate));
			if(errorLoginNum >= errList.size()){
				return 0;
			}
		}
		return lastLoginTime;
	}
	
	/**
	 * @Title: usergroup
	 * @Description: 根据用户ID查询所在用户组
	 * @author xurannan
	 * @date 2014-10-18 下午01:33:44
	 * @param userid
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String usergroup(String userid)throws Exception{
		String sql="select u.userGroup.name from User u where u.id='"+userid+"'";
		List list =commonDao.queryHQL(sql);
		return list.size()>0 ? list.get(0).toString() : null;
	}

}

/**
 * Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
 * @version V1.0
 */
package cn.tvcms.cms.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.User;
import cn.tvcms.cms.user.dao.UserDao;

/**
 * 用户service
 * @author lianpeng
 * @version 1.0
 *
 */
@Service
public class UserService {
	
	@Autowired
	private CommonDao comm;
	
	@Autowired
	private UserDao  ud;	
	
	/**
	 * 保存和修改用户
	 * @author lianpeng
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void saveUser(User user){
		comm.saveOrUpdate(user);
	}
	
	
	/**
	 * @Title: getUser
	 * @Description: 判读用户名
	 * @author lianpeng
	 * @date 2014-8-10 下午03:25:35
	 * @param userName
	 * @param id
	 * @return
	 */
	public Boolean getUser(String userName,String id){
		List<User> list = ud.getUser(userName);
		if(!"0".equals(id)){
			if(list.size()>1){
				return false;
			}
		}else{
			if(list.size()>0){
				return false;
			}
		}
		return true;
	}
	
	/**
	 * 查询用户
	 * @return list<User>
	 * @author lianpeng
	 */
	@Transactional(readOnly=true, propagation=Propagation.REQUIRED)
	public List<User> findAll(){
		return comm.findAll(User.class);
	}
	
	/**
	 * 根据id查询用户
	 * @param user
	 * @author lianpeng
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public User findIdUser(Integer id){
		return comm.findById(User.class, id);
	}
	
	/**
	 * 删除用户
	 * @param user
	 * @author lianpeng
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void deleteUser(User user){
		comm.delete(user);
	}

	/**
	 * 
	 * @Title: delete
	 * @Description: TODO删除登录日志
	 * @author sunJingYang
	 * @date 2014-9-23 上午10:06:52
	 * @param ids
	 */
	@Transactional
	public void delete(String ids){
		String hql="delete from UserLoginLog where id in ("+ids+")";
		comm.executeHQL(hql);
	
	}
	

	
}

/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.system.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.SystemPower;
import cn.tvcms.cms.pojo.User;
import cn.tvcms.cms.user.service.UserService;

/** 
 *
 * @author suntao 
 * @version create time：2014年6月1日 下午1:05:11 
 * 
 */
@Service
public class SystemPowerService {
	@Autowired
	private CommonDao commonDao;
	
	@Autowired
	private UserService userService;
	
	
	/**
	 * 最后一次对权限添加、修改、删除的时间。
	 */
	private long operTime = 0L;
	
	/**
	 * 查询权限数据。
	 * @param parentId 父功能ID
	 * @author suntao
	 * 2014年6月1日 下午1:20:01
	 */
	@Transactional(readOnly=true, propagation=Propagation.REQUIRED)
	public List<SystemPower> findPower(Integer userId, Integer parentId) throws Exception {
		if (userId == null) {
			return new ArrayList<SystemPower>();
		}
		User user = userService.findIdUser(userId);
		if ((user == null || user.getUserGroup() == null) && userId != 1) {
			return new ArrayList<SystemPower>();
		}
		
		
		
		Criteria criteria = commonDao.createCriteria(SystemPower.class);
		criteria.add(Restrictions.eq("isDeleted", 0));
		if (parentId == null) {
			criteria.add(Restrictions.isNull("parentId"));
		} else {
			criteria.add(Restrictions.eq("parentId", parentId));
		}
		
		if(userId != 1){
			// 加上权限控制
			criteria.add(Restrictions.sqlRestriction(" exists (select * from tvcms_user_group_power where power_id=this_.id and group_id=" + user.getUserGroup().getId() + ")"));
		}
		
		criteria.addOrder(Order.asc("sort"));
		return commonDao.findByCriteria(SystemPower.class, criteria);
	}
	
	/**
	 * 查询权限数据，此方法可以查询多个功能下的子功能。
	 * 
	 * @param userId
	 * @param list 
	 * @author suntao
	 * 2014年6月1日 下午2:05:30
	 */
	public List<SystemPower> findPowerMulti(Integer userId, List<SystemPower> list) throws Exception {
		if (list == null || list.size() == 0) {
			return new ArrayList<SystemPower>();
		}
		
		if (userId == null) {
			return new ArrayList<SystemPower>();
		}
		User user = userService.findIdUser(userId);
		if ((user == null || user.getUserGroup() == null) && userId != 1) {
			return new ArrayList<SystemPower>();
		}
		
		Criteria criteria = commonDao.createCriteria(SystemPower.class);
		criteria.add(Restrictions.eq("isDeleted", 0));
		Integer[] idArr = new Integer[list.size()];
		int i = 0;
		for (SystemPower power : list) {
			idArr[i++] = power.getId();
		}
		criteria.add(Restrictions.in("parentId", idArr));
		
		if(userId != 1){
			// 加上权限控制
			criteria.add(Restrictions.sqlRestriction(" exists (select * from tvcms_user_group_power where power_id=this_.id and group_id=" + user.getUserGroup().getId() + ")"));
		}
		
		criteria.addOrder(Order.asc("sort"));
		return commonDao.findByCriteria(SystemPower.class, criteria);
	}
	
	/**
	 * 查询用户所有的权限数据。
	 * @Title: findUserAllPower
	 * @Description: 查询用户所有的权限数据。
	 * @author suntao
	 * @date 2014-9-6 下午03:08:50
	 * @param userId
	 * @return
	 */
	public List<SystemPower> findUserAllPower(Integer userId) {
		if (userId == null) {
			return new ArrayList<SystemPower>();
		}
		User user = userService.findIdUser(userId);
		if ((user == null || user.getUserGroup() == null) && userId != 1) {
			return new ArrayList<SystemPower>();
		}
		
		Criteria criteria = commonDao.createCriteria(SystemPower.class);
		criteria.add(Restrictions.eq("isDeleted", 0));
		if(userId != 1){
			// 加上权限控制
			criteria.add(Restrictions.sqlRestriction(" exists (select * from tvcms_user_group_power where power_id=this_.id and group_id=" + user.getUserGroup().getId() + ")"));
		}
		
		criteria.addOrder(Order.asc("sort"));
		return commonDao.findByCriteria(SystemPower.class, criteria);
	}
	
	/**
	 * 查询所有数据。
	 *
	 * @author suntao
	 * 2014-6-11 下午9:27:30
	 */
	public List<SystemPower> findAll() throws Exception {
		Criteria criteria = commonDao.createCriteria(SystemPower.class);
		criteria.add(Restrictions.eq("isDeleted", 0));
		criteria.addOrder(Order.asc("sort"));
		return commonDao.findByCriteria(SystemPower.class, criteria);
	}
	
	/**
	 * 根据ID查询。
	 *
	 * @author suntao
	 * 2014-6-11下午10:08:57
	 */
	public SystemPower findById(int id) {
		return commonDao.findById(SystemPower.class, id);
	}
	
	/**
	 * 保存。
	 *
	 * @author suntao
	 * 2014-6-11 下午10:16:01
	 */
	@Transactional(readOnly=false, propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void save(SystemPower systemPower) {
		if (systemPower.getId() == null) commonDao.save(systemPower);
		else commonDao.update(systemPower);
		
		operTime = System.currentTimeMillis();
	}
	
	/**
	 * 生成用户url权限检查器。
	 * @Title: createUserPowerChecker
	 * @Description: 生成用户url权限检查器。
	 * @author suntao
	 * @date 2014-9-6 下午03:12:55
	 * @param userId
	 * @param userPowerChecker 上次检查器
	 * @return 如果生成上次检查器后没有权限的新增、修改、删除，则返回原检查器，否则新生成一个检查器。
	 * @throws Exception
	 */
	public UserPowerChecker createUserPowerChecker(Integer userId, UserPowerChecker userPowerChecker) throws Exception {
		if (userPowerChecker != null) {
			long oldOperTime = userPowerChecker.getOperTime();
			if (oldOperTime == operTime) {
				return userPowerChecker;
			}
		}
		UserPowerChecker result = new UserPowerChecker();
		List<SystemPower> powerList = findUserAllPower(userId);
		
		for (SystemPower power : powerList) {
			// 入口url
			result.addUrl(power.getEnterUrl());
			
			// 其他url
			String otherUrl = power.getOtherUrl();
			if (otherUrl != null && otherUrl.length() > 0) {
				String[] arr = otherUrl.split("\n");
				for (String str : arr) {
					result.addUrl(str);
				}
			}
		}
		
		result.setOperTime(operTime);
		return result;
	}
	
}

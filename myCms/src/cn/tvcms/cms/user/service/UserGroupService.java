/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.user.service;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.UserGroup;
import cn.tvcms.cms.pojo.UserGroupPower;

/** 
 * 用户组service
 * @author suntao 
 * @version create time：2014年6月13日 下午9:07:56
 * 
 */
@Service
public class UserGroupService {
	@Autowired
	private CommonDao commonDao;
	
	/**
	 * 查询所有数据。
	 *
	 * @author suntao
	 * 2014年6月13日 下午9:08:17
	 */
	public List<UserGroup> findAll() throws Exception {
		Criteria criteria = commonDao.createCriteria(UserGroup.class);
		criteria.add(Restrictions.eq("isDeleted", 0));
		criteria.addOrder(Order.asc("name"));
		return commonDao.findByCriteria(UserGroup.class, criteria);
	}
	
	/**
	 * 根据ID查询。
	 *
	 * @author suntao
	 * 2014年6月13日 下午9:09:07
	 */
	public UserGroup findById(int id) throws Exception {
		return commonDao.findById(UserGroup.class, id);
	}
	
	/**
	 * 保存。
	 *
	 * @author suntao
	 * 2014年6月13日 下午9:10:21
	 */
	@Transactional(readOnly=false, propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void save(UserGroup userGroup) throws Exception {
		if (userGroup.getId() == null) {
			commonDao.save(userGroup);
		} else {
			commonDao.update(userGroup);
		}
	}
	
	/**
	 * 保存。
	 *
	 * @author suntao
	 * 2014年6月13日 下午9:10:59
	 */
	@Transactional(readOnly=false, propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void save(UserGroup userGroup, int[] powerId) throws Exception {
		if (userGroup.getId() == null) {
			commonDao.save(userGroup);
			
			// 保存权限
			if (powerId != null && powerId.length > 0) {
				for (int i= 0; i < powerId.length; i++) {
					UserGroupPower power = new UserGroupPower();
					power.setGroupId(userGroup.getId());
					power.setPowerId(powerId[i]);
					power.setIsDeleted(0);
					power.setCreateTime(userGroup.getCreateTime());
					power.setCreateUserId(userGroup.getCreateUserId());
					commonDao.save(power);
				}
			}
		} else {
			commonDao.update(userGroup);
			
			// 保存权限
			Criteria criteria = commonDao.createCriteria(UserGroupPower.class);
			criteria.add(Restrictions.eq("groupId", userGroup.getId()));
			List<UserGroupPower> powerList = commonDao.findByCriteria(UserGroupPower.class, criteria);
			
			if (powerId != null && powerId.length > 0) {
				for (UserGroupPower power : powerList) {
					int pid = power.getPowerId().intValue();
					boolean find = false;
					for (int i= 0; i < powerId.length; i++) {
						if (powerId[i] == pid) {
							find = true;
							break;
						}
					}
					if (!find) {
						commonDao.delete(power);
					}
				}
				
				for (int i= 0; i < powerId.length; i++) {
					int pid = powerId[i];
					boolean find = false;
					for (UserGroupPower power : powerList) {
						if (power.getPowerId().intValue() == pid) {
							find = true;
							break;
						}
					}
					if (!find) {
						UserGroupPower power = new UserGroupPower();
						power.setGroupId(userGroup.getId());
						power.setPowerId(pid);
						power.setIsDeleted(0);
						power.setCreateTime(userGroup.getModifyTime());
						power.setCreateUserId(userGroup.getModifyUserId());
						commonDao.save(power);
					}
				}
			} else if (powerList.size() > 0) {
				for (UserGroupPower power : powerList) {
				    commonDao.delete(power);
				}
			}
		}
		
	}
	
	/**
	 * 获取权限列表。
	 *
	 * @author suntao
	 * 2014-6-13 下午9:30:34
	 */
	public List<UserGroupPower> findGroupPower(int groupId) throws Exception {
		Criteria criteria = commonDao.createCriteria(UserGroupPower.class);
		criteria.add(Restrictions.eq("groupId", groupId));
		List<UserGroupPower> powerList = commonDao.findByCriteria(UserGroupPower.class, criteria);
		return powerList;
	}
}

/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author xurannan
 * @version V1.0
 */
package cn.tvcms.cms.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.UserSet;

/** 
 * 系统用户设置service
 * @author xurannan
 * @version create time：2014年6月1日 上午9:19:46 
 * 
 */
@Service
public class UserSettingsService {
	@Autowired
	private CommonDao commonDao;

	public CommonDao getCommonDao() {
		return commonDao;
	}

	public void setCommonDao(CommonDao commonDao) {
		this.commonDao = commonDao;
	}
	/**
	 * 查询
	 * @return
	 * @author lianpeng
	 */
	@Transactional(readOnly=true, propagation=Propagation.REQUIRED)
	public List<UserSet> findAll(){
		return commonDao.findAll(UserSet.class);
	}
	/**
	 * 保存和修改
	 * @param userset
	 * @author lianpeng
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void saveOrUpdate(UserSet userset){
		commonDao.saveOrUpdate(userset);;
	}

}

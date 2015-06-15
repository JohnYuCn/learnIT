/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
 * @version V1.0
 */
package cn.tvcms.cms.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.SystemSetting;

/**
 * 系统设置service
 * @author lianpeng
 *
 */
@Service
public class SystemSettingService {
	
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
	public List<SystemSetting> findAll(){
		return commonDao.findAll(SystemSetting.class);
	}
	
	/**
	 * 保存和更新
	 * @author lianpeng
	 * @param systemSetting
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void saveOrUpdate(SystemSetting systemSetting){
		//System.out.println("*****"+systemSetting.getWebsiteName());
		commonDao.saveOrUpdate(systemSetting);;
	}
	/**
	 * 根据ID查询
	 * @param id
	 * @return
	 * @author lianpeng
	 */
	@Transactional(readOnly=true, propagation=Propagation.REQUIRED)
	public SystemSetting findById(int id){
		return commonDao.findById(SystemSetting.class, id);
	}
	
}

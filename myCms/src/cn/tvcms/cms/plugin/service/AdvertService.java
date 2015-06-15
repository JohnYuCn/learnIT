/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-29 下午02:19:21
 * @version V1.0
 */
package cn.tvcms.cms.plugin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Advert;



/**
 * @ClassName: AdvertService
 * @Description: 操作广告的service
 * @author sunJingYang
 * @date 2014-9-29 下午02:19:21
 * 
 */
@Service
public class AdvertService {

	@Autowired
	private CommonDao comm;
	
	@Autowired
	private CommonDao commonDao;
	
	
	/**
	 * @return the comm
	 */
	public CommonDao getComm() {
		return comm;
	}

	/**
	 * @Title: deleteMsg
	 * @Description: 删除广告
	 * @author sunJingYang
	 * @date 2014-9-29 下午04:32:04
	 * @param ids
	 */
	@Transactional
	public void deleteMsg(String ids) {
		String hql="delete from Advert where id in ("+ids+")";
		commonDao.executeHQL(hql);
		
	}
	
	
	/**
	 * @Title: findById
	 * @Description: 根据Id查找广告
	 * @author sunJingYang
	 * @date 2014-9-29 下午05:51:27
	 * @param id
	 * @return
	 */
	public Advert findById(Integer id) {
		// TODO Auto-generated method stub
		return commonDao.findById(Advert.class, id);
	}


	/**
	 * @Title: saveorUpdate
	 * @Description: 保存或修改广告信息
	 * @author sunJingYang
	 * @date 2014-9-30 上午11:18:12
	 * @param advert
	 */
	public void saveorUpdate(Advert advert) {
		if(advert.getId()==null || "0".equals(advert.getId())){
			commonDao.save(advert);
		}else{
			commonDao.merge(advert);
		}
		
		
	}

	

}

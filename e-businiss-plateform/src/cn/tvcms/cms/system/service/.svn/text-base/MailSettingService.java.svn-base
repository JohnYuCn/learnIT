/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014-11-15 下午02:12:14
 * @version V1.0
 */
package cn.tvcms.cms.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.MailUtil;

/**
 * @ClassName: MailSetting
 * @Description: 邮箱设置
 * @author lp
 * @date 2014-11-15 下午02:12:14
 * 
 */
@Service
public class MailSettingService {

	@Autowired
	private CommonDao comm;
	
	@Transactional
	public void saveOrUpdate (MailUtil  mailUtil){
		comm.saveOrUpdate(mailUtil);
	}
	
	@Transactional(readOnly=true, propagation=Propagation.REQUIRED)
	public MailUtil findMailUtil(){
		List<MailUtil> list = comm.findAll(MailUtil.class);
		MailUtil mailUtil = new MailUtil();
		if(!list.isEmpty()){
			mailUtil = list.get(0);
		}
		return mailUtil;
	}
}

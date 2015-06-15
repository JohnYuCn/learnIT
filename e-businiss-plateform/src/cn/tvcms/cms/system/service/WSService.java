/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2015-1-4 上午10:54:50
 * @version V1.0
 */
package cn.tvcms.cms.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Authorization;
import cn.tvcms.cms.pojo.MessagePush;

/**
 * @ClassName: WSService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author sunjinyang
 * @date 2015-1-4 上午10:54:50
 * 
 */
@Service
public class WSService {
	@Autowired
	private CommonDao commonDao;

	/**
	 * @Title: updateAuth
	 * @Description: 更新授权信息
	 * @author sunjinyang
	 * @date 2015-1-4 上午11:07:34
	 * @param authorization
	 */
	@Transactional
	public void updateAuth(Authorization authorization) {
		String hql="delete from Authorization";
		commonDao.executeHQL(hql);
		commonDao.save(authorization);
	}

	/**
	 * @Title: addMessagePush
	 * @Description: 接收消息推送
	 * @author sunjinyang
	 * @date 2015-1-4 上午11:29:42
	 * @param messagePush
	 */
	@Transactional
	public void addMessagePush(MessagePush messagePush) {
		commonDao.save(messagePush);
		
	}

	/**
	 * @Title: saveMsg
	 * @Description:消息推送保存
	 * @author sunjinyang
	 * @date 2015-3-9 下午03:50:49
	 * @param messagePush
	 */
	public void saveMsg(MessagePush messagePush) {
		commonDao.save(messagePush);
		
	}

}

/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-24 下午04:36:03
 * @version V1.0
 */
package cn.tvcms.cms.plugin.service;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Comment;
import cn.tvcms.cms.pojo.MessageBoard;

/**
 * @ClassName: MessageBoardService
 * @Description: TODO(操作留言板业务)
 * @author sunJingYang
 * @date 2014-9-24 下午04:36:03
 * 
 */
@Service
public class MessageBoardService {
	@Autowired
	private CommonDao commonDao;
	/**
	 * @Title: saveMessageBoard
	 * @Description: TODO(保存留言板信息)
	 * @author sunJingYang
	 * @date 2014-9-24 下午04:39:05
	 * @param messageBoard
	 */
	@Transactional
	public void saveMessageBoard(MessageBoard messageBoard){
		commonDao.save(messageBoard);
		
	}
	
	/**
	 * @return the commonDao
	 */
	public CommonDao getCommonDao() {
		return commonDao;
	}

	/**
	 * @param commonDao 要设置的 commonDao
	 */
	public void setCommonDao(CommonDao commonDao) {
		this.commonDao = commonDao;
	}

	/**
	 * 
	 * @Title: deleteMsg
	 * @Description: 删除留言
	 * @author sunJingYang
	 * @date 2014-9-25 下午06:49:59
	 * @param ids
	 */
	@Transactional
	public void deleteMsg(String ids){
		String hql="delete from MessageBoard where id in ("+ids+")";
		commonDao.executeHQL(hql);
	}
	
	/**
	 * 
	 * @Title: finById
	 * @Description: TODO根据ID查询留言信息
	 * @author sunJingYang
	 * @date 2014-9-25 下午06:56:12
	 * @param id
	 * @return
	 */
	public Serializable findById(Integer id,Class<? extends Serializable> cls) {
		// TODO Auto-generated method stub
		return commonDao.findById(cls, id);
	}
	/**
	 * 
	 * @Title: updateMsg
	 * @Description:更新留言
	 * @author sunJingYang
	 * @date 2014-9-25 下午07:48:05
	 * @param messageBoard
	 */
	@Transactional
	public void updateMsg(MessageBoard messageBoard){
		commonDao.update(messageBoard);
	}

	/**
	 * @Title: addCooment
	 * @Description:添加评论
	 * @author sunJingYang
	 * @date 2014-10-13 上午10:47:46
	 * @param comment
	 */
	@Transactional
	public void addCooment(Comment comment) {
		commonDao.save(comment);
		
	}

	/**
	 * @Title: deleComment
	 * @Description: 删除评论
	 * @author sunJingYang
	 * @date 2014-10-13 上午11:57:21
	 * @param ids
	 */
	@Transactional
	public void deleComment(String ids) {
		String hql="delete from Comment where id in ("+ids+")";
		commonDao.executeHQL(hql);
		
	}

	/**
	 * @Title: updateComment
	 * @Description: 跟新评论
	 * @author sunJingYang
	 * @date 2014-10-13 下午04:05:18
	 * @param comment
	 */
	@Transactional
	public void updateComment(Comment comment) {
		// TODO Auto-generated method stub
		commonDao.update(comment);
	}

}

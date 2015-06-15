/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-8-23 下午01:57:29
 * @version V1.0
 */
package cn.tvcms.cms.cont.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Cont;
import cn.tvcms.cms.pojo.ContComments;

/**
 * @ClassName: ContDao
 * @Description: 内容dao
 * @author lianpeng
 * @date 2014-8-23 下午01:57:29
 * 
 */
@Repository
public class ContDao {
	
	@Autowired
	private CommonDao commonDao;
	

	/**
	 * @Title: delete
	 * @Description: 根据id批量删除
	 * @author lianpeng
	 * @date 2014-8-23 下午02:06:58
	 * @param ids
	 */
	public void delete(String ids){
		String hql = "delete from Cont where id in ( "+ids + ") and isDeleted = 1";
		commonDao.executeHQL(hql);
	}
	
	@SuppressWarnings("unchecked")
	public List<Cont> findIds(String ids){
		String hql = " from Cont where id in ( "+ids + ") and isDeleted != 1 ";
		return commonDao.queryHQL(hql);
	}
	
	/**
	 * @Title: updateStatus
	 * @Description: 修改状态为删除
	 * @author lp
	 * @date 2014-12-21 下午08:16:08
	 * @param ids
	 */
	public void updateStatusDetete(String ids){
		String hql = "update Cont c set c.isDeleted = 1 where c.id in ( "+ids + ")";
		commonDao.executeHQL(hql);
	}
	
	/**
	 * @Title: UpdateStauts
	 * @Description: 回复
	 * @author lp
	 * @date 2014-12-21 下午08:31:24
	 * @param ids
	 */
	public void UpdateStauts(String ids){
		String hql = "update  Cont c set c.isDeleted = 0 where c.id in ( "+ids + ")";
		commonDao.executeHQL(hql);
	}
	
	/**
	 * @Title: UpdateTuijian
	 * @Description: 批量修改推荐
	 * @author lp
	 * @date 2014-12-23 下午11:24:06
	 * @param ids
	 * @param val
	 */
	public void UpdateTuijian(String ids,String val){
		String hql = "update  Cont c set c.tuijian = "+val+" where c.id in ( "+ids + ")";
		commonDao.executeHQL(hql);
	}
	
	/**
	 * @Title: UpdatetopRank
	 * @Description: 修改制定
	 * @author lp
	 * @date 2014-12-23 下午11:25:01
	 * @param ids
	 * @param val
	 */
	public void UpdatetopRank(String ids,String val){
		String hql = "update  Cont c set c.topRank = "+val+" where c.id in ( "+ids + ")";
		commonDao.executeHQL(hql);
	}
	
	/**
	 * @Title: Updatetoutiao
	 * @Description: 修改头条
	 * @author lp
	 * @date 2014-12-23 下午11:26:04
	 * @param ids
	 * @param val
	 */
	public void Updatetoutiao(String ids,String val){
		String hql = "update  Cont c set c.toutiao = "+val+" where c.id in ( "+ids + ")";
		commonDao.executeHQL(hql);
	}

	/**
	 * @Title: findContCommentsById
	 * @Description: 查找评论根据id
	 * @author sunjinyang
	 * @date 2015-1-12 下午05:54:10
	 * @param commentId
	 * @return
	 */
	public ContComments findContCommentsById(Integer commentId) {
		// TODO Auto-generated method stub
		return commonDao.findById(ContComments.class, commentId);
	}

	/**
	 * @Title: updateAndAddComments
	 * @Description: 新增或修改评论
	 * @author sunjinyang
	 * @date 2015-1-12 下午06:15:42
	 * @param contComments
	 */
	
	public void updateAndAddComments(ContComments contComments) {
		if(contComments.getId()==null){
			commonDao.save(contComments);
		}else{
			commonDao.update(contComments);
		}
		
	}

	/**
	 * @Title: deleteComments
	 * @Description: 删除评论
	 * @author sunjinyang
	 * @date 2015-1-12 下午08:36:24
	 * @param ids
	 */
	public void deleteComments(String ids) {
	     ids="'"+ids.replace(",", "','")+"'";
	     String hql="delete from ContComments where id in ("+ids+")";
	     commonDao.executeHQL(hql);
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Object> getSource() {
	     String hql="select id,name from Source ";
		return commonDao.queryHQL(hql);
	}
	
	public void deleteSource(String name,Integer type){
		
		String hql = "delete from Source where name = '"+ name +"'";
		if(type == 1){
			hql = "delete from Author where name = '"+ name +"'";
		}
		commonDao.executeHQL(hql);
	}
}

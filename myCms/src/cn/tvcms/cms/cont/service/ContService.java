/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @version V1.0
 */
package cn.tvcms.cms.cont.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.cont.dao.ContDao;
import cn.tvcms.cms.pojo.Author;
import cn.tvcms.cms.pojo.Cont;
import cn.tvcms.cms.pojo.ContComments;
import cn.tvcms.cms.pojo.Source;
import cn.tvcms.cms.pojo.TvcmsColumn;
import cn.tvcms.cms.user.dao.UserDao;

/** 
 * 内容管理service
 * @author xurannan
 * @version create time：2014年6月24日 下午10:47:53 
 * 
 */
@Service
public class ContService {
	
	

	  
	@Autowired
	private CommonDao dao;
	
	@Autowired
	private ContDao contDao;
	
	@Autowired
	private UserDao userDao;
	
	public CommonDao getDao() {
		return dao;
	}

	public void setDao(CommonDao dao) {
		this.dao = dao;
	}

	public List<TvcmsColumn> findAll(){
		return dao.findAll(TvcmsColumn.class);
	}
	/**
	 * @Title: findContCount
	 * @Description: TODO(总文章数)
	 * @author wangChuang
	 * @date 2015-4-17 下午05:41:37
	 * @return
	 */
	public Integer findContCount(){
		List<TvcmsColumn> li = findAll();
		if(li!=null){
			return li.size();
		}
		return 0;
	}
	
	/**
	 * 根据栏目分类查询内容
	 * 
	 * @author xurannan
	 * 2014年6月28日 上午12:01:59
	 */
	public List<Cont> findById(Integer id){
		Criteria ct = dao.createCriteria(Cont.class);
		ct.add(Restrictions.eq("columnId", id));
		ct.addOrder(Order.asc("createTime"));
		return dao.findByCriteria(Cont.class, ct);
	}
	
	/**
	 * @Title: findByIdCont
	 * @Description: 根据内容id查询内容
	 * @author lianpeng
	 * @date 2014-10-14 下午10:46:49
	 * @param id
	 * @return
	 */
	public Cont findByIdCont(Integer id){
		return dao.findById(Cont.class, id);
	}
	
	/**
	 * 保存内容
	 *
	 * @author xurannan
	 * 2014-7-18 下午06:17:56
	 */
	@Transactional
	public void save(Cont cont){
		dao.merge(cont);
	}
	
	/**
	 * @Title: delete
	 * @Description: 根据Id批量删除
	 * @author lianpeng
	 * @date 2014-8-23 下午02:08:22
	 * @param ids
	 */
	@Transactional
	public void delete(String ids){
		contDao.delete(ids);
	}
	
	
	@Transactional
	public void UpdateDelete(String ids){
		contDao.updateStatusDetete(ids);
	}
	
	@Transactional
	public void UpdateStauts(String ids){
		contDao.UpdateStauts(ids);
	}
	
	
	@Transactional
	public void UpdateType(String ids,String type,String val){
		if("topRank".equals(type)){
			contDao.UpdatetopRank(ids, val);
		}else if("tuijian".equals(type)){
			contDao.UpdateTuijian(ids, val);
		}else if("toutiao".equals(type)){
			contDao.Updatetoutiao(ids, val);
		}
	}

	/**
	 * @Title: mobileCont
	 * @Description: //移动内容到指定栏目下
	 * @author sunjinyang
	 * @date 2014-11-11 下午09:30:08
	 * @param columnId
	 * @param contIds
	 */
	@Transactional
	public void mobileCont(Integer columnId, String contIds) {
		
	    contIds="'"+contIds.replace(",", "','")+"'";
		String hql=" update Cont set columnId="+columnId+" where id in ("+contIds+")";
		dao.executeHQL(hql);
		
	}

	/**
	 * @Title: copyCont
	 * @Description: 复制内容到指定栏目下
	 * @author sunjinyang
	 * @date 2014-11-11 下午09:39:39
	 * @param columnId
	 * @param contIds
	 */
	@Transactional
	public void copyCont(Integer columnId, String contIds) {
		String str[]=contIds.split(",");
		for (int i = 0; i < str.length; i++) {
			Cont cont=dao.findById(Cont.class, Integer.parseInt(str[i]));
		
			if(cont.getOnlyId()==null||cont.getOnlyId().equals("")){
				cont.setOnlyId(UUID.randomUUID().toString().replace("-", ""));
			}
		
			dao.updateOfFree(cont);
			String hql="delete from Cont where onlyId='"+cont.getOnlyId()+"' and columnId="+columnId;
			dao.executeHQL(hql);
			Cont temp=new Cont();
			temp=cont;
			temp.setId(null);
			temp.setColumnId(columnId);
			dao.save(temp);
		}
		
	}

	/**
	 * @Title: findAllColumn
	 * @Description:查询所有栏目，除点击进来
	 * @author sunjinyang
	 * @date 2014-11-11 下午09:54:21
	 * @param id
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<TvcmsColumn> findAllColumn(Integer id) {
		String hql=" from TvcmsColumn where  id not in (select bclassId from TvcmsColumn where bclassId!='null' group by bclassId) and id!="+id;
		return dao.queryHQL(hql);
	}
	
	public List<Cont> findIds(String ids ) {
		
		return contDao.findIds(ids);
	}

	public Object findPersonAll(){
		List<Object> list =  userDao.getPersion();
		List<Map<String,Object>> retList = new ArrayList<Map<String,Object>>();
		Map<String,Object> tmpMap = new HashMap<String, Object>();
		tmpMap.put("id", "");
		tmpMap.put("templateName", "请选择");
		retList.add(tmpMap);
		for(int i =0;i<list.size();i++){
			Map<String,Object> map = new HashMap<String, Object>();
			Object[] objects = (Object[])list.get(i);
			map.put("id", objects[1]);
			map.put("templateName", objects[1]);
			retList.add(map);
		}
		return retList;
	}

	/**
	 * @Title: findContCommentsById
	 * @Description: 根据id查找评论
	 * @author sunjinyang
	 * @date 2015-1-12 下午05:53:15
	 * @param commentId
	 * @return
	 */
	@Transactional
	public ContComments findContCommentsById(Integer commentId) {
		// TODO Auto-generated method stub
		return contDao.findContCommentsById(commentId);
	}

	/**
	 * @Title: updateAndAddComments
	 * @Description:新增或更新评论
	 * @author sunjinyang
	 * @date 2015-1-12 下午06:14:52
	 * @param contComments
	 */
	@Transactional
	public void updateAndAddComments(ContComments contComments) {
		contDao.updateAndAddComments(contComments);
		
	}

	/**
	 * @Title: deleteComments
	 * @Description: 删除评论
	 * @author sunjinyang
	 * @date 2015-1-12 下午08:36:00
	 * @param ids
	 */
	public void deleteComments(String ids) {
		contDao.deleteComments(ids);
	}
	
	public Object getSource(){
		List<Object> list =  contDao.getSource();
		List<Map<String,Object>> retList = new ArrayList<Map<String,Object>>();
		Map<String,Object> tmpMap = new HashMap<String, Object>();
		tmpMap.put("id", "");
		tmpMap.put("templateName", "请选择");
		retList.add(tmpMap);
		for(int i =0;i<list.size();i++){
			Map<String,Object> map = new HashMap<String, Object>();
			Object[] objects = (Object[])list.get(i);
			map.put("id", objects[1]);
			map.put("templateName", objects[1]);
			retList.add(map);
		}
		return retList;
	}
	
	public void addAuhtor(Author aut){
		dao.merge(aut);
	}
	
	public void addSource(Source sou){
		dao.merge(sou);
	}
	
	public void deleteData(String name ,Integer type){
		contDao.deleteSource(name,type);
	}
}

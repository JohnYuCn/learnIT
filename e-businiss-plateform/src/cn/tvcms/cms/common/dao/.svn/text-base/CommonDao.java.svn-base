/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.common.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * 通用DAO。
 * @author suntao
 *
 */
@Repository
public class CommonDao {

	@Autowired
    private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	/**
	 * 得到当前Session。
	 * @return
	 */
	public Session getCurrentSession() {  
        return sessionFactory.getCurrentSession();  
    }  
	
	/**
	 * 获取所有数据。
	 * @param entityClass 实体类名。
	 * @return 所有数据的List。
	 */
	@SuppressWarnings("unchecked")
	public <T> List<T> findAll(Class<T> entityClass) {
		Session session = getCurrentSession();
		return session.createQuery("from " + entityClass.getName()).list();
	}
	
	/**
	 * 根据Id查找对象。
	 * @param entityClass 实体类名。
	 * @param id 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public <T> T findById(Class<T> entityClass, int id) {
		Session session = getCurrentSession();
		return (T)session.load(entityClass, id);
	}
	
	/**
	 * 根据Id查找对象。
	 * @param entityClass 实体类名。
	 * @param id 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public <T> T findById(Class<T> entityClass, long id) {
		Session session = getCurrentSession();
		return (T)session.load(entityClass, id);
	}
	/**
	 * 根据Id查找对象。
	 * @param entityClass 实体类名。
	 * @param id 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public <T> T findById(Class<T> entityClass, Integer id) {
		Session session = getCurrentSession();
		return (T)session.load(entityClass, id);
	}
	
    /**
     * 生成hibernate查询Criteria。
     *
     * @author suntao
     * 2014年6月1日 下午1:12:34
     */
	public <T> Criteria createCriteria(Class<T> entityClass) {
		Session session = getCurrentSession();
		Criteria criteria = session.createCriteria(entityClass);
		return criteria;
	}
	
	/**
	 * 根据Criteria查询数据。
	 *
	 * @author suntao
	 * 2014年6月1日 下午1:15:08
	 */
	@SuppressWarnings("unchecked")
	public <T> List<T> findByCriteria(Class<T> entityClass, Criteria criteria) {
		if (criteria == null) return findAll(entityClass);
		return criteria.list();
	}
	
	/**
	 * 查询总行数。
	 * @Title: count
	 * @Description: 查询总行数。
	 * @author suntao
	 * @date 2014-9-14 上午11:43:48
	 * @param criteria
	 * @return
	 */
	public int count(Criteria criteria) {
		criteria.setProjection(Projections.rowCount());
		int rowCount = 0;
		Object obj = criteria.uniqueResult();
		if (obj instanceof Long) {
			Long l = (Long)obj;
			rowCount = l.intValue();
		} else {
			rowCount = Integer.parseInt(obj.toString());
		}
		criteria.setProjection(null);
		return rowCount;
	}
	
	
	/**
	 * 新增保存对象。
	 * @param obj
	 */
	public void save(Object obj) {
		Session session = getCurrentSession();
		session.save(obj);
	}
	
	/**
	 * 保存或更新
	 * @param obj
	 */
	
	public void saveOrUpdate(Object obj){
		Session session = getCurrentSession();
		session.saveOrUpdate(obj);
		session.flush();
	}
	/**
	 * 保存或更新
	 * @param obj
	 */
	
	public void merge(Object obj){
		Session session = getCurrentSession();
		session.merge(obj);
		session.flush();
	}
	
	/**
	 * 保存或更新
	 * @param obj
	 */
	
	public void getIdsaveOrUpdate(Object obj){
		Session session = getCurrentSession();
		session.saveOrUpdate(obj);
		session.flush();
	}
	
	/**
	 * 修改对象。
	 * @param obj
	 */
	public void update(Object obj) {
		Session session = getCurrentSession();
		session.update(obj);
		session.flush();
	}
	
	/**
	 * 修改对象并使其变成游离态。
	 * @param obj
	 */
	public void updateOfFree(Object obj) {
		Session session = getCurrentSession();
		session.update(obj);
		
		session.flush();
		session.evict(obj);
	}
	
	/**
	 * 删除。
	 * @param obj
	 */
	public void delete(Object obj) {
		Session session = getCurrentSession();
		session.delete(obj);
		session.flush();
	}
	
	/**
	 * 根据HQL返回List
	 * @author xurannan
	 * 2014年5月24日 上午12:49:28
	 */
	@SuppressWarnings("unchecked")
	public List queryHQL(String hql){
		Session session = getCurrentSession();
		Query query = session.createQuery(hql);
		List list = query.list();
		return list;
	}
	
	/**
	 * 根据SQL返回List
	 * @author xurannan
	 * 2014年6月8日 下午11:44:36
	 */
	@SuppressWarnings("unchecked")
	public List querySQL(String sql){
		Session session = getCurrentSession();
		Query query = session.createSQLQuery(sql);
		List list = query.list();
		return list;
	}
	
	/**
	 * @Title: executeHQL
	 * @Description: 执行update或delete语句
	 * @author lianpeng
	 * @date 2014-8-23 下午02:03:24
	 * @param hql
	 */
	public void executeHQL(String hql){
		Session session = getCurrentSession();
		Query query = session.createQuery(hql);
		query.executeUpdate();
	}
	
	/**
	 * @Title: executeHQL
	 * @Description: 执行hql获得总记录数
	 * @author lianpeng
	 * @date 2014-8-23 下午02:03:24
	 * @param hql
	 */
	public Integer executeHQLCount(String hql){
		Session session = getCurrentSession();
		Query query = session.createQuery(hql);
		Long count = (Long)query.uniqueResult();
		return count.intValue();
	}
	/**
	 * 
	 * @Title: executeSql
	 * @Description: 执行sql语句
	 * @author sunJingYang
	 * @date 2014-10-6 下午05:51:50
	 * @param sql
	 */
	public void executeSql(String sql){
		Session session = getCurrentSession();
		SQLQuery query=session.createSQLQuery(sql);
		query.executeUpdate();
	}
	
}

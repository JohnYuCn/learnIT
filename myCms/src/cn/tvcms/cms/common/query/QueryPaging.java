/**
 * @Project: 特维内容管理系统
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-9-22 下午05:26:49
 * @version V1.0
 */
package cn.tvcms.cms.common.query;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Page;

/**
 * @ClassName: QueryPaging
 * @Description: 查询分页
 * @author lianpeng
 * @date 2014-9-22 下午05:26:49
 * 
 */
@Service
public class QueryPaging {
	
	@Autowired
	private CommonDao dao ;
	
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
	
	public Map<String,Object> query(String where,HttpServletRequest request,Class<? extends Serializable> cls){
		Integer  limit = request.getParameter("limit") == null ? null : Integer.parseInt(request.getParameter("limit")) ;
		Integer  start = request.getParameter("start") == null ? null : Integer.parseInt(request.getParameter("start")) ;
		Integer  currPage = request.getParameter("currPage") == null ? null : Integer.parseInt(request.getParameter("currPage")) ;
		Page page = new Page();
		page.setStart(start);
		page.setLimit(limit);
		if(currPage!= null){
			page.setCurrPage(currPage);
		}
		String  hql  =   where ;
		String hqlCount = "select count(*) " + where ;
		List<?> list = query(cls, hql,page);
		Integer count = dao.executeHQLCount(hqlCount);
		page.setTotalCount(count);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("object", list);
		map.put("paging", page);
		return map;
	}
	
	public List<?> query( Class<? extends Serializable> cls, String hql,Page page )
    {
		Session session = getCurrentSession();
		Query query = session.createQuery(hql);
		query.setFirstResult(page.getStart());
		query.setMaxResults(page.getLimit());
        List<?> vals = query.list();
        return vals;
    }
}

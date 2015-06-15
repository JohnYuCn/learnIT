/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-8-3 上午11:29:25
 * @version V1.0
 */
package cn.tvcms.cms.column.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Template;
import cn.tvcms.cms.pojo.TvcmsColumn;

/**
 * @ClassName: ColumnDao
 * @Description: 栏目
 * @author lianpeng
 * @date 2014-8-3 上午11:29:25
 * 
 */
@Repository
public class ColumnDao {
	
	@Autowired
	private CommonDao comm;
	
	/**
	 * 
	 * @Title: queryTemplate
	 * @Description: 查询栏目
	 * @author lianpeng
	 * @param id
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Template> queryTemplate(String id){
		String hql = " from Template t where t.catalogId = '"+id+"'";
		return comm.queryHQL(hql);
	}
	
	@SuppressWarnings("unchecked")
	public List<TvcmsColumn> queryColumn(String ids ){
		String hql = " from TvcmsColumn t where t.bclassId in ("+ids+")";
		return comm.queryHQL(hql);
	}
	
	public void deletCont(String ids ){
		String hql = "delete  from  Cont where columnId in ("+ids+") ";
		comm.executeHQL(hql);
	}
	
	public void updateIndexStyle(String ids,String value ){
		String hql = "update TvcmsColumn set indexStyle = '"+value+"'  where id in ("+ids+") ";
		comm.executeHQL(hql);
	}
	
	public void updateListStyle(String ids,String value ){
		String hql = "update TvcmsColumn set listStyle = '"+value+"'  where id in ("+ids+") ";
		comm.executeHQL(hql);
	}
	
	public void updateContStyle(String ids,String value ){
		String hql = "update TvcmsColumn set contStyle = '"+value+"'  where id in ("+ids+") ";
		comm.executeHQL(hql);
	}
	
	public void deletColumn(String ids ){
		String hql = "delete  from  TvcmsColumn where id in ("+ids+") ";
		comm.executeHQL(hql);
	}
	
	@SuppressWarnings("unchecked")
	public List<TvcmsColumn> findByIdColumn(String ids ){
		String hql = "  from  TvcmsColumn where id in ("+ids+") ";
		return comm.queryHQL(hql);
	}

}

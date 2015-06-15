/**
 * @Project: 特维内容管理系统
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014-9-26 下午08:58:58
 * @version V1.0
 */
package cn.tvcms.cms.member.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Member;

/** 
 *
 * @author xurannan 
 * @version create time：2014-9-26 下午08:58:58 
 * 
 */
/**
 * @ClassName: MemberDao
 * @Description: 会员DAO
 * @author xurannan
 * @date 2014-9-26 下午08:58:58
 * 
 */
@Repository
public class MemberDao {
	
	@Autowired
	private CommonDao dao;
	
	/**
	 * @Title: getMember
	 * @Description: 验证会员名是否存在
	 * @author xurannan
	 * @date 2014-9-26 下午09:14:20
	 * @param username
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Member> getMember(String username){
		String hql = " from Member where username = '"+username+"'";
		List<Member>  list = dao.queryHQL(hql);
		return list;
	}
	
	/**
	 * @Title: deletIds
	 * @Description: 根据ID删除会员记录
	 * @author xurannan
	 * @date 2014-9-29 下午04:23:27
	 * @param ids
	 */
	public void deletIds(String ids ){
		String hql = "delete  from  Member where id in ("+ids+") ";
		dao.executeHQL(hql);
	}
	
	@SuppressWarnings("unchecked")
	public List<Member> queryMember(String ids ){
		String hql = " from Member where id in ("+ids+")";
		return dao.queryHQL(hql);
	}
	
	@SuppressWarnings("unchecked")
	public List<Member> doLogin(String id,String pwd){
		String hql = "from Member where id='"+id+"' and password='"+pwd+"' ";
		List list = dao.queryHQL(hql);
		return list;
	}
	
	public void activeUser(String id){
		String hql = "update Member set isActivation = 1 where id='"+id+"'";
		dao.executeHQL(hql);
	}
}

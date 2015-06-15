/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014-9-26 下午12:25:48
 * @version V1.0
 */
package cn.tvcms.cms.member.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.member.dao.MemberDao;
import cn.tvcms.cms.plugin.service.SendMailServiceImp;
import cn.tvcms.cms.pojo.MailUtil;
import cn.tvcms.cms.pojo.Member;
import cn.tvcms.cms.pojo.UserSet;
import cn.tvcms.cms.system.service.MailSettingService;

/**
 * @ClassName: UserService
 * @Description: 会员service
 * @author xurannan
 * @date 2014年9月20日 上午10:14:39
 * 
 */
@Service
public class MemberService {
	@Autowired
	private CommonDao commonDao;
	
	@Autowired
	private MemberDao memberdao;
	
	@Autowired
	private SendMailServiceImp   sendMailServiceImp;
	
	@Autowired
	private MailSettingService mailSettingService;
	
	@Transactional(readOnly=true, propagation=Propagation.REQUIRED)
	public List<Member> findAll(){
		return commonDao.findAll(Member.class);
	}
	
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public Member findIdMember(Integer id){
		return commonDao.findById(Member.class, id);
	}
	
	@Transactional
	public void activeMember(String params){
		String keys[] = params.split(",");
		List<Member> list = memberdao.doLogin(keys[0],keys[1]);
		if(!list.isEmpty()){
			memberdao.activeUser(keys[0]);
		}
	}
	
	/**
	 * @Title: saveMember
	 * @Description: 注册会员保存
	 * @author xurannan
	 * @date 2014年9月20日 下午12:14:56
	 * @param user
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void saveMember(Member member,HttpServletRequest request){
		Integer id = member.getId();
		commonDao.saveOrUpdate(member);
		if( member.getRegistrationMthod() == 2 && id ==null ){
			MailUtil mailUtil = mailSettingService.findMailUtil();
			mailUtil.setToEmails(member.getUsername());
			String path = request.getScheme() + "://" + request.getServerName() + ":" 
					+ request.getServerPort() + "/"+ request.getContextPath() + "/member/memberController/active" ;
			String cont = mailUtil.getContent()+"==" +path +"/"+ member.getId()+"," + member.getPassword();
			sendMailServiceImp.sendOrderMail(mailUtil,cont);
		}
	}
	
	/**
	 * @Title: getMember
	 * @Description: 校验会员名是否存在
	 * @author xurannan
	 * @date 2014-9-26 下午09:16:02
	 * @param username
	 * @param id
	 * @return
	 */
	public Boolean getMember(String username,String id){
		List<Member> list = memberdao.getMember(username);
		if(!"0".equals(id)){
			if(list.size()>1){
				return false;
			}
		}else{
			if(list.size()>0){
				return false;
			}
		}
		return true;
	}
	
	/**
	 * @Title: deleteColumn
	 * @Description: 删除会员信息
	 * @author xurannan
	 * @date 2014-9-28 下午06:25:52
	 * @param ids
	 */
	@Transactional
	public void deleteMember(String ids){
		//List<Member> list = memberdao.queryMember(ids);
		String keys[] = ids.split(",");
		StringBuffer sb = new StringBuffer();
		for(int i=0;i<keys.length;i++){
			sb.append(keys[i]);
			if(i<keys.length-1){
				sb.append(",");
			}
		}
		memberdao.deletIds(sb.toString());
	} 
	
	
	@SuppressWarnings("unchecked")
	public boolean isExist(String username){
		String hql="from Member where username='"+username+"' ";
		List list=commonDao.queryHQL(hql);
		if(list.size()<1){
			return false;
		}
		return true;
	}
	
	@SuppressWarnings("unchecked")
	public boolean isEmail(String id,String email){
		String hql = "from Member where email = '"+email+"' ";
		List<Member> list=commonDao.queryHQL(hql);
		if(list.size() == 0){
			return true;
		}
		if(list.size()>1){
			return false;
		}
		if(StringUtils.isEmpty(id)){
			if(list.size()>0) return false;
		}else if(id.equals(list.get(0).getId()) && list.size() > 0 ){
			return false;
		}
		return true;
	}
	
	@SuppressWarnings("unchecked")
	public List<Member> doLogin(String username,String password){
		String hql = "from Member where username='"+username+"' and password='"+password+"' " +
				"and ((registrationMthod = 2 and isActivation = 1)  or (registrationMthod != 2)) ";
		List list = commonDao.queryHQL(hql);
		return list;
	}
	
	@Transactional
	public void updateLoginTime(Member member){
		commonDao.saveOrUpdate(member);
	}

	/**
	 * @Title: findUserSet
	 * @Description: 获取用户设置表记录
	 * @author sunjinyang
	 * @date 2014-10-28 下午05:49:48
	 * @return
	 */
	public UserSet findUserSet() {
			return (UserSet) commonDao.queryHQL("from UserSet").get(0);
	}
	/**
	 * @Title: findMemberCount
	 * @Description: TODO(客户的总数量)
	 * @author wangChuang
	 * @date 2015-4-17 下午05:44:25
	 * @return
	 */
	public Integer findMemberCount(){
		List<Member> li = findAll();
		if(li!=null){
			return li.size();
		}
		return 0;
	}
}

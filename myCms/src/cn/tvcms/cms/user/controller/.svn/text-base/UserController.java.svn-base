/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
 * @version V1.0
 */
package cn.tvcms.cms.user.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.query.FieldManagement;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.MD5;
import cn.tvcms.cms.common.utils.MessageUtils;
import cn.tvcms.cms.pojo.User;
import cn.tvcms.cms.pojo.UserGroup;
import cn.tvcms.cms.pojo.UserLoginLog;
import cn.tvcms.cms.pojo.columnAttributeMapping;
import cn.tvcms.cms.user.service.UserGroupService;
import cn.tvcms.cms.user.service.UserService;

/**
 * 用户Controller
 * @author lianpeng
 * @version 1.0
 */
@Controller
public class UserController {
	
	@SuppressWarnings("unused")
	private static final  Log log = LogFactory.getLog(UserController.class);
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private FieldManagement fieldManagement;
	
	@Autowired
	private UserGroupService userGroupService;
	
	@Autowired
	private QueryPaging quertPaging;

	/**
	 * 新增和修改用户
	 * @return
	 * @author lianpeng
	 * @throws Exception 
	 */
	@RequestMapping("/user/userController/addUserOrUpdate")
	public ModelAndView addUserOrUpdate(User user,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String returnString="";
		String oldpwd = request.getParameter("oldpwd");
		String groupId = request.getParameter("groupId");
		String forward="";
		try {
			Integer id = user.getId();
			if(id ==0 ){
				returnString="新增用户成功!";
				user.setId(null);
			}else{
				returnString="修改用户成功!";
			}
			if(StringUtils.isEmpty(oldpwd) || !oldpwd.equals(user.getPassword())){
				MD5 jm = new MD5();
				user.setPassword(jm.getMD5ofStr(user.getPassword()));
			}
			UserGroup userGroup = new UserGroup();
			if(StringUtils.isNotEmpty(groupId)){
				userGroup = userGroupService.findById(Integer.parseInt(groupId));
			}
			user.setUserGroup(userGroup);
			
			userService.saveUser(user);
			if(!"".equals(id) && id !=0){
				user.setId(id);
			}
		} catch (Exception e) {
			returnString="操作用户失败!请联系管理员";
			e.printStackTrace();
		}
		mav.addObject("user", user);
		forward="/user/userController/findAll";
		mav.addObject("url", forward);
		mav.addObject("returnString",returnString);
		   mav.setViewName("system/returnAlert1");
		
		return mav;
	}
	
	/**
	 * 根据id查询用户
	 * @param id
	 * @return
	 * @author lianpeng
	 */
	@RequestMapping("/user/userController/findById/{id}")
	public ModelAndView findById(@PathVariable("id") Integer id) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		if(id != 0 && id!=null){
			User user = userService.findIdUser(id);
			mav.addObject("user", user);
		}
		List<UserGroup> groupList = userGroupService.findAll();
		mav.addObject("groupList", groupList);
		mav.setViewName("user/user");
		return mav;
	}
	
	/**
	 * 
	 * @Title: userName
	 * @Description: 查询重复
	 * @author lianpeng
	 * @date 2014-8-10 下午12:36:38
	 * @param request
	 * @return
	 */
	@RequestMapping("/user/userController/userName")
	public Map<String,Object> userName(HttpServletRequest request) {
		String userName = request.getParameter("userName");
		String id = request.getParameter("id");
		Boolean b = userService.getUser(userName, id);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("flag", b);
		return map;
	}

	/**
	 * @throws Exception 
	 * 查询所有用户
	 * @return
	 * @author lianpeng
	 * @throws  
	 */
	@RequestMapping("/user/userController/findAll")
	public ModelAndView findAll(HttpServletRequest request,User user) throws Exception  {
		//List<User> list = userService.findAll();
		ModelAndView mav = new ModelAndView();
		String hqlWhere="from User where id != 1";
		if(user!=null){
			user.setLastLoginTime(DateTools.getDateTime(request.getParameter("lastLoginTimes")));
			if(user.getUserName()!=null){
				if(!user.getUserName().equals("")){
					hqlWhere+=" and userName like '%"+user.getUserName()+"%'";
				}
			}
			if(user.getLastLoginTime()!=null){
				if(!user.getLastLoginTime().equals("")){
					hqlWhere+=" and lastLoginTime between '"+DateTools.getDateYYYYMMDD(user.getLastLoginTime())+"' and '"+DateTools.getSpecifiedDayAfter(DateTools.getDateYYYYMMDD(user.getLastLoginTime()))+"'";
				}
			}
		}
		
		hqlWhere+=" order by lastLoginTime desc";
		Map<String, Object> map=quertPaging.query(hqlWhere, request, User.class);
		mav.addObject("paging", map);
		mav.setViewName("user/queryUser");
		return mav;
	}
	
	/**
	 * 删除用户
	 * @return
	 * @author lianpeng
	 */
	@RequestMapping("/user/userController/delete/{id}")
	public ModelAndView deleteUser(@PathVariable("id") Integer id){
		ModelAndView mav = new ModelAndView();
		String returnString="删除用户成功!";
		try {
			User user = new User();
			user.setId(id);
			userService.deleteUser(user);
			List<User> list = userService.findAll();
			mav.addObject("list", list);
		} catch (Exception e) {
			returnString="删除用户失败!请联系管理员";
			e.printStackTrace();
		}
		mav.addObject("url", "/user/userController/findAll");
		mav.addObject("returnString",returnString);
		   mav.setViewName("system/returnAlert1");
		return mav;
	}
	/**
	 * 
	 * @Title: queryLoginLog
	 * @Description: 分页查询所有登录日志信息
	 * @author sunJingYang
	 * @date 2014-9-22 下午04:51:00
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/user/userController/queryLoginLog")
	public ModelAndView queryLoginLog(HttpServletRequest request,UserLoginLog userLoginLog) throws Exception{
		ModelAndView mav=new ModelAndView();
		String hqlWhere="from UserLoginLog where 1=1";
		if(userLoginLog!=null){
			userLoginLog.setLoginTime(DateTools.getDateTime(request.getParameter("loginTimes")));
			if(userLoginLog.getUserName()!=null){
				if(!userLoginLog.getUserName().equals("")){
					hqlWhere+=" and userName like '%"+userLoginLog.getUserName()+"%'";
				}
			}
			if(userLoginLog.getLoginState()!=null){
				if(!userLoginLog.getLoginState().equals("")){
					//2015.4.2  wangchuang修改   当id为0时  不走这个条件
					if(!userLoginLog.getLoginState().equals("0")){
						hqlWhere+=" and loginState ='"+userLoginLog.getLoginState()+"'";
					}
					//hqlWhere+=" and loginState ='"+userLoginLog.getLoginState()+"'";
				}
			}
			if(userLoginLog.getLoginTime()!=null){
				if(!userLoginLog.getLoginTime().equals("")){
					hqlWhere+=" and loginTime between '"+DateTools.getDateYYYYMMDD(userLoginLog.getLoginTime())+"' and '"+DateTools.getSpecifiedDayAfter(DateTools.getDateYYYYMMDD(userLoginLog.getLoginTime()))+"'";
				}
			}
		}
		hqlWhere+=" order by loginTime desc";
		Map<String, Object> map=quertPaging.query(hqlWhere, request, UserLoginLog.class);
		mav.addObject("paging",map);
		mav.setViewName("user/queryLoginLog");
		return mav;
		
	}
	/**
	 * 
	 * @Title: LoginLogDele
	 * @Description: TODO删除登录日志
	 * @author sunJingYang
	 * @date 2014-9-23 上午09:48:05
	 * @return
	 */
	@RequestMapping("/user/userController/dele/{id}")
	public ModelAndView LoginLogDele(@PathVariable("id") String ids){
		ModelAndView mav=new ModelAndView();
		String returnString="删除登录日志成功!";
		String forward="";
		try{
			ids="'"+ids.replace(",", "','")+"'";
			userService.delete(ids);
			forward="/user/userController/queryLoginLog.html";
			mav.addObject("url",forward);
		}catch(Exception e){
			returnString="删除登录日志失败!";
			e.printStackTrace();
		}
		mav.addObject("returnString",returnString);
		   mav.setViewName("system/returnAlert1");
		return mav;
	}
	/**
	 * 
	 * @Title: findMsgField
	 * @Description:显示所有会员字段
	 * @author sunJingYang
	 * @date 2014-10-6 下午06:46:09
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping("/user/userController/findUserField")
	public ModelAndView findUserField() throws Exception{
		ModelAndView mav=new ModelAndView();
		List<columnAttributeMapping> list=fieldManagement.findAllColumn("cn.tvcms.cms.pojo.User",MessageUtils.getMessage("hibernateXml"));
		mav.addObject("list",list);
		mav.setViewName("user/queryUserField");
		return mav;
	}
	
}

/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014-9-26 下午12:22:27
 * @version V1.0
 */
package cn.tvcms.cms.member.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.MD5;
import cn.tvcms.cms.member.service.MemberService;
import cn.tvcms.cms.plugin.service.SmsPlatformService;
import cn.tvcms.cms.pojo.Member;
import cn.tvcms.cms.pojo.UserSet;
import cn.tvcms.cms.system.service.UserSettingsService;

/**
 * @ClassName: MemberController
 * @Description: 会员管理Controller
 * @author xurannan
 * @date 2014年9月20日 上午10:08:25
 * 
 */
@Controller
public class MemberController {

	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private QueryPaging queryPaging;
	
	@Autowired
	private UserSettingsService userSetService;
	
	@Autowired
    HttpSession session;
	
	@Autowired
	private UserSettingsService userSettingsService;
	
	@Autowired
	private SmsPlatformService smsPlatformService;
	
	
	/**
	 * @Title: findAll
	 * @Description: 查询所有会员
	 * @author xurannan
	 * @date 2014年9月20日 上午10:21:22
	 * @return
	 */
	@RequestMapping("/member/memberController/findAll")
	public ModelAndView findAll(HttpServletRequest request,Member member) throws Exception{
		String hqlWhere="from Member where 1=1";
		if(member!=null){
			member.setRegisterTime(DateTools.getDateTime(request.getParameter("registerTimes")));
			if(member.getTrueName()!=null){
				if(!member.getTrueName().equals("")){
					hqlWhere+=" and trueName like '%"+member.getTrueName()+"%'";
				}
			}
			if(member.getRegisterTime()!=null){
				if(!member.getRegisterTime().equals("")){
					hqlWhere+=" and registerTime between '"+DateTools.getDateYYYYMMDD(member.getRegisterTime())+"' and '"+DateTools.getSpecifiedDayAfter(DateTools.getDateYYYYMMDD(member.getRegisterTime()))+"'";
				}
			}
		}
		hqlWhere+=" order by lastLoginTime desc";
		Map<String, Object> map=queryPaging.query(hqlWhere, request, Member.class);
		ModelAndView mav = new ModelAndView();
		mav.addObject("paging", map);
		mav.setViewName("member/queryMember");
		return mav;
	}
	
	
	@RequestMapping("/member/memberController/queryReq")
	public Object queryReq(){
		List<UserSet> list = userSettingsService.findAll();
		
		return getMap(list);
	}
	
	//获取用户注册方式列表
	private List<Map<String, String>>  getMap(List<UserSet> list){
		List<Map<String, String>> returnList = new ArrayList<Map<String,String>>();
		if(list.isEmpty()){
			Map<String, String>  map = new HashMap<String, String>();
			map.put("id", "1");
			map.put("templateName", "用户名注册");
			returnList.add(map);
		}else{
			UserSet userSet = list.get(0);
			Integer nameReq = userSet.getNameReg();
			Integer mailReq = userSet.getMailReg();
			Integer phoneReq = userSet.getPhoneReg();
			if(nameReq != null){
				Map<String, String>  map = new HashMap<String, String>();
				map.put("id", "1");
				map.put("templateName", "用户名注册");
				returnList.add(map);
			}
			if(mailReq != null){
				Map<String, String>  map = new HashMap<String, String>();
				map.put("id", "2");
				map.put("templateName", "邮箱注册");
				returnList.add(map);
			}
			if(phoneReq != null){
				Map<String, String>  map = new HashMap<String, String>();
				map.put("id", "3");
				map.put("templateName", "手机注册");
				returnList.add(map);
			}
		}
		return  returnList;
	}
	 
	/**
	 * 
	 * @Title: sendCode
	 * @Description:手机号注册时发送验证码
	 * @author sunjinyang
	 * @throws Exception 
	 * @date 2014-11-17 上午11:02:28
	 */
	@RequestMapping("/member/memberController/sendCode")
	public void sendCode(HttpServletRequest request) throws Exception{
		int random=(int)(Math.random()*900000)+100000; 
		String code=String.valueOf(random);
		String phone=request.getParameter("phone");
		String txt="您好，你的注册验证码为："+code+"，请勿泄露!"; 
		smsPlatformService.sendsms(phone, txt, "4", "", request, UUID.randomUUID().toString().replace("-", ""));
		request.getSession().setAttribute("checkCode", code);
	}
	/**
	 * 
	 * @Title: validateCode
	 * @Description: 验证效验码是否正确
	 * @author sunjinyang
	 * @date 2014-11-17 上午11:34:16
	 * @param request
	 * @return
	 */
	@RequestMapping("/member/memberController/validateCode")
	public Map<String, String> validateCode(HttpServletRequest request){
		Map<String, String> msg=new HashMap<String, String>();
		msg.put("a","a");
		String code=request.getParameter("code");
		String sessionCode=request.getSession().getAttribute("checkCode").toString();
		if(sessionCode.equals(code)){
			msg.put("check", "yes");
		}else{
			msg.put("check", "no");
		}
		return msg;
	}
	
	/**
	 * @Title: addUserOrUpdate
	 * @Description: 会员用户的新增和修改
	 * @author xurannan
	 * @date 2014年9月20日 上午11:20:56
	 * @param member
	 * @return
	 */
	@RequestMapping("/member/memberController/addUserOrUpdate")
	public ModelAndView addUserOrUpdate(Member member,HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView();
		String returnString="";
		String forward="/member/memberController/findAll";
		Date birthDate=DateTools.getDate(request.getParameter("birthDates"));
		String oldpwd = request.getParameter("oldpwd");
		member.setBirthDate(birthDate);
		try {
			Integer id = member.getId();
			if(id ==null||id==0){
				member.setRegisterTime(new Date());
				member.setRegistrationMthod(1);
				String type=request.getParameter("type");
				if("reception".equals(type)){
					forward="/";
				}
				
				member.setId(null);
				returnString="注册会员成功!";
			}
			String paw = "";
			if(StringUtils.isEmpty(oldpwd) || !oldpwd.equals(member.getPassword())){
				MD5 jm = new MD5();
				paw = jm.getMD5ofStr(member.getPassword());
				member.setPassword(paw);
			}
			
				if( member.getRegistrationMthod() == 2 && id ==null ){
					returnString = "注册成功，请在邮箱中激活后登陆!";
				}
				if(member.getRegistrationMthod()==3&&id==null){
					returnString="注册成功!";
				}	
			
		
			memberservice.saveMember(member,request);
			if(!"".equals(id) && id !=null){
				if(id!=0){
				returnString="修改会员成功!";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			returnString="操作失败，请联系管理员!";
		}
		mav.addObject("member", member);
		
		mav.addObject("url", forward);
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert1");
		
		return mav;
	}
	
	@RequestMapping("/member/memberController/active/{id}")
	public ModelAndView activeUser(@PathVariable("id") String  id ){
		ModelAndView mav = new ModelAndView();
		memberservice.activeMember(id);
		mav.setViewName("/member/activeUser");
		return mav;
	}
	
	/**
	 * @Title: findById
	 * @Description: 根据ID查找用户
	 * @author xurannan
	 * @date 2014年9月20日 上午11:48:19
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/member/memberController/findById/{id}")
	public ModelAndView findById(@PathVariable("id") Integer id) throws Exception {
		ModelAndView mav = new ModelAndView();
		if(id != 0 && id!=null){
			Member member = memberservice.findIdMember(id);
			mav.addObject("member", member);
		}
		//查询用户设置
		List<UserSet> list = userSetService.findAll();
		if(!list.isEmpty()){
			mav.addObject("userSet", list.get(0));
		}
		List<UserSet> listType = userSettingsService.findAll();//获取注册方式
		if(list.isEmpty()){
			mav.addObject("r_id", 1);
		}else{
			UserSet userSet = listType.get(0);
			Integer nameReq = userSet.getNameReg();
			Integer mailReq = userSet.getMailReg();
			Integer phoneReq = userSet.getPhoneReg();
			Boolean flag = false;
			if(nameReq != null){
				mav.addObject("r_id", 1);
				flag = true;
			}
			if(mailReq != null && !flag){
				mav.addObject("r_id", 2);
				flag = true;
			}
			if(phoneReq != null && !flag){
				mav.addObject("r_id", 3);
			}
		}
		mav.setViewName("member/addMember");
		return mav;
	}
	
	
	/** 
	 * @Title: userName
	 * @Description: 查询重复
	 * @author xurannan
	 * @date 2014-9-26 下午08:39:16
	 * @param request
	 * @return
	 */
	@RequestMapping("/member/memberController/distinct")
	public Map<String,Object> userName(HttpServletRequest request) throws Exception{
		String username = request.getParameter("username");
		String id = request.getParameter("id");
		Boolean b = memberservice.getMember(username, id);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("flag", b);
		return map;
	}
	
	/**
	 * @Title: deleteColumn
	 * @Description: 删除会员
	 * @author xurannan
	 * @date 2014-9-29 下午05:21:06
	 * @param id
	 * @return
	 */
	@RequestMapping("/member/memberController/delete/{id}")
	public ModelAndView deleteColumn(@PathVariable("id") String id) throws Exception{
		String returnString="删除会员成功!";
		String forward="";
		try {
			memberservice.deleteMember(id);
		} catch (Exception e) {
			returnString="删除会员失败!";
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("returnString",returnString);
		forward="/member/memberController/findAll";
		mav.addObject("url", forward);
		mav.setViewName("system/returnAlert1");
		return mav;
	}
	
	/**
	 * 生成登录界面。
	 * @return viewName
	 */
	@RequestMapping("/memberLogin/admin")
	public ModelAndView createLoginPage(HttpSession session) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("memberLogin/login");
		return mav;
	}
	
	/**
	 * @Title: userLogin
	 * @Description: 静态页会员登录功能
	 * @author xurannan
	 * @date 2014-10-10 下午09:05:15
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/member/userlogin")
	public ModelAndView userLogin(Member member,HttpServletRequest request) throws Exception{
		String returnString="";//返回页面弹出提示
		String forward = "/";
		ModelAndView mav = new ModelAndView();
		String username=member.getUsername();
		String pwd=member.getPassword();
		MD5 jm = new MD5();
		pwd = jm.getMD5ofStr(pwd);
		List<Member> list = memberservice.doLogin(username,pwd);
		if(list.isEmpty()){
			returnString="用户名或密码错误！";
		}else{
			returnString="登录成功！";
		}
		
		mav.addObject("returnString", returnString);
		mav.addObject("url", forward);
		mav.setViewName("system/returnAlert1");
		return mav;
	}
	
	@RequestMapping("/member/login")
	@ResponseBody
	public Map<String,String> login(HttpServletRequest request,HttpServletResponse response){
		Map<String,String> map = new HashMap<String, String>();
		String returnString="";//返回页面弹出提示
		String username = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		String url = request.getParameter("contUrl");
		MD5 jm = new MD5();
		pwd = jm.getMD5ofStr(pwd);
		List<Member> list = memberservice.doLogin(username,pwd);
		if(list.isEmpty()){
			returnString="false";
		}else{
			returnString="true";
			Member  member = list.get(0);
			member.setLastLoginTime(new Date());
			memberservice.updateLoginTime(member);
			session.setAttribute("memberId", member.getId());
			session.setAttribute("memberName", member.getUsername());
			Cookie cookie = new Cookie("memberName", member.getUsername());       //(key,value)
		    cookie.setPath("/");// 这个要设置
		    response.addCookie(cookie);         //添加第一个CookieCookie cookie = new Cookie("name", "aotori");       //(key,value)
		    map.put("memberName", session.getAttribute("memberName").toString());
		}
		
		map.put("loginFalg", returnString);
		
		if(url != null && !"".equals(url)){
			map.put("url", url);
		}
		return map;
	}
	
	@RequestMapping("/member/exitLogin")
	public Map<String,String> exitLogin(HttpServletResponse response,HttpServletRequest request){
		session.invalidate();
		Cookie[] cookie= request.getCookies();
		for (int i = 0; i < cookie.length; i++) {
			if(cookie[i].getName().equals("memberName")){
				cookie[i].setValue("0");
				cookie[i].setPath("/");
				response.addCookie(cookie[i]);
				
			}
		}
		Map<String,String> map = new HashMap<String, String>();
		map.put("returnString", "true");
		return map;
	}
	
	@RequestMapping("/member/email")
	public Map<String,Object> getEmail(HttpServletRequest request){
		String id = request.getParameter("userId");
		String emailString = request.getParameter("email");
		boolean flag = memberservice.isEmail(id, emailString);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("returnString", flag);
		return map;
	}
	/**
	 * 
	 * @Title: isRepeat
	 * @Description: 异步验证用户名是否存在
	 * @author sunjinyang
	 * @date 2014-10-30 上午11:37:50
	 * @param request
	 * @return
	 */
	@RequestMapping("/member/memberController/isRepeat")
	public List<String> isRepeat(HttpServletRequest request){
		List<String> list=new ArrayList<String>();
		String username=request.getParameter("username");
		boolean flad=false;
		 flad=memberservice.isExist(username);
		UserSet set=memberservice.findUserSet();
	    String [] str=set.getReserveKeyword().split(",");
	    for (int i = 0; i < str.length; i++) {
			if(username.equals(str[i])){
				flad=true;
				break;
			}
		}
	    if(flad){
	    	list.add("0");
	    }else{
	    	list.add("1");
	    }
	    return list;
		
	}
	/**
	 * 
	 * @Title: isLogin
	 * @Description: 判断是否登录状态
	 * @author sunjinyang
	 * @date 2014-10-31 下午08:31:48
	 * @param request
	 * @return
	 */
	@RequestMapping("/member/memberController/isLogin")
	public List<String> isLogin(HttpServletRequest request)throws Exception{
		List<String> list=new ArrayList<String>();
		String username=null;
		if(!"".equals(request.getSession().getAttribute("memberName")) && request.getSession().getAttribute("memberName")!=null){
			username=request.getSession().getAttribute("memberName").toString();
		}
		list.add(username);
		return list;
	}
	
}

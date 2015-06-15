/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author xurannan
 * @version V1.0
 */
package cn.tvcms.cms.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.MD5;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.common.utils.TVMD;
import cn.tvcms.cms.common.utils.makeCertPic;
import cn.tvcms.cms.cont.service.ContService;
import cn.tvcms.cms.login.service.LoginService;
import cn.tvcms.cms.member.service.MemberService;
import cn.tvcms.cms.pojo.Authorization;
import cn.tvcms.cms.pojo.SystemPower;
import cn.tvcms.cms.pojo.User;
import cn.tvcms.cms.pojo.UserLoginLog;
import cn.tvcms.cms.pojo.UserSet;
import cn.tvcms.cms.system.service.MessagePushService;
import cn.tvcms.cms.system.service.SystemPowerService;
import cn.tvcms.cms.system.service.UserSettingsService;
import cn.tvcms.cms.visit.service.VisitStatisticsService;

/**
 * 
 * @author xurannan
 * 2014年5月22日 下午10:00:52
 */
@Controller
public class LoginController {

	private static final  Log log = LogFactory.getLog(LoginController.class);
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private MessagePushService messagePushService;
	
	@Autowired
    HttpSession session;
	
	@Autowired
	private SystemPowerService systemPowerService;
	
	@Autowired
	private UserSettingsService userSettingsService;
	@Autowired
	private VisitStatisticsService vsService;	
	@Autowired
	private ContService contService;
	@Autowired
	private MemberService memberService;
	/**
	 * 生成登录界面。
	 * @return viewName
	 */
	@RequestMapping("/login/admin")
	public ModelAndView createLoginPage(HttpSession session) {
		session.invalidate();
		ModelAndView mav=new ModelAndView();
		List<UserSet> list = userSettingsService.findAll();
		if(!list.isEmpty()){
			mav.addObject("userset", list.get(0));
		}
		mav.setViewName("login/login");
		return mav;
	}
	
	/**
	 * 生成后台首页
	 * @author xurannan
	 * 2014年5月21日 下午10:39:40
	 */
	@RequestMapping("/login/home")
	public ModelAndView loginHome(HttpServletRequest request)  throws Exception{
		ModelAndView mav = new ModelAndView();

		
		List<SystemPower> headList = systemPowerService.findPower(SystemUtils.getLoginUserId(request), null);
		if(headList.size()==0){
			log.error("用户没有授权");
			mav.setViewName("error/error");
			request.setAttribute("msgFlag", "true");
			mav.addObject("msgFlag","true");
			return mav;
		}
		
		List<SystemPower> powerList = systemPowerService.findPowerMulti(SystemUtils.getLoginUserId(request), headList);
		List<SystemPower> subPowerList = systemPowerService.findPowerMulti(SystemUtils.getLoginUserId(request), powerList);
		session.setAttribute("headList", headList);
		session.setAttribute("powerList", powerList);
		session.setAttribute("subPowerList", subPowerList);
		mav.setViewName("login/home");
		return mav;
	}
	
	
	/**
	 * 显示测试新增页面
	 * @author xurannan
	 * 2014年5月22日 上午12:14:06
	 */
	@RequestMapping("/login/testadd")
	public String test() {
		return "login/test";
	}
	
	/**
	 * 系统用户登录验证
	 * @author xurannan
	 * 2014年5月24日 下午7:07:17
	 * @throws Exception 
	 */
	@SuppressWarnings({ "static-access", "unchecked" })
	@RequestMapping("/login/doLogin")
	public ModelAndView doLogin(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
				Authorization authorization=messagePushService.findAuth();
		if(authorization==null){
			mav.setViewName("system/returnAlert1");
			mav.addObject("url","/login/authCheck");
			mav.addObject("returnString","您的系统尚未授权，请联系管理员！");
			return mav;
		}else{
		    String time=TVMD.jieMi(authorization.getEndTime());
    		time=time.substring(0,4)+"-"+time.substring(4,6)+"-"+time.substring(6);
    		Date endTime=DateTools.getDate(time);
            if(authorization.getIsCheck()==null||authorization.getIsCheck().equals("")){
            	mav.setViewName("system/returnAlert1");
    			mav.addObject("url","/login/authCheck");
    			mav.addObject("returnString","您的系统已经授权，但未验证，请先验证后登录！");
    			return mav;
            }
    		if(endTime.getTime()<new Date().getTime()){
    			mav.setViewName("system/returnAlert1");
    			mav.addObject("url","/login/authCheck");
    			mav.addObject("returnString","您的系统授权期限已到，请联系管理员重新授权！");	
    			return mav;
    		}
		}
		Integer uid=SystemUtils.getLoginUserId(request);
		if(uid!=null){
			List<SystemPower> powerList = systemPowerService.findPower(uid, null);
			Long firstId = (powerList.size() > 0) ? powerList.get(0).getId() : 0L;
			mav.addObject("firstId", firstId);
			mav.setViewName("login/home");
			return mav;
		}		
		String username = SystemUtils.getParameter(request, "username");
		String password = SystemUtils.getParameter(request, "password");
	
		if(StringUtils.isEmpty(password)){
			mav.addObject("returnString","请登陆");
			String forward="/login/admin";
			mav.addObject("url", forward);
			mav.setViewName("system/returnAlert1");
			return mav;
		}
		List<User> list = new ArrayList<User>();
		SystemUtils sysutil = new SystemUtils();
		DateTools tool = new DateTools();
		String strdate=tool.getStandSystemDate();
		Date d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strdate);
		MD5 jm = new MD5();	
		password = jm.getMD5ofStr(password);
		
		//创建登录日志对象
		UserLoginLog loginLog=new UserLoginLog();
		String clientIp = sysutil.getIpAddr(request);
		loginLog.setLoginIp(clientIp);
		loginLog.setLoginTime(new Date());
		loginLog.setUserName(username);
		if(!loginService.isExist(username)){
			
			loginLog.setLoginState("2");
			mav.addObject("msg","用户名不存在!");
			mav.setViewName("login/admin");
			loginService.save(loginLog);
			return mav;
		}
		list = loginService.doLogin(username, password);
		Integer id = 0;
		if(!list.isEmpty()){
			id = list.get(0).getId();
		}
		List<SystemPower> powerList = systemPowerService.findPower(SystemUtils.getLoginUserId(request), null);
		Long firstId = (powerList.size() > 0) ? powerList.get(0).getId() : 0L;
		mav.addObject("firstId", firstId);
		if(list.isEmpty()){
			mav.addObject("msg","用户名或密码错误!");
			mav.setViewName("login/admin");
			loginLog.setLoginState("3");
			loginService.save(loginLog);
			return mav;
		}else {
			User user = loginService.findByid(id);
			 clientIp = sysutil.getIpAddr(request);//获取客户端IP地址
		
			//更新用户登录次数
			Integer loginnum = list.get(0).getLoginTimes();//查询登录次数
			if (loginnum == null) {
				loginnum = 0;
			}
			loginnum++;
			user.setId(id);
			user.setLoginTimes(loginnum);
			user.setLastLoginIp(clientIp);
			user.setLastLoginTime(d);
			session.setAttribute("userId", user.getId());
			session.setAttribute("userName", user.getUserName());
			session.setAttribute("trueName", user.getTrueName());
			
			//后台登录信息
			Map<String,Object> map = new HashMap<String, Object>();
			Integer userid = SystemUtils.getLoginUserId(request);
			String usergroup= loginService.usergroup(userid.toString());
			
			map.put("usergroup", usergroup);//用户组
			map.put("loginnum", loginnum.toString());//登录次数
			Date da1 = list.get(0).getLastLoginTime();
			String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(da1);
			//map.put("loginInfo", list.get(0));
			map.put("lastlogintime", format);//最后登录时间
			map.put("clientIp", clientIp);//客户登录Ip
			
			//系统信息
			Properties props=System.getProperties();
			map.put("version", props.getProperty("java.version"));//jdk版本
			map.put("os", props.getProperty("os.name"));//操作系统版本
			map.put("servername", request.getServerName());
			session.setAttribute("map", map);
			loginService.updateAdminUser(user);
			mav.setViewName("redirect:/login/home?firstId="+firstId);
			loginLog.setLoginState("1");
			loginService.save(loginLog);
			
			
			//查询统计信息
			Integer dayVisitCount = vsService.getDayVisitCount();//日访问量
			Integer dayLookCount = vsService.getDayLookCount();//日浏览量
			Integer yesterdayVisitCount = vsService.getYesterdayVisitCount();//昨日访问量
			Integer yesterdayLookCount = vsService.getYesterdayLookCount();//昨日浏览量
			Integer contCount = contService.findContCount();//总文章数; 
			Integer memberCount = memberService.findMemberCount();//总用户(前台 客户)
			
			request.getSession().setAttribute("dayVisitCount", dayVisitCount);
			request.getSession().setAttribute("dayLookCount", dayLookCount);
			request.getSession().setAttribute("yesterdayVisitCount", yesterdayVisitCount);
			request.getSession().setAttribute("yesterdayLookCount", yesterdayLookCount);
			request.getSession().setAttribute("contCount", contCount);
			request.getSession().setAttribute("memberCount", memberCount);
			
			return mav;
		}
	}
	/**
	 * 新增测试
	 * @author xurannan
	 * 2014年5月21日 下午11:53:58
	 */
	@RequestMapping("/login/test")
	public ModelAndView saveArticle(User user,HttpServletRequest request) {
		loginService.save(user);
		ModelAndView mav = new ModelAndView();
		mav.addObject("column", user);
		mav.setViewName("login/test");
		return mav;
	}
	/**
	 * 
	 * @Title: addCertPic
	 * @Description: TODO生成验证码图片并且把验证码保存到session中
	 * @author sunJingYang
	 * @date 2014-9-23 下午03:22:36
	 * @param response
	 */
	@RequestMapping("/login/addCertPic")
	public void addCertPic(HttpServletResponse response){
		try {
			String verifycode=makeCertPic.getCertPic(0, 0, response.getOutputStream());
			session.setAttribute("verifycode", verifycode);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping("/login/loginVerify")
	public Map<String,Object> loginVerify(HttpServletRequest request){
		String userName = request.getParameter("username");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Integer count = loginService.loginVerify(userName);
			map.put("count", count);
		} catch (Exception e) {
			map.put("count", "error");
		}
		return  map;
	}
	
	/**
	 * 
	 * @Title: checkVerifycode
	 * @Description: TODO(异步验证验证码输入是否正确，返回结果0表示不正确，1表示正确)
	 * @author sunJingYang
	 * @date 2014-9-23 下午03:31:22
	 * @param response
	 * @param code
	 */
	@RequestMapping("/login/checkVerifycode/{checkVerifycode}")
	public void checkVerifycode(HttpServletResponse response,@PathVariable("checkVerifycode") String code){
		
		int result=0;
		PrintWriter out=null;
		if(session.getAttribute("verifycode").toString().equals(code)){
			result=1;
		}
		try {
			if(out==null){
				out=response.getWriter();
			}
			out.print(result);
			out.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(out!=null){
				out.close();
			}
		}
	}
	
	/**
	 * 
	 * @Title: authChecks
	 * @Description: 跳转到授权页面
	 * @author sunjinyang
	 * @date 2014-12-11 下午01:59:32
	 * @return
	 */
	@RequestMapping("login/authCheck")
	public ModelAndView authChecks(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("system/authCheck");
		return mav;
	}
	
	
}
/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-12-7 下午03:47:07
 * @version V1.0
 */
package cn.tvcms.cms.system.controller;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import cn.tvcms.cms.common.query.CombinationQuery;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.common.utils.TVMD;
import cn.tvcms.cms.pojo.Authorization;
import cn.tvcms.cms.pojo.MessagePush;
import cn.tvcms.cms.system.service.MessagePushService;

/**
 * @ClassName: MessagePushController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author sunjinyang
 * @date 2014-12-7 下午03:47:07
 * 
 */
@Controller
public class MessagePushController {
	
	
	@Autowired
	private QueryPaging queryPaging;
	
	@Autowired
	private MessagePushService messagePushService;
	
	/**
	 * 
	 * @Title: findMessagePush
	 * @Description: 查询系统公告
	 * @author sunjinyang
	 * @date 2014-12-7 下午03:54:41
	 * @param request
	 * @param messagePush
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("system/MessagePushController/findMessagePush")
	public ModelAndView findMessagePush(HttpServletRequest request,MessagePush messagePush) throws Exception{
		ModelAndView mav=new ModelAndView();
		String sendTime=SystemUtils.getParameter(request, "sendTimes");
		if(sendTime!=null&&!sendTime.equals(""))
			messagePush.setSendTime(DateTools.getDate(sendTime));
		String hql=CombinationQuery.queryHql(MessagePush.class, messagePush);
		hql+="order by sendTime desc";
		Map<String, Object> map=queryPaging.query(hql, request, MessagePush.class);
		mav.addObject("msg",messagePush);
		mav.addObject("paging",map);
		mav.setViewName("system/queryMessagePush");
		return mav;
	}
	
	/**
	 * 
	 * @Title: findAuthById
	 * @Description: 查询本系统的授权信息
	 * @author sunjinyang
	 * @date 2014-12-11 下午12:13:00
	 * @return
	 * @throws Exception 
	 */
    @RequestMapping("system/MessagePushController/findAuth")
    	public ModelAndView findAuthById() throws Exception{
    		ModelAndView mav=new ModelAndView();
    		Authorization authorization=messagePushService.findAuth();
    		String time=TVMD.jieMi(authorization.getEndTime());
    		time=time.substring(0,4)+"-"+time.substring(4,6)+"-"+time.substring(6);
    		authorization.setEndTime(time);
    		long nd = 1000*24*60*60;//一天的毫秒数
    		Date endTime=DateTools.getDate(time);
    		long diff=endTime.getTime()-new Date().getTime();
    		long day=diff/nd;
    		String times="";
    		times+=day/365+"年";
    		times+=(day%365)/30+"月";
    		times+=(day%365)%30+1+"天";
    		mav.setViewName("system/queryAuth");
    		mav.addObject("auth",authorization);
    		mav.addObject("times",times);
    		return mav;
    	}
    
    /**
     * 
     * @Title: CheckCode
     * @Description: 验证授权码
     * @author sunjinyang
     * @date 2014-12-11 下午01:49:42
     * @param request
     * @return
     */
    @RequestMapping("/login/messagePushController/CheckCode")
    public ModelAndView CheckCode(HttpServletRequest request){
    	ModelAndView mav=new ModelAndView();
    	String returnString="";
    	String forward="";
    	Authorization authorization=messagePushService.findAuth();
    	if(authorization==null){
    		returnString="您的系统还未授权，请联系管理员！";
    		forward="/login/admin";
    	}else{
    		String code=SystemUtils.getParameter(request, "code");
    		if(!code.equals(authorization.getCode())){
    			returnString="您的授权输入有误！，请重新输入";
    			forward="/login/authCheck";
    		}else{
    			authorization.setIsCheck("1");
    			messagePushService.updateAuth(authorization);
    			returnString="恭喜您，校验成功！";
    			forward="/login/admin";
    		}
    	}
    	mav.addObject("returnString",returnString);
    	mav.addObject("url",forward);
    	mav.setViewName("system/returnAlert");
    	return mav;
    }
    

}

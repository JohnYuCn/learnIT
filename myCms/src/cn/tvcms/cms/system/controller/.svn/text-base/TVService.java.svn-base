/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2015-3-3 上午10:15:22
 * @version V1.0
 */
package cn.tvcms.cms.system.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.common.utils.TVMD;
import cn.tvcms.cms.pojo.Authorization;
import cn.tvcms.cms.pojo.MessagePush;
import cn.tvcms.cms.system.service.WSService;

/**
 * @ClassName: TVService
 * @Description: 系统授权与消息推送
 * @author sunjinyang
 * @date 2015-3-3 上午10:15:22
 * 
 */
@Controller
public class TVService {
	@Autowired
	private WSService wsService;
	@RequestMapping("/plugin/webservice/grantAuthorization")
	public ModelAndView grantAuthorization(HttpServletRequest request) throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("system/tvserviceJumpView");
		String returnUrl=request.getParameter("returnUrl");
		mav.addObject("returnUrl",returnUrl);
		Authorization authorization=new Authorization();
		String domainName=request.getParameter("domainName");
		if(domainName!=null&&!domainName.equals("")){
			authorization.setDomainName(domainName);
		}
		System.out.println("==========="+request.getParameter("aaaaa"));
		String code=request.getParameter("code");
		if(code!=null&&!code.equals("")){
			authorization.setCode(code);
		}
		
		String type=request.getParameter("types1");
		if(type!=null&&!type.equals("")){
			authorization.setType(type);
		}
		
		String status=request.getParameter("statuss1");
		if(status!=null&&!status.equals("")){
			authorization.setStatus(status);
		}
		
		String endTime=request.getParameter("endTimes");
		if(endTime!=null&&!endTime.equals("")){
			authorization.setEndTime(DateTools.getDateyyMMdd(DateTools.getDate(endTime)));
			authorization.setEndTime(TVMD.md(Integer.parseInt(authorization.getEndTime())));
		}
		
		String startTime=request.getParameter("startTimes");
		if(startTime!=null&&!startTime.equals("")){
			authorization.setStartTime(DateTools.getDate(startTime));
		}
		wsService.updateAuth(authorization);
	    return mav;
		
	}
	
	/**
	 * 
	 * @Title: addMsg
	 * @Description:异步保存消息推送
	 * @author sunjinyang
	 * @date 2015-3-9 下午03:50:35
	 * @param request
	 */
	@RequestMapping("/plugin/webservice/addMsg")
	public void addMsg(HttpServletRequest request){
		String title=SystemUtils.getParameter(request, "title");
		String content=SystemUtils.getParameter(request, "content");
		MessagePush messagePush=new MessagePush();
		messagePush.setContent(content);
		messagePush.setTitle(title);
		messagePush.setSendTime(new Date());
		wsService.saveMsg(messagePush);
	}

}

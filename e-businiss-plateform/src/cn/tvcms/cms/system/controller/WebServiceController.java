/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-12-31 上午11:10:26
 * @version V1.0
 */
package cn.tvcms.cms.system.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.pojo.Authorization;
import cn.tvcms.cms.pojo.MessagePush;
import cn.tvcms.cms.system.service.WSService;

/**
 * @ClassName: WebServiceController
 * @Description: 提供其他项目访问
 * @author sunjinyang
 * @date 2014-12-31 上午11:10:26
 * 
 */
@Controller
public class WebServiceController {
	@Autowired
	private WSService wsService;
	
	
	/**
	 * 
	 * @Title: grantAuthorization
	 * @Description:异步接收来自crm的授权信息
	 * @author sunjinyang
	 * @date 2014-12-31 上午11:15:48
	 * @return
	 * @throws Exception 
	 */
	/*@RequestMapping("/webservice/grantAuthorization")
	public Map<String, String> grantAuthorization(HttpServletRequest request) throws Exception{
		Map<String, String> map=new HashMap<String, String>();
		Authorization authorization=new Authorization();
		String domainName=request.getParameter("domainName");
		if(domainName!=null&&!domainName.equals("")){
			authorization.setDomainName(domainName);
		}
		
		String code=request.getParameter("code");
		if(code!=null&&!code.equals("")){
			authorization.setCode(code);
		}
		
		String type=request.getParameter("type");
		if(type!=null&&!type.equals("")){
			authorization.setType(type);
		}
		
		String status=request.getParameter("status");
		if(status!=null&&!status.equals("")){
			authorization.setStatus(status);
		}
		
		String endTime=request.getParameter("endTime");
		if(endTime!=null&&!endTime.equals("")){
			authorization.setEndTime(endTime);
		}
		
		String startTime=request.getParameter("startTime");
		if(startTime!=null&&!startTime.equals("")){
			authorization.setStartTime(DateTools.getDate(startTime));
		}
		try {
			wsService.updateAuth(authorization);
			map.put("result", "1");
		} catch (Exception e) {
			map.put("result", "0");
		}
		map.put("tv", "tv");
		return map;
	}
	
	
	*//**
	 * 
	 * @Title: addMessage
	 * @Description: 异步接收消息推送
	 * @author sunjinyang
	 * @date 2015-1-4 上午11:31:51
	 * @param request
	 * @return
	 * @throws Exception
	 *//*
	@RequestMapping("/webservice/addMessage")
	public Map<String, String> addMessage(HttpServletRequest request) throws Exception{
		Map<String, String> map=new HashMap<String, String>();
		MessagePush messagePush=new MessagePush();
		String domainName=request.getParameter("domainName");
		messagePush.setDomainName(domainName);
		String content=request.getParameter("content");
		messagePush.setContent(content);
		String sendTime=request.getParameter("sendTime");
		if(sendTime!=null&&!sendTime.equals("")){
			messagePush.setSendTime(DateTools.getDateTime(sendTime));
		}
		String title=request.getParameter("title");
		messagePush.setTitle(title);
		try {
			wsService.addMessagePush(messagePush);
			map.put("result", "1");
		} catch (Exception e) {
			map.put("result", "0");
		}
		map.put("tv", "tv");
		return map;
		
	}*/
	

}

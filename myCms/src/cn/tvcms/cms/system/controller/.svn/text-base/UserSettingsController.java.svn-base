/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author xurannan
 * @version V1.0
 */
package cn.tvcms.cms.system.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.pojo.UserSet;
import cn.tvcms.cms.system.service.UserSettingsService;

/** 
 * @author xurannan
 * @version create time：2014年5月24日 下午7:09:23 
 * 
 */
@Controller
public class UserSettingsController {
	
@SuppressWarnings("unused")
private static final  Log log = LogFactory.getLog(UserSettingsController.class);
	
	@Autowired
	private UserSettingsService usersettingsservice ;
	
	/**
	 * 返回用户设置页面
	 * @author xurannan
	 * 2014年5月28日 下午11:59:59
	 */
	@RequestMapping("/system/UserSettings")
	public ModelAndView doUserSetPage( HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		List<UserSet> list = usersettingsservice.findAll();
		if(!list.isEmpty()){
			mav.addObject("userset", list.get(0));
		}
		mav.setViewName("system/UserSettings");
		return mav;
	}
	
	/**
	 * 保存用户设置
	 * @author xurannan
	 * 2014年5月29日 上午12:01:26
	 */
	@RequestMapping("/system/saveUserSet")
	@ResponseBody
	public Object saveUserSet(UserSet userset, HttpServletRequest request) {
		String returnString="success";
		try {
			usersettingsservice.saveOrUpdate(userset);
		} catch (Exception e) {
			returnString="error";
			e.printStackTrace();
		}
		return returnString;	
	}

}

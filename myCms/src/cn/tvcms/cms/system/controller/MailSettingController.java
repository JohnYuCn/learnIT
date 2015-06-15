/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014-11-15 下午02:29:21
 * @version V1.0
 */
package cn.tvcms.cms.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.pojo.MailUtil;
import cn.tvcms.cms.system.service.MailSettingService;

/**
 * @ClassName: MailSettingController
 * @Description: 邮件设置
 * @author lp
 * @date 2014-11-15 下午02:29:21
 * 
 */
@Controller
public class MailSettingController {

	@Autowired
	private MailSettingService mailSettingService;

	@RequestMapping("/mail/find")
	public ModelAndView find() throws Exception {
		ModelAndView mav = new ModelAndView();
		MailUtil mailUtil = mailSettingService.findMailUtil();
		mav.addObject("mailUtil", mailUtil);
		mav.setViewName("system/mailSetting");
		return mav;
	}

	@RequestMapping("/mail/saveOrUpdate")
	public ModelAndView saveOrUpdate(MailUtil mailUtil) throws Exception {
		ModelAndView mav = new ModelAndView();
		if(mailUtil.getId() == null){
			mailUtil.setId(null);
		}
		mailSettingService.saveOrUpdate(mailUtil);
		mav.addObject("mailUtil", mailUtil);
		mav.addObject("url", "/mail/find");
		mav.addObject("returnString", "操作成功");
		mav.setViewName("system/returnAlert");
		return mav;
	}
}

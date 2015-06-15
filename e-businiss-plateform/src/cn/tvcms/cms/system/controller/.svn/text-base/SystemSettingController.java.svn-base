/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
 * @version V1.0
 */
package cn.tvcms.cms.system.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.pojo.SystemSetting;
import cn.tvcms.cms.system.service.SystemSettingService;


/**
 * 系统设置controller
 * @author lianpeng
 *
 */

@Controller
public class SystemSettingController {
	
	@SuppressWarnings("unused")
	private static final  Log log = LogFactory.getLog(SystemSettingController.class);
	
	@Autowired
	private SystemSettingService  systemSettingService;
	
	
	/**
	 * 查询系统设置
	 * @return mav对象
	 * @author lianpeng
	 */
	@RequestMapping("/system/setting")
	public ModelAndView viewSystemSetting(){
		
		SystemSetting  systemSetting = new SystemSetting();
		List<SystemSetting> list = systemSettingService.findAll();
		ModelAndView mav = new ModelAndView();
		
		if(list.size() > 0){
			systemSetting = list.get(0);
			mav.addObject("systemSetting", systemSetting);
		};
		
		mav.setViewName("system/setting");
		return mav;
	}
	
	/**
	 * 保存和更新系统设置
	 * @param systemSetting
	 * @return mav对象
	 * @author lianpeng
	 */
	@RequestMapping("/system/setting/saveorupdate")
	@ResponseBody
	public Object saveAndUpdat(SystemSetting systemSetting){
		String returnString="success";
		try {
			Integer  id = systemSetting.getId();
			systemSettingService.saveOrUpdate(systemSetting);
			if(!"".equals(id) && id != 0){
				systemSetting.setId(id);
				
			}
		} catch (Exception e) {
			returnString="error";
			e.printStackTrace();
		}
		return returnString;
	}
	

}

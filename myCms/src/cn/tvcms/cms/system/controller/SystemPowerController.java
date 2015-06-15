/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.system.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.pojo.SystemPower;
import cn.tvcms.cms.system.service.SystemPowerService;

/** 
 * 系统权限Controller。
 * @author suntao 
 * @version create time：2014年6月1日 下午3:16:45 
 * 
 */
@Controller
public class SystemPowerController {
	@SuppressWarnings("unused")
	private static final  Log log = LogFactory.getLog(SystemPowerController.class);
	
	@Autowired
	private SystemPowerService systemPowerService;
	
	/**
	 * 生成系统权限管理界面。
	 *
	 * @author suntao
	 * 2014-6-11 下午9:28:40
	 */
	@RequestMapping("/system/PowerSetting")
	public ModelAndView createPage() throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("system/powerSetting");
		return mav;
	}
	
	/**
	 * 生成系统权限管理界面。
	 *
	 * @author suntao
	 * 2014-6-11 下午9:30:35
	 */
	@RequestMapping("/system/PowerSetting/load")
	public List<SystemPower> load() throws Exception {
		return systemPowerService.findAll();
	}
	
	/**
	 * 保存功能。
	 *
	 * @author suntao
	 * 2014-6-11 下午9:35:35
	 */
	@RequestMapping("/system/PowerSetting/save")
	public void save(HttpServletRequest request) throws Exception {
		String str = SystemUtils.getParameter(request, "id");
		SystemPower systemPower = null;
		if (str == null || str.length() == 0) {
			systemPower = new SystemPower();
			systemPower.setIsDeleted(0);
			systemPower.setCreateTime(new Date());
			systemPower.setCreateUserId(SystemUtils.getLoginUserId(request));
			
			str = SystemUtils.getParameter(request, "parentId");
			if (str != null && str.length() > 0) systemPower.setParentId(Integer.parseInt(str));
		} else {
			systemPower = systemPowerService.findById(Integer.parseInt(str));
			systemPower.setModifyTime(new Date());
			systemPower.setModifyUserId(SystemUtils.getLoginUserId(request));
		}
		
		systemPower.setName(SystemUtils.getParameter(request, "name"));
		systemPower.setEnterUrl(SystemUtils.getParameter(request, "enterUrl"));
		systemPower.setOtherUrl(SystemUtils.getParameter(request, "otherUrl"));
		systemPower.setImgPath(SystemUtils.getParameter(request, "imgPath"));
		str = SystemUtils.getParameter(request, "sort");
		if (str != null && str.length() > 0) systemPower.setSort(Integer.parseInt(str));
		str = SystemUtils.getParameter(request, "isVisible");
		if (str != null && str.length() > 0) systemPower.setIsVisible(Integer.parseInt(str));
		
		systemPowerService.save(systemPower);
		//return systemPower;
	}
	
	/**
	 * 删除功能。
	 *
	 * @author suntao
	 * 2014-6-11 下午9:37:12
	 */
	@RequestMapping("/system/PowerSetting/del")
	public void del(HttpServletRequest request) throws Exception {
		String str = SystemUtils.getParameter(request, "id");
		if (str != null && str.length() > 0) {
			SystemPower systemPower = systemPowerService.findById(Integer.parseInt(str));
			systemPower.setDeleteTime(new Date());
			systemPower.setDeleteUserId(SystemUtils.getLoginUserId(request));
			systemPower.setIsDeleted(1);
			systemPowerService.save(systemPower);
		}
	}
}

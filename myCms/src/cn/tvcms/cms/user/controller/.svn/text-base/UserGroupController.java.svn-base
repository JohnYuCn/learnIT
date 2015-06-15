/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.user.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.pojo.UserGroup;
import cn.tvcms.cms.pojo.UserGroupPower;
import cn.tvcms.cms.user.service.UserGroupService;

/** 
 * 系统权限Controller。
 * @author suntao 
 * @version create time：2014年6月13日 下午9:03:15
 * 
 */
@Controller
public class UserGroupController {
	@SuppressWarnings("unused")
	private static final  Log log = LogFactory.getLog(UserGroupController.class);
	
	@Autowired
	private UserGroupService userGroupService;
	
	@Autowired
	private QueryPaging quertPaging;
	
	/**
	 * 生成系统权限管理界面。
	 *
	 * @author suntao
	 * 2014-6-11 下午9:28:40
	 */
	@RequestMapping("/user/group")
	public ModelAndView createPage(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		String sqlWhere="from UserGroup where isDeleted=0";
//		List<UserGroup> list = userGroupService.findAll();
		Map<String, Object> map=quertPaging.query(sqlWhere, request, UserGroup.class);
//		mav.addObject("list", list);
		mav.addObject("paging",map);
		mav.setViewName("user/group");
		return mav;
	}
	
	/**
	 * 保存。
	 *
	 * @author suntao
	 * 2014-6-13 下午9:29:24
	 */
	@RequestMapping("/user/group/save")
	public void save(HttpServletRequest request) throws Exception {
		String str = SystemUtils.getParameter(request, "id");
		UserGroup userGroup = null;
		if (str == null || str.length() == 0) {
			userGroup = new UserGroup();
			userGroup.setIsDeleted(0);
			userGroup.setCreateTime(new Date());
			userGroup.setCreateUserId(SystemUtils.getLoginUserId(request));
		} else {
			userGroup = userGroupService.findById(Integer.parseInt(str));
			userGroup.setModifyTime(new Date());
			userGroup.setModifyUserId(SystemUtils.getLoginUserId(request));
		}
		
		userGroup.setName(SystemUtils.getParameter(request, "name"));
		
		String[] powerIdStr = SystemUtils.getParameterValues(request, "powerId[]");
		int[] powerId = null;
		if (powerIdStr != null && powerIdStr.length > 0) {
			powerId = new int[powerIdStr.length];
			for (int i = 0; i < powerIdStr.length; i++) {
				powerId[i] = Integer.parseInt(powerIdStr[i]);
			}
		}
		
		userGroupService.save(userGroup, powerId);
	}
	
	/**
	 * 获取用户组信息。
	 *
	 * @author suntao
	 * 2014-6-13 下午9:26:58
	 */
	@RequestMapping("/user/group/detail")
	public Map<String, Object> detail(int id) throws Exception {
		UserGroup userGroup = userGroupService.findById(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", userGroup.getName());
		List<UserGroupPower> powerList = userGroupService.findGroupPower(id);
		Integer[] powerId = new Integer[powerList.size()];
		int i = 0;
		for (UserGroupPower power : powerList) {
			powerId[i++] = power.getPowerId();
		}
		map.put("powerId", powerId);
		return map;
	}
	
	/**
	 * 删除。
	 *
	 * @author suntao
	 * 2014-6-13 下午9:35:22
	 */
	@RequestMapping("/user/group/del")
	public void del(HttpServletRequest request) throws Exception {
		String str = SystemUtils.getParameter(request, "id");
		if (str != null && str.length() > 0) {
			UserGroup userGroup = userGroupService.findById(Integer.parseInt(str));
			userGroup.setDeleteTime(new Date());
			userGroup.setDeleteUserId(SystemUtils.getLoginUserId(request));
			userGroup.setIsDeleted(1);
			userGroupService.save(userGroup);
		}
	}
}

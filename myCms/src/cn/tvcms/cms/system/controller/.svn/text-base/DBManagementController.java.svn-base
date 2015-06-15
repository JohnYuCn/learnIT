/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-11-3 上午09:28:24
 * @version V1.0
 */
package cn.tvcms.cms.system.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.query.FieldManagement;
import cn.tvcms.cms.common.utils.MessageUtils;
import cn.tvcms.cms.pojo.TableClassMapping;
import cn.tvcms.cms.pojo.columnAttributeMapping;

/**
 * @ClassName: DBManagementController
 * @Description: 数据库管理的控制器
 * @author sunjinyang
 * @date 2014-11-3 上午09:28:24
 * 
 */
@Controller
public class DBManagementController {
	
	@Autowired
	private FieldManagement fieldManagement;
	
	/**
	 * 
	 * @Title: findAllDB
	 * @Description: 查看所有数据库表
	 * @author sunjinyang
	 * @date 2014-11-3 上午09:32:16
	 * @return
	 * @throws SQLException 
	 */
	@RequestMapping("/system/dbManagementController/findAllDB")
	public ModelAndView findAllDB() throws Exception{
		ModelAndView mav=new ModelAndView();
		List<TableClassMapping> list=fieldManagement.findAllDB(MessageUtils.getMessage("hibernateXml"));
		mav.addObject("list", list);
		mav.setViewName("system/queryDBAndClass");
		return mav;
	}
	
	/**
	 * 
	 * @Title: findAllField
	 * @Description:查看数据库表的详情信息
	 * @author sunjinyang
	 * @date 2014-11-3 上午11:06:32
	 * @param className
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/system/dbManagementController/findAllField/{className}")
	public ModelAndView findAllField(@PathVariable("className") String className) throws Exception{
		ModelAndView mav=new ModelAndView();
		List<columnAttributeMapping> list=fieldManagement.findAllColumn(className,MessageUtils.getMessage("hibernateXml"));
		mav.addObject("list",list);
		mav.setViewName("system/queryClassField");
		return mav;
	}

}

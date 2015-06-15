/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.common.utils;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

/** 
 *
 * @author Administrator 
 * @version create time：2014年5月18日 下午5:21:22 
 * 
 */
public class SystemUtils {
    private static ServletContext servletContext;
	
	/**
	 * 获取参数。
	 * @author suntao
	 * 2014年6月1日 下午1:43:21
	 * 
	 * @param request
	 * @param paramName 参数名
	 * @return 参数值
	 */
	public static String getParameter(HttpServletRequest request, String paramName) {
		return request.getParameter(paramName);
	}
	
	/**
	 * 获取参数。
	 *
	 * @author suntao
	 * 2014-6-13 下午9:55:04
	 */
	public static String[] getParameterValues(HttpServletRequest request, String paramName) {
		return request.getParameterValues(paramName);
	}
	
	/**
	 * 获取登录用户的ID。
	 * @author suntao
	 * 2014年6月1日 下午1:44:38
	 * @param request
	 * @return 登录用户的ID
	 */
	public static Integer getLoginUserId(HttpServletRequest request) {
		Object obj = request.getSession().getAttribute("userId");
		return (obj == null) ? null : (Integer)obj;
	}
	
	/**
	 * 获取应用的物理安装路径。
	 * @Title: getWebAppRealPath
	 * @Description: 获取应用的物理安装路径。
	 * @author suntao
	 * @date 2014-9-6 下午04:25:13
	 * @param request
	 * @return
	 */
	public static String getWebAppRealPath(HttpServletRequest request) {
		if (request != null) {
			return request.getSession().getServletContext().getRealPath("/");
		} else if (servletContext != null) {
			return servletContext.getRealPath("/");
		}
		return null;
	}
	
	/**
	 * 获取客户端IP地址
	 * @author xurannan
	 * 2014年6月1日 下午4:16:23
	 */
	public static String getIpAddr(HttpServletRequest request) { 
	       String ip = request.getHeader("x-forwarded-for"); 
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	           ip = request.getHeader("Proxy-Client-IP"); 
	       } 
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	           ip = request.getHeader("WL-Proxy-Client-IP"); 
	       } 
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	           ip = request.getRemoteAddr(); 
	       } 
	       return ip; 
	   } 
	
	/**
	 * 设置ServletContext。
	 * @Title: setServletContext
	 * @Description: 设置ServletContext。
	 * @author suntao
	 * @date 2014-9-20 下午01:45:29
	 * @param servletContext
	 */
	public static void setServletContext(ServletContext servletContext) {
		SystemUtils.servletContext = servletContext;
	}
	
	/**
	 * @Title: isNum
	 * @Description: 判断字符串是否是数字
	 * @author lp
	 * @date 2014-12-11 下午09:40:30
	 * @param str
	 * @return
	 */
	public static boolean isNum(String str){
		return str.matches("^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$");
	}
}
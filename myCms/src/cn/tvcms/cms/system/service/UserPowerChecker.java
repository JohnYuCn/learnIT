/**
 * @Project: 特维内容管理系统
 * @Description: 用户权限检查器。
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author suntao
 * @date 2014-9-6 下午02:20:06
 * @version V1.0
 */
package cn.tvcms.cms.system.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @ClassName: UserPowerChecker
 * @Description: 用户权限检查器。
 * @author suntao
 * @date 2014-9-6 下午02:20:06
 * 
 */
public class UserPowerChecker implements Serializable {

	private static final long serialVersionUID = 1L;

	private long operTime;
	
	/**
	 * 普通URL。
	 */
	private Set<String> strUrl = new HashSet<String>();
	
	/**
	 * 含有正则表达式的URL。
	 */
	private List<Pattern> regexUrl = new ArrayList<Pattern>();
	
	/**
	 * 获取最后一次对权限添加、修改、删除的时间。
	 * @Title: setOperTime
	 * @Description: 获取最后一次对权限添加、修改、删除的时间。
	 * @author suntao
	 * @date 2014-9-6 下午03:54:40
	 * @param operTime
	 */
	public void setOperTime(long operTime) {
		this.operTime = operTime;
	}
	
	/**
	 * 设置最后一次对权限添加、修改、删除的时间。
	 * @Title: getOperTime
	 * @Description: 设置最后一次对权限添加、修改、删除的时间。
	 * @author suntao
	 * @date 2014-9-6 下午03:55:29
	 * @return
	 */
	public long getOperTime() {
		return operTime;
	}
	
	/**
	 * 添加URL。
	 * @Title: addUrl
	 * @Description: 添加URL。
	 * @author suntao
	 * @date 2014-9-6 下午02:27:38
	 * @param url
	 */
	public void addUrl(String url) {
		if (url == null) {
			return;
		}
		url = url.trim();
		if (url.length() == 0) {
			return;
		}
		
		url = process(url);
		
		if (url.contains("*")) {
			url = url.replaceAll("\\*", "([\\\\s\\\\S]*)");
			url = "^" + url + "$";
			Pattern pattern = Pattern.compile(url);
			regexUrl.add(pattern);
		} else {
			strUrl.add(url);
		}
	}
	
	/**
	 * 判断是否有权限访问url。
	 * @Title: check
	 * @Description: 判断是否有权限访问url。
	 * @author suntao
	 * @date 2014-9-6 下午02:29:42
	 * @param url
	 * @return 如果有访问权限放回true，否则返回false。
	 */
	public boolean check(String url) {
		if (url == null) {
			return false;
		}
		url = url.trim();
		if (url.length() == 0) {
			return false;
		}
		
		url = process(url);
		
		if (strUrl.contains(url)) {
			return true;
		}
		
		for (Pattern pattern : regexUrl) {
			Matcher matcher = pattern.matcher(url);
			if (matcher.matches()) {
				return true;
			}
		}
		
		return false;
	}
	
	/**
	 * 处理URL，把最后一个.和?之后的内容去除。
	 * @Title: process
	 * @Description: 处理URL，把最后一个.和?之后的内容去除。
	 * @author suntao
	 * @date 2014-9-6 下午02:41:25
	 * @param url
	 * @return
	 */
	private String process(String url) {
		int splashIdx = url.lastIndexOf('/');
		
		int dotIdx = url.indexOf('.', splashIdx);
		if (dotIdx > 0) {
			url = url.substring(0, dotIdx);
		} else {
			int questionIdx = url.indexOf('?', splashIdx);
			if (questionIdx > 0) {
				url = url.substring(0, questionIdx);
			}
		}
		return url;
	}
	
}

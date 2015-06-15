/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.common.utils;

import java.util.Locale;

import org.springframework.context.support.AbstractMessageSource;

/**
 * 用户获取message配置信息的工具类。
 * @author suntao
 *
 */
public class MessageUtils {

    private static AbstractMessageSource messageSource;
	
	static {
		messageSource = (AbstractMessageSource)SpringUtils.getBean("messageSource");
	}
	
	/**
	 * 获取messages.properties文件中的配置信息。
	 * @param key 
	 * @return
	 */
	public static String getMessage(String key) {
		return messageSource.getMessage(key, null, Locale.getDefault());
	}
	
	/**
	 *  获取messages.properties文件中的配置信息。
	 * @param key
	 * @param args 填充的参数。
	 * @return
	 */
	public static String getMessage(String key, Object... args) {
		return messageSource.getMessage(key, args, Locale.getDefault());
	}
}

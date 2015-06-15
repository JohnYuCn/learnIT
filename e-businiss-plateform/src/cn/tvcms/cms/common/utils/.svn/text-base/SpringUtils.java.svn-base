/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.common.utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * Spring的工具类，可用于根据Bean Id获取Bean实例。
 * @author suntao
 *
 */
public class SpringUtils implements ApplicationContextAware {

	private static ApplicationContext ctx;

	/**
	 * 设置ApplicationContext。
	 */
	@Override
	public void setApplicationContext(ApplicationContext ctx)
			throws BeansException {
		SpringUtils.ctx = ctx;
	}

	/**
	 * 根据bean id从spring获取bean。
	 * @param id bean的id
	 * @return
	 */
	public static Object getBean(String id) {
		return ctx.getBean(id);
	}
}

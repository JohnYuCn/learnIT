/**
 * @Project: 特维内容管理系统
 * @Description: 系统监听器。
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author suntao
 * @date 2014-9-20 下午01:42:28
 * @version V1.0
 */
package cn.tvcms.cms.common.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import cn.tvcms.cms.common.utils.SystemUtils;

/**
 * @ClassName: SystemContextListener
 * @Description: 系统监听器。
 * @author suntao
 * @date 2014-9-20 下午01:42:28
 * 
 */
public class SystemContextListener implements ServletContextListener {

	

	/* (非 Javadoc)
	 * <p>Title: contextInitialized</p>
	 * <p>Description: 系统初始化</p>
	 * @author suntao
	 * @param event
	 * @see javax.servlet.ServletContextListener#contextInitialized(javax.servlet.ServletContextEvent)
	 */
	@Override
	public void contextInitialized(ServletContextEvent event) {
		SystemUtils.setServletContext(event.getServletContext());
		
	}

	/* (非 Javadoc)
	 * <p>Title: contextDestroyed</p>
	 * <p>Description: 系统关闭</p>
	 * @author suntao
	 * @param arg0
	 * @see javax.servlet.ServletContextListener#contextDestroyed(javax.servlet.ServletContextEvent)
	 */
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		
	}
}

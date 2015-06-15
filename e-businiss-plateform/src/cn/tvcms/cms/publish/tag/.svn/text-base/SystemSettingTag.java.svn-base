/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.tvcms.cms.common.utils.SpringUtils;
import cn.tvcms.cms.pojo.SystemSetting;
import cn.tvcms.cms.system.service.SystemSettingService;

/** 
 * 系统信息Tag。
 * @author suntao 
 * @version create time：2014-7-6 下午04:21:17 
 * 
 */
public class SystemSettingTag extends TagSupport {
	private static final Log log = LogFactory.getLog(SystemSettingTag.class);
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String attr;
	
	/**
	 * 获取属性。
	 *
	 * @author suntao
	 * 2014-7-13 上午11:47:47
	 */
	public String getAttr() {
		return attr;
	}
	
	/**
	 * 设置属性。
	 * @param attr 属性名称。
	 * @author suntao
	 * 2014-7-13 上午11:48:21
	 */
	public void setAttr(String attr) {
		this.attr = attr;
	}

	@Override
	public int doStartTag() {   
		try {   
			Object value = null;
			if ("root".equals(attr)) {
				HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
				String root = request.getContextPath();
				if ("/".equals(root)) {
					value = "";
				} else {
					value = root;
				}
			} else if ("url".equals(attr)) {
				HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
				value = request.getAttribute("_url");
			} else {
				SystemSettingService systemSettingService = (SystemSettingService)SpringUtils.getBean("systemSettingService");
			    SystemSetting systemSetting = systemSettingService.findById(1);
			    
			    value = PropertyUtils.getProperty(systemSetting, attr);
			}
			
			if (value == null) {
				value = "";
			}
			
		    JspWriter jspWriterOutput = pageContext.getOut();
			jspWriterOutput.print(value);
		} catch (Exception e) {   
			log.warn(e.getMessage(), e);
		}
		return (SKIP_BODY);   
	}
}

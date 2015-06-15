/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.common.spring;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UrlPathHelper;
import org.springframework.web.util.WebUtils;

import cn.tvcms.cms.common.BizException;

public class ExceptionResolver implements HandlerExceptionResolver {
    private static final Log log = LogFactory.getLog(ExceptionResolver.class);
	
	private UrlPathHelper urlPathHelper = new UrlPathHelper();
	
	private String getExtensionFromFilename(String filename) {
		String extension = StringUtils.getFilenameExtension(filename);
		if (!StringUtils.hasText(extension)) {
			return null;
		}
		extension = extension.toLowerCase(Locale.ENGLISH);
		
		return extension;
	}
	
	@Override
	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
		String requestUri = urlPathHelper.getRequestUri(request);
		String filename = WebUtils.extractFullFilenameFromUrlPath(requestUri);
		String mediaType = getExtensionFromFilename(filename);
		
		String msg = "";
		if (ex instanceof SQLException) msg = "数据库操作异常";
		else if (ex instanceof BizException) msg = ex.getMessage();
		else msg = "未知异常";
		log.error(ex.getMessage(), ex);
		
		ModelAndView mav = new ModelAndView();
		if ("json".equals(mediaType)) {
			StringBuilder str = new StringBuilder();
			str.append("{\"success\":false,\"msg\":\"").append(msg).append("\"}");
			response.setContentType("application/json");
			try {
				response.getWriter().write(str.toString());
			} catch (IOException e) {
				log.error(e.getMessage(), e);
			}
	    } else if ("xml".equals(mediaType)) { 
	    	
	    } else {
	    	mav = new ModelAndView();
	    	mav.addObject("msg", msg);
	    	mav.addObject("exception", ex);
	    	mav.setViewName("error/error");
	    }
		return mav;
	}
}

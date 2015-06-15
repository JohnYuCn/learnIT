/**
 * @Project: 特维内容管理系统
 * @Description: 属性Tag。
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author suntao
 * @date 2014-9-14 下午12:09:06
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import ognl.Ognl;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @ClassName: PropTag
 * @Description: 属性Tag。
 * @author suntao
 * @date 2014-9-14 下午12:09:06
 * 
 */
public class PropTag extends TagSupport {
	private static final Log log = LogFactory.getLog(PropTag.class);
	
	/** 
	 * @Fields serialVersionUID : 
	 */ 
	private static final long serialVersionUID = 1L;

    private String attr;
	
	public String getAttr() {
		return attr;
	}
	
	public void setAttr(String attr) {
		this.attr = attr;
	}
	
    private String expr;
	
	public String getExpr() {
		return expr;
	}
	
	public void setExpr(String expr) {
		this.expr = expr;
	}
	
	@Override
	public int doStartTag() {
		Object parentTag = getParent();
		if (parentTag == null) {
			return SKIP_BODY;
		}
		while (parentTag instanceof IfTag) {
			IfTag ifTag = (IfTag)parentTag;
			parentTag = ifTag.getParent();
		}
		
		try {
			if (attr != null && attr.length() > 0) {
				Object value = PropertyUtils.getProperty(parentTag, attr);
				if (value != null) {
					JspWriter jspWriterOutput = pageContext.getOut();
					jspWriterOutput.print(value);
				}
			} else if (expr != null && expr.length() > 0) {
				Object value = Ognl.getValue(expr, parentTag);
				if (value != null) {
					JspWriter jspWriterOutput = pageContext.getOut();
					jspWriterOutput.print(value);
				}
			}
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		
		
		return SKIP_BODY;
	}
}

/**
 * @Project: 特维内容管理系统
 * @Description: IfTag
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author suntao
 * @date 2014-9-14 下午01:44:01
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import javax.servlet.jsp.tagext.BodyTagSupport;

import ognl.Ognl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @ClassName: IfTag
 * @Description: IfTag
 * @author suntao
 * @date 2014-9-14 下午01:44:01
 * 
 */
public class IfTag extends BodyTagSupport {
	private static final Log log = LogFactory.getLog(IfTag.class);

	/** 
	 * @Fields serialVersionUID : 
	 */ 
	private static final long serialVersionUID = 1L;

    private String test;
	
	public String getTest() {
		return test;
	}
	
	public void setTest(String test) {
		this.test = test;
	}
	
	@Override
	public int doStartTag() {
		Object parentTag = getParent();
		if (parentTag == null) {
			return EVAL_PAGE;
		}
		while (parentTag instanceof IfTag) {
			IfTag ifTag = (IfTag)parentTag;
			parentTag = ifTag.getParent();
		}
		
		try {
			Object obj = Ognl.getValue(test, parentTag);
			if (obj != null && obj instanceof Boolean) {
				Boolean bool = (Boolean)obj;
				if (bool.booleanValue()) {
					return EVAL_BODY_INCLUDE;
				}
			}
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		
		return EVAL_PAGE;
	}
	
	@Override
	public int doAfterBody() {
		return EVAL_PAGE;
	}
}

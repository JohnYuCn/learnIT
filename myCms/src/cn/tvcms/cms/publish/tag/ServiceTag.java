/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.tvcms.cms.pojo.ServicesCategory;

/**
 * @ClassName: ServiceTag
 * @Description: 服务标签。
 * @author lianpeng
 * @date 2014-10-8 下午11:16:03
 * 
 */
public class ServiceTag extends TagSupport {
	private static final Log log = LogFactory.getLog(ServiceTag.class);
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String attr;
	
	public String getAttr() {
		return attr;
	}
	
	public void setAttr(String attr) {
		this.attr = attr;
	}
	
	@Override
	public int doStartTag() {
		ServicesCategory servicesCategory = null;
		Object parentTag = getParent();
		if (parentTag != null && parentTag instanceof ServiceListTag) {
			ServiceListTag parent = (ServiceListTag)parentTag;
			servicesCategory = parent.getServicesCategory();
		} else {
			Object obj = pageContext.getRequest().getAttribute("_currColumn");
			if (obj != null) {
				servicesCategory = (ServicesCategory)obj;
			}
		}
		
		if (servicesCategory != null) {
			try {
				Object value = null;
				if ("id".equals(attr)) { // id
					Integer id = servicesCategory.getId();
					value = id;
				} else if ("name".equals(attr)) { // 描述
					String itemsName = servicesCategory.getItemsName();
					value = itemsName;
				} else if("price".equals(attr)){
					String price=servicesCategory.getPrice();
					value=price;
				}else if("enItemsName".equals(attr)){
					String enItemsName=servicesCategory.getEnItemsName();
					value=enItemsName;
				}

				JspWriter jspWriterOutput = pageContext.getOut();
				jspWriterOutput.print(value);
			} catch (Exception e) {
				log.error(e.getMessage(), e);
			}
		}
		
		return SKIP_BODY;
	}
}

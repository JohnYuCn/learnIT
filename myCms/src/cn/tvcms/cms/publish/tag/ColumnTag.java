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

import cn.tvcms.cms.column.service.ColumnService;
import cn.tvcms.cms.common.utils.SpringUtils;
import cn.tvcms.cms.pojo.SystemSetting;
import cn.tvcms.cms.pojo.TvcmsColumn;
import cn.tvcms.cms.system.service.SystemSettingService;

/** 
 * 栏目标签。
 * 
 * @author suntao 
 * @version create time：2014-7-27 下午02:37:30 
 * 
 */
public class ColumnTag extends TagSupport {
	private static final Log log = LogFactory.getLog(ColumnTag.class);
	
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
		TvcmsColumn column = null;
		Object parentTag = getParent();
		if (parentTag != null && parentTag instanceof ColumnListTag) {
			ColumnListTag parent = (ColumnListTag)parentTag;
			column = parent.getColumn();
		} else {
			Object obj = pageContext.getRequest().getAttribute("_currColumn");
			if (obj != null) {
				column = (TvcmsColumn)obj;
			}
		}
		
		if (column != null) {
			try {
				Object value = null;
				if ("title".equals(attr)) { // 标题
					String title = column.getTitle();
					if (title == null || title.length() == 0) {
						SystemSetting systemSetting = getSystemSetting();
						title = systemSetting.getWebsiteName();
					}
					value = title;
				} else if ("keyword".equals(attr) || "keywords".equals(attr)) { // 关键字
					String keyword = column.getKeyWords();
					if (keyword == null || keyword.length() == 0) {
						SystemSetting systemSetting = getSystemSetting();
						keyword = systemSetting.getKeyword();
					}
					value = keyword;
				} else if ("description".equals(attr)) { // 描述
					String description = column.getDescriPtion();
					if (description == null || description.length() == 0) {
						SystemSetting systemSetting = getSystemSetting();
						description = systemSetting.getKeyword();
					}
					value = description;
				} else if ("url".equals(attr)) { // 绝对路径url
					HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
					String root = request.getContextPath();
					StringBuilder str = new StringBuilder();
					if (!"/".equals(root)) {
						str.append(root);
					}
					
					ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
					String colPath = columnService.queryFilePath(column.getId());
					if (!colPath.startsWith("/")) {
						str.append("/");
					}
					str.append(colPath);
					
					str.append("/index.html");
					value = str.toString();
				} else if ("thumbnail".equals(attr)){//获取图片内容
					HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
					String root = request.getContextPath();
					StringBuilder str = new StringBuilder();
					if (!"/".equals(root)) {
						str.append(root);
					}
					String thumbnail = column.getThumbnail();
					if (!thumbnail.startsWith("/")) {
						str.append("/pictureFile/");
					}
					str.append(thumbnail);
					value = str.toString();
				}else if("parentName".equals(attr)){
					ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
					TvcmsColumn tvcolumn = columnService.findByIdColumn(column.getBclassId());
					value = tvcolumn.getColumnname();
				} else { // 其他属性
					value = PropertyUtils.getProperty(column, attr);
				}
				
				JspWriter jspWriterOutput = pageContext.getOut();
				jspWriterOutput.print(value);
			} catch (Exception e) {
				log.error(e.getMessage(), e);
			}
		}
		
		return SKIP_BODY;
	}
	
	private SystemSetting getSystemSetting() {
		SystemSettingService systemSettingService = (SystemSettingService)SpringUtils.getBean("systemSettingService");
	    SystemSetting systemSetting = systemSettingService.findById(1);
	    return systemSetting;
	}
}

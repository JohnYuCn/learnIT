/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.tvcms.cms.column.service.ColumnService;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.SpringUtils;
import cn.tvcms.cms.pojo.Cont;
import cn.tvcms.cms.pojo.TvcmsColumn;

/** 
 * 内容标签。
 * 
 * @author suntao 
 * @version create time：2014-8-10 下午01:44:30 
 * 
 */
public class ContTag extends TagSupport {
	private static final Log log = LogFactory.getLog(ContTag.class);
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String attr;
	
	private String dataFormat;
	
	public String getAttr() {
		return attr;
	}
	
	public void setAttr(String attr) {
		this.attr = attr;
	}
	
	
	/**
	 * @return the dataFormat
	 */
	public String getDataFormat() {
		return dataFormat;
	}

	/**
	 * @param dataFormat 要设置的 dataFormat
	 */
	public void setDataFormat(String dataFormat) {
		this.dataFormat = dataFormat;
	}

	@SuppressWarnings("unchecked")
	@Override
	public int doStartTag() {
		Cont cont = null;
		TvcmsColumn column = null;
		Integer titleLen = null;
		String dateFormat = null;
		Object parentTag = getParent();
		if (parentTag != null && parentTag instanceof ContListTag) {
			ContListTag parent = (ContListTag)parentTag;
			cont = parent.getCont();
			titleLen = parent.getSubTitle();
			dateFormat = parent.getDateFormat();
		} else {
			Object obj = pageContext.getRequest().getAttribute("_currCont");
			if (obj != null) {
				cont = (Cont)obj;
			}
		}
		
		Object obj = pageContext.getRequest().getAttribute("_currColumn");
		if (obj != null) {
			column = (TvcmsColumn)obj;
		}
		
		if (cont != null) {
			try {
				Object value = null;
				if ("url".equals(attr)) {
					HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
					String root = request.getContextPath();
					StringBuilder str = new StringBuilder();
					if (!"/".equals(root)) {
						str.append(root);
					}
					
					if (column != null) {
						ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
						String colPath = columnService.queryFilePath(cont.getColumnId());
						if (!colPath.startsWith("/")) {
							str.append("/");
						}
						str.append(colPath);
					}
					str.append("/");
					
					Date createTime = cont.getCreateTime();
					if (createTime != null) {
						str.append(DateTools.getDateYYYYMMDD(createTime));
						str.append("/");
					}
					str.append(cont.getId());
					str.append(".html");
					
					value = str.toString();
				}else if("current".equals(attr)){//当前位置--以后需要根据需求扩展
					Integer columnId = cont.getColumnId();
					ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
					TvcmsColumn tvcmsColumn = columnService.findByIdColumn(columnId);
					String columnName = tvcmsColumn.getColumnname();
					String path = tvcmsColumn.getFileSave();
					StringBuffer sb = new StringBuffer();
					HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
					String root = request.getContextPath();
					sb.append("<a href='");
					sb.append(root);
					sb.append("'>首页  >> </a>");
					sb.append("<a href='");
					sb.append(root);
					sb.append("/");
					sb.append(path);
					sb.append("/index.html'>");
					sb.append(columnName);
					sb.append("</a>");
					value = sb.toString();
				}else if("currentTitle".equals(attr)){
					Integer columnId = cont.getColumnId();
					value = getCurrentTitle(columnId, "");
				} else {
					value = PropertyUtils.getProperty(cont, attr);
					if ("title".equals(attr) && titleLen != null) { // 标题截取数
						String str = value.toString();
						if (titleLen > 0 && titleLen < str.length()) {
							value = str.substring(0, titleLen);
						}
					}
					if("titleImg".equals(attr)){
						String str = value.toString();
						value = "/pictureFile/" + str;
					}
					if("id".equals(attr)){
						value = cont.getId();
					}
					Class type = PropertyUtils.getPropertyType(cont, attr);
					if("java.util.Date".equals(type.getName()) && dateFormat != null){
						SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
						value = sdf.format(PropertyUtils.getProperty(cont, attr));
					}else { // 其他属性
						value = PropertyUtils.getProperty(cont, attr);
					}
					
				}
				if (value == null) {
					value = "";
				}
				
				JspWriter jspWriterOutput = pageContext.getOut();
				jspWriterOutput.print(value);
			} catch (Exception e) {
				log.error(e.getMessage(), e);
			}
		}
		
		return SKIP_BODY;
	}
	
	private String getCurrentTitle(Integer columnId,String currentTitle){
		ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
		List<TvcmsColumn> list = columnService.findAll();
		for(TvcmsColumn column : list){
			if(columnId.intValue() != column.getId().intValue()){
				continue;
			}
			columnId = column.getBclassId();
			if(StringUtils.isEmpty(currentTitle)){
				currentTitle = column.getColumnname();
			}else{
				currentTitle = column.getColumnname()+"-"+currentTitle;
			}
			break;
		}
		if(columnId == null){
			return currentTitle;
		}else{
			getCurrentTitle(columnId, currentTitle);
		}
		return currentTitle;
	}
	
}

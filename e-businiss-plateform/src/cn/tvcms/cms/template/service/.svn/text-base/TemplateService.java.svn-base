/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.template.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Criteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Template;
import cn.tvcms.cms.pojo.TemplateCatalog;

/** 
 * 模板Service。
 * @author suntao 
 * @version create time：2014-6-22 下午03:17:38 
 * 
 */
@Service
public class TemplateService {
	private static final Log log = LogFactory.getLog(TemplateService.class);

	@Autowired
	private CommonDao commonDao;
	
	/**
	 * 查询模板目录。
	 * @param parentId 父目录ID
	 * 
	 * @author suntao
	 * 2014-6-22 下午03:20:00
	 */
	@Transactional(readOnly=true, propagation=Propagation.REQUIRED)
	public List<TemplateCatalog> findCatalog(Integer parentId) throws Exception {
		Criteria criteria = commonDao.createCriteria(TemplateCatalog.class);
		criteria.add(Restrictions.eq("isDeleted", 0));
		if (parentId == null) {
			criteria.add(Restrictions.isNull("topCatalogId"));
		} else {
			criteria.add(Restrictions.eq("topCatalogId", parentId));
		}
		criteria.addOrder(Order.asc("id"));
		return commonDao.findByCriteria(TemplateCatalog.class, criteria);
	}
	
	/**
	 * @Title: findAll
	 * @Description: TODO(查询全部页面)
	 * @author wangChuang
	 * @date 2015-4-1 上午10:29:16
	 * @return
	 */
	public List<Template> findAll(){
		return  commonDao.findAll(Template.class);
	}
	
	
	/**
	 * 通过模板目录ID查询模板目录。
	 * @param catalogId 模板目录ID
	 *
	 * @author suntao
	 * 2014-6-22 下午04:48:29
	 */
	public TemplateCatalog findCatalogById(Integer catalogId) throws Exception {
		return commonDao.findById(TemplateCatalog.class, catalogId);
	}
	
	/**
	 * 保存模板目录。
	 *
	 * @author suntao
	 * 2014-6-22 下午05:45:26
	 */
	@Transactional(readOnly=false, propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void saveCatalog(TemplateCatalog catalog) {
		if (catalog.getCatalogId() == null) commonDao.save(catalog);
		else commonDao.update(catalog);
	}
	
	/**
	 * 通过模板目录ID查询模板。
	 * @param catalogId 模板目录ID
	 * 
	 * @author suntao
	 * 2014-6-22 下午03:24:16
	 */
	public List<Template> findByCatalogId(Integer catalogId) throws Exception {
		Criteria criteria = commonDao.createCriteria(Template.class);
		criteria.add(Restrictions.eq("isDeleted", 0));
		if (catalogId != null) criteria.add(Restrictions.eq("catalogId", catalogId));
		criteria.addOrder(Order.asc("id"));
		return commonDao.findByCriteria(Template.class, criteria);
	}
	
	/**
	 * 通过模板ID查询模板。
	 * @param templateId 模板ID
	 *
	 * @author suntao
	 * 2014-6-22 下午03:25:45
	 */
	public Template findById(Integer templateId) throws Exception {
		return commonDao.findById(Template.class, templateId);
	}
	
	/**
	 * 通过模板变量名查找模板。
	 * @param varName 模板变量名
	 * @author suntao
	 * 2014-7-13 下午05:19:58
	 */
	public Template findByVarName(String varName) throws Exception {
		Criteria criteria = commonDao.createCriteria(Template.class);
		criteria.add(Restrictions.eq("isDeleted", 0));
		criteria.add(Restrictions.eq("varName", varName));
		List<Template> list = commonDao.findByCriteria(Template.class, criteria);
		return (list.size() > 0) ? list.get(0) : null;
	}
	
	/**
	 * 查询单页面模板。
	 * @Title: findSinglePage
	 * @Description: 查询单页面模板。
	 * @author suntao
	 * @date 2014-9-14 下午04:44:32
	 * @param filename 文件名。
	 * @return
	 * @throws Exception
	 */
	public Template findSinglePage(String filename) throws Exception {
		Criteria criteria = commonDao.createCriteria(Template.class);
		//criteria.add(Restrictions.eq("catalogId", 4)); // 模板所在目录为单页面
		criteria.add(Restrictions.in("catalogId", new Object[]{4,5}));
		criteria.add(Restrictions.eq("filename", filename));
		criteria.add(Restrictions.eq("isDeleted", 0));
		List<Template> list = commonDao.findByCriteria(Template.class, criteria);
		return (list.size() > 0) ? list.get(0) : null;
	}
	
	/**
	 * 查询所有单页面模板。
	 * @Title: findAllSinglePage
	 * @Description: 查询所有单页面模板。
	 * @author suntao
	 * @date 2014-9-14 下午05:03:07
	 * @return
	 * @throws Exception
	 */
	public List<Template> findAllSinglePage() throws Exception {
		Criteria criteria = commonDao.createCriteria(Template.class);
		criteria.add(Restrictions.eq("catalogId", 4)); // 模板所在目录为单页面
		criteria.add(Restrictions.eq("isDeleted", 0));
		List<Template> list = commonDao.findByCriteria(Template.class, criteria);
		return list;
	}
	
	/**
	 * 保存模板。
	 *
	 * @author suntao
	 * 2014-6-22 下午05:46:28
	 */
	@Transactional(readOnly=false, propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void saveTemplate(Template template, String rootPath) throws Exception {
		if (template.getId() == null) {
			
			commonDao.save(template);
		} else {
		
			commonDao.update(template);
		}
		List<Integer> list = new ArrayList<Integer>();
		genJspFile(template, rootPath,list);
		
	}
	
	/**
	 * 生成模板对应的jsp文件。
	 * @Title: genJspFile
	 * @Description: 生成模板对应的jsp文件。
	 * @author suntao
	 * @date 2014-9-6 下午04:23:25
	 * @param template
	 * @param rootPath
	 * @throws Exception
	 */
	public void genJspFile(Template template, String rootPath,List<Integer> tmpList) throws Exception {
		String templateDir = getTemplateDir(template);
		String templatePath = templateDir + "/" + template.getId();
		String jspAbsolutePath = rootPath + "WEB-INF/publish/" + templatePath + ".jsp";
		File jspFile = new File(jspAbsolutePath);
		File jspDir = new File(rootPath + "WEB-INF/publish/" + templateDir);
		if (!jspDir.exists()) jspDir.mkdirs();
		
		Writer writer = new OutputStreamWriter(new FileOutputStream(jspFile),"utf-8");
		writer.write("<%@ page language=\"java\" pageEncoding=\"UTF-8\"%>\n");
		writer.write("<%@ taglib uri=\"/tvcmsTagLib\" prefix=\"tvcms\"%>\n");
		try {
		    processTemplate(template, writer);
		} catch (Exception e) {
			throw e;
		} finally {
			writer.close();
		}
		
		jspFile.setLastModified(System.currentTimeMillis());
		
		// 查询引用该模板的其他模板，更新JSP文件
		String varName = template.getVarName();
		if (varName != null && varName.length() > 0) {
			Criteria criteria = commonDao.createCriteria(Template.class);
			criteria.add(Restrictions.like("templateContent", varName, MatchMode.ANYWHERE));
			List<Template> list = commonDao.findByCriteria(Template.class, criteria);
			for (Template tpl : list) {
				if(tmpList.contains(tpl.getId())){
					tmpList.add(tpl.getId());
					genJspFile(tpl, rootPath,tmpList);
				}
			}
		}
	}
	
	
	
	private String getTemplateDir(Template template) throws Exception {
		TemplateCatalog catalog = findCatalogById(template.getCatalogId());
	    StringBuffer str = new StringBuffer();
	    str.append(catalog.getCatalogId());
	    
	    while (catalog.getTopCatalogId() != null) {
	    	catalog = findCatalogById(catalog.getTopCatalogId());
	    	str.insert(0, "/");
	    	str.insert(0, catalog.getCatalogId());
	    }
	    return str.toString();
	}
	
	private void processTemplate(Template template, Writer writer) throws Exception {
		String str = template.getTemplateContent();
		
		// 以下为处理模板变量，遇到<tvcms:include var="templateVarName"/>或<tvcms:include var="templateVarName"></tvcms:include>，均作为模板变量处理
		StringBuilder buffer = new StringBuilder();
		StringBuilder varBuffer = new StringBuilder();
		String cmd = "tvcms:include";
		String cmdVar = "var";
		int state = 0;
		int pos = 0;
		int tag = 0;
		for (int i = 0; i < str.length(); i++) {
			char chr = str.charAt(i);
			int len = buffer.length();
			boolean processed = false;
			if (len == 0) {
				if (chr == '<') {
					buffer.append(chr);
					processed = true;
				} else {
					writer.write(chr);
					processed = true;
				}
			} else {
				if (state == 0) {
					if (chr == cmd.charAt(pos)) {
						buffer.append(chr);
						pos++;
						if (pos == cmd.length()) {
							state = 1;
						}
						processed = true;
					}
				} else if (state == 1) {
					if (chr == ' ' || chr == '\t' || chr == '\r' || chr == '\n') {
						buffer.append(chr);
						pos = 0;
						state = 2;
						processed = true;
					}
				} else if (state == 2) {
					if (chr == cmdVar.charAt(pos)) {
						buffer.append(chr);
						pos++;
						if (pos == cmdVar.length()) {
							state = 3;
						}
						processed = true;
					}
				} else if (state == 3) {
					if (chr == ' ' || chr == '\t' || chr == '\r' || chr == '\n') {
						buffer.append(chr);
						processed = true;
					} else if (chr == '=') {
						buffer.append(chr);
						state = 4;
						processed = true;
					}
				} else if (state == 4) {
					if (chr == ' ' || chr == '\t' || chr == '\r' || chr == '\n') {
						buffer.append(chr);
						processed = true;
					} else if (chr == '\'') {
						buffer.append(chr);
						tag = 0;
						state = 5;
						processed = true;
					} else if (chr == '\"') {
						buffer.append(chr);
						tag = 1;
						state = 5;
						processed = true;
					}
				} else if (state == 5) {
					if (tag == 0 && chr == '\'' || tag == 1 && chr == '\"') {
						buffer.append(chr);
						state = 6;
						processed = true;
					} else {
						buffer.append(chr);
						varBuffer.append(chr);
						processed = true;
					}
				} else if (state == 6) {
					if (chr == ' ' || chr == '\t' || chr == '\r' || chr == '\n') {
						buffer.append(chr);
						processed = true;
					} else if (chr == '/') {
						buffer.append(chr);
						state = 7;
						processed = true;
					} else if (chr == '>') {
						buffer.append(chr);
						state = 8;
						processed = true;
					}
				} else if (state == 7) {
					if (chr == '>') {
						buffer.append(chr);
						state = 9;
						processed = true;
					}
				} else if (state == 8) {
					if (chr == ' ' || chr == '\t' || chr == '\r' || chr == '\n') {
						buffer.append(chr);
						processed = true;
					} else if (chr == '<') {
						buffer.append(chr);
						state = 10;
						processed = true;
					}
				} else if (state == 10) {
					if (chr == '/') {
						buffer.append(chr);
						state = 11;
						pos = 0;
						processed = true;
					}
				} else if (state == 11) {
					if (chr == cmd.charAt(pos)) {
						buffer.append(chr);
						pos++;
						if (pos == cmd.length()) {
							state = 12;
						}
						processed = true;
					}
				} else if (state == 12) {
					if (chr == ' ' || chr == '\t' || chr == '\r' || chr == '\n') {
						buffer.append(chr);
						processed = true;
					} else if (chr == '>') {
						buffer.append(chr);
						state = 9;
						processed = true;
					}
				}
				
				if (state == 9) {
					// 处理包含的模板
					log.debug("template var:" + varBuffer.toString());
					Template varTemplate = findByVarName(varBuffer.toString());
					if (varTemplate != null) {
						processTemplate(varTemplate, writer);
					}
					
					buffer.setLength(0);
					varBuffer.setLength(0);
					pos = 0;
					state = 0;
				} else if (!processed) {
					writer.write(buffer.toString());
					buffer.setLength(0);
					varBuffer.setLength(0);
					pos = 0;
					writer.write(chr);
					state = 0;
				}
			}
			
		}
		//writer.write();
	}
}

/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-10-22 上午10:18:57
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import cn.tvcms.cms.common.utils.MessageUtils;
import cn.tvcms.cms.common.utils.SpringUtils;
import cn.tvcms.cms.pojo.Template;
import cn.tvcms.cms.template.service.TemplateService;

/**
 * @ClassName: IncludeTag
 * @Description: 导入其他模板标签
 * @author sunjinyang
 * @date 2014-10-22 上午10:18:57
 * 
 */
public class IncludTag extends TagSupport {
	private static final long serialVersionUID = 1L;
	private String var;
	/**
	 * @return the var
	 */
	public String getVar() {
		return var;
	}
	/**
	 * @param var 要设置的 var
	 */
	public void setVar(String var) {
		this.var = var;
	}

	@Override
	public int doStartTag() throws JspException {
		String value="";
		JspWriter jspWriterOutput = pageContext.getOut();
		TemplateService templateService=(TemplateService) SpringUtils.getBean("templateService");
		try {
			Template template=templateService.findByVarName(var);
			if(template!=null){
				if(!"".equals(template.getTemplateContent())){ 
					
					String localUrl = MessageUtils.getMessage("websiteLocalUrl");
					String staticPage = MessageUtils.getMessage("staticPageDir");
					String filename = template.getFilename();
					String url = localUrl + "/" + filename;
					String dirStr = pageContext.getServletContext().getRealPath("/") + "/" + staticPage;
					value=saveStaticPage(url, dirStr, filename);
				}
			
			}
			jspWriterOutput.print(value);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	/**
	 * 保存静态页面文件。
	 * @Title: saveStaticPage
	 * @Description: 保存静态页面文件。
	 * @author suntao
	 * @date 2014-8-23 上午11:35:43
	 * @param url
	 * @param dir
	 * @param staticPageName
	 * @throws Exception
	 */
	private String saveStaticPage(String url, String dir, String staticPageName) throws Exception {
		String append = (url.indexOf('?') >= 0) ? "&" : "?";
		URL ur = new URL(url + append + "mode=d"); // 参数mode=d用于不获取静态化化内容，动态执行
		HttpURLConnection urlConn = (HttpURLConnection) ur.openConnection();
        BufferedReader br = new BufferedReader(new InputStreamReader(urlConn.getInputStream(), "UTF-8"));
        StringBuffer html = new StringBuffer(); 
        String temp;
        while ((temp = br.readLine()) != null) {  //按行读取输出流
         if(!temp.trim().equals("")){
          html.append(temp).append("\n");  //读完每行后换行
         }
        }
         br.close();   //关闭
       
        return html.toString();   //
		
	
	}

}

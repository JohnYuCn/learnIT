/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.tvcms.cms.pojo.Advert;

/**
 * @ClassName: AdvertTag
 * @Description: 广告内容标签
 * @author lianpeng
 * @date 2014-10-9 下午09:09:41
 * 
 */
public class AdvertTag extends TagSupport {
	private static final Log log = LogFactory.getLog(AdvertTag.class);
	
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
		Advert advert = null;
		Object parentTag = getParent();
		if (parentTag != null && parentTag instanceof AdvertListTag) {
			AdvertListTag parent = (AdvertListTag)parentTag;
			advert = parent.getAdvert();
		} else {
			Object obj = pageContext.getRequest().getAttribute("_currColumn");
			if (obj != null) {
				advert = (Advert)obj;
			}
		}
		
		if (advert != null) {
			try {
				Object value = null;
				if ("adName".equals(attr)) { // 文字名称
					String adName = advert.getAdName();
					value = adName;
				} 
				 else if ("linkAddress".equals(attr)) { // 连接地址
					String linkAddress = advert.getLinkAddress();
					value = linkAddress;
				} else if ("altName".equals(attr)) { // 提示文字
					String altName = advert.getAltName();
					value = altName;
				} else if ("imageName".equals(attr)) { // 图片名称
					String imageName = advert.getImageName();
					value = imageName;
				} else if ("imageUrl".equals(attr)) { // 图片路径
					HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
					String root = request.getContextPath();
					StringBuilder str = new StringBuilder();
					if (!"/".equals(root)) {
						str.append(root);
					}
					String imageUrl = advert.getImageUrl();
					if (!imageUrl.startsWith("/")) {
						str.append("/pictureFile/");
					}
					str.append(imageUrl);
					value = str.toString();
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

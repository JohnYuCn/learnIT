/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-10-20 下午04:54:14
 * @version V1.0
 */
package cn.tvcms.cms.publish.tag;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.pojo.Comment;

/**
 * @ClassName: CommentTag
 * @Description: 评论内容标签
 * @author sunjinyang
 * @date 2014-10-20 下午04:54:14
 * 
 */
public class CommentTag extends TagSupport{
	private static final Log log = LogFactory.getLog(CommentTag.class);
	
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
		Comment comment = null;
		Object parentTag = getParent();
		if (parentTag != null && parentTag instanceof CommentListTag) {
			CommentListTag parent = (CommentListTag)parentTag;
			comment = parent.getComment();
		} else {
			Object obj = pageContext.getRequest().getAttribute("_currColumn");
			if (obj != null) {
				comment = (Comment)obj;
			}
		}
		
		if (comment != null) {
			try {
				Object value = null;
				if ("title".equals(attr)) { // 留言标题
					String title = comment.getTitle();
					value = title;
				} 
				 else if ("content".equals(attr)) { // 评论内容
					String content = comment.getContent();
					value = content;
				} else if ("member".equals(attr)) { // 评论用户
					String member = "";
					if(comment.getMember()==null||comment.getMember().equals("")){
						member="匿名用户";
					}else{
						member=comment.getMember().getUsername();
					}
					
					value = member;
				} else if ("reviewTime".equals(attr)) { // 评论时间
					String reviewTime = DateTools.getDateyyyy_MM_dd_HH_mm_ss(comment.getReviewTime());
					value = reviewTime;
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

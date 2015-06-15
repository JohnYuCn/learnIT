package cn.tvcms.cms.publish.tag;


import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;


import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.utils.SpringUtils;
import cn.tvcms.cms.plugin.service.MessageBoardService;

import cn.tvcms.cms.pojo.Comment;

/**
 * @ClassName: CommentListTag
 * @Description: 获取通过审核的评论
 * @author sunjinyang
 * @date 2014-10-20 下午04:16:43
 * 
 */
public class CommentListTag extends BodyTagSupport{
    private static final long serialVersionUID = 1L;
    private String  all;
	/**
	 * @return the all
	 */
	public String getAll() {
		return all;
	}
	/**
	 * @param all 要设置的 all
	 */
	public void setAll(String all) {
		this.all = all;
	}

	private Comment comment;
	private int count;
	private int index;
	private List<Comment> list;

	/**
	 * @return the comment
	 */
	public Comment getComment() {
		return comment;
	}
	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}
	/**
	 * @return the index
	 */
	public int getIndex() {
		return index;
	}

	@Override
	public int doStartTag() throws JspException {
		MessageBoardService messageBoardService=(MessageBoardService)SpringUtils.getBean("messageBoardService");
		CommonDao commonDao=messageBoardService.getCommonDao();
		Criteria criteria=commonDao.createCriteria(Comment.class);	
		criteria.add(Restrictions.eq("isExamine",1));
		criteria.addOrder(Order.desc("reviewTime"));
		list = commonDao.findByCriteria(Comment.class, criteria);
		count = list.size();
		if (list.size() == 0) {
			return EVAL_PAGE;
		} else {
			index = 0;
			comment = list.get(index);
			return EVAL_BODY_INCLUDE;
		}
		
		
	}

	@Override
	public int doAfterBody() throws JspException {
		if (list == null || count <= 1 || index >= count - 1) {
			return EVAL_PAGE;
		}
		index++;
		comment = list.get(index);
		return EVAL_BODY_AGAIN;
	}
	
 

}

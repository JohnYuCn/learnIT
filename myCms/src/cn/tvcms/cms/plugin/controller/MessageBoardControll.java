/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-24 下午04:30:46
 * @version V1.0
 */
package cn.tvcms.cms.plugin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.query.FieldManagement;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.MessageUtils;
import cn.tvcms.cms.plugin.service.MessageBoardService;
import cn.tvcms.cms.pojo.Comment;
import cn.tvcms.cms.pojo.Member;
import cn.tvcms.cms.pojo.MessageBoard;
import cn.tvcms.cms.pojo.columnAttributeMapping;

/**
 * @ClassName: MessageBoardControll
 * @Description: 操作留言板或者评论
 * @author sunJingYang
 * @date 2014-9-24 下午04:30:46
 * 
 */
@Controller
public class MessageBoardControll {
	
	@Autowired
	private FieldManagement fieldManagement;

	@Autowired
	private QueryPaging queryPaging;
	
	@Autowired
	private MessageBoardService messageBoardService;
	
	/**
	 * 
	 * @Title: findAllMessage
	 * @Description: 查询所有留言数据到页面
	 * @author sunJingYang
	 * @date 2014-9-25 下午04:26:09
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/plugin/messageBoardController/findAllMessage")
	public ModelAndView findAllMessage(HttpServletRequest request,MessageBoard messageBoard) throws Exception{
		ModelAndView mav=new ModelAndView();
		String sqlWhere="from MessageBoard where 1=1";
		if(messageBoard!=null){
			messageBoard.setWrittenTime(DateTools.getDateTime(request.getParameter("writtenTimes")));
		    if(messageBoard.getName()!=null){
		    	if(!messageBoard.getName().equals("")){
		    		sqlWhere+=" and name like '%"+messageBoard.getName()+"%'";
		    	}
		    }
		    if(messageBoard.getMessage()!=null){
		    	if(!messageBoard.getMessage().equals("")){
		    		sqlWhere+=" and message like '%"+messageBoard.getMessage()+"%'";
		    	}
		    }
		    if(messageBoard.getWrittenTime()!=null){
		    	if(!messageBoard.getWrittenTime().equals("")){
		    		sqlWhere+=" and writtenTime between '"+DateTools.getDateYYYYMMDD(messageBoard.getWrittenTime())+"' and '"+DateTools.getSpecifiedDayAfter(DateTools.getDateYYYYMMDD(messageBoard.getWrittenTime()))+"'";
		    	}
		    }
		    if(messageBoard.getContact()!=null){
		    	if(!messageBoard.getContact().equals("")){
		    		sqlWhere+=" and contact like '%"+messageBoard.getContact()+"%'";
		    	}
		    }
		    if(messageBoard.getIsExamine()!=null){
		    	if(!messageBoard.getIsExamine().equals("")){
		    		if(messageBoard.getIsExamine()==1)
		    		{
		    		sqlWhere+=" and isExamine = "+messageBoard.getIsExamine();
		    		}else if(messageBoard.getIsExamine()==2){
		    			sqlWhere+=" and (isExamine = 2 or isExamine is null or isExamine='')";
		    		}
		    	}
		    }
		}
		sqlWhere+=" order by writtenTime desc";
		Map<String, Object> map=queryPaging.query(sqlWhere, request, MessageBoard.class);
		mav.addObject("paging",map);
		mav.setViewName("/plugin/queryMessageBoard");
	    return mav;
		
	}
	/**
	 * 
	 * @Title: deleMsg
	 * @Description: 删除留言信息
	 * @author sunJingYang
	 * @date 2014-9-25 下午05:52:04
	 * @return
	 */
	@RequestMapping("/plugin/messageBoardController/deleMsg/{id}")
	public ModelAndView deleMsg(@PathVariable("id") String ids){
		ModelAndView mav=new ModelAndView();
		String returnString="删除留言成功!";
		String forward="";
		try{
			ids="'"+ids.replace(",", "','")+"'";
		    messageBoardService.deleteMsg(ids);
		    forward="/plugin/messageBoardController/findAllMessage.html";
		    mav.addObject("url",forward);
		}catch(Exception e){
			returnString="删除留言失败!请联系管理员";
			e.printStackTrace();
		}
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	/**
	 * 
	 * @Title: updateMsg
	 * @Description: 更新留言
	 * @author sunJingYang
	 * @date 2014-9-25 下午07:47:28
	 * @param id
	 * @param type
	 * @param messageBoard
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/plugin/messageBoardController/updateMsg/{id}/{type}")
	public ModelAndView updateMsg(MessageBoard messageBoard,@PathVariable("id") Integer id,@PathVariable("type") int type,HttpServletRequest request) throws Exception{
		ModelAndView mav=new ModelAndView();
		String returnString="更新留言成功!";
		if(type<3){
			messageBoard=(MessageBoard)messageBoardService.findById(id,MessageBoard.class);
			if(type==1){
				messageBoard.setIsExamine(1);				
			}else{
				messageBoard.setIsExamine(null);
			}	
		}else{
			Date writtenTime=DateTools.getDateTime(request.getParameter("writtenTime1"));
			messageBoard.setWrittenTime(writtenTime);	
		}
		messageBoardService.updateMsg(messageBoard);
		mav.addObject("returnString",returnString);
		 mav.addObject("url","/plugin/messageBoardController/findAllMessage.html");
		   mav.setViewName("system/returnAlert");
		return mav;
	}
	/**
	 * 
	 * @Title: findById
	 * @Description: 根据id查询所要修改的留言
	 * @author sunJingYang
	 * @date 2014-9-25 下午07:52:43
	 * @param id
	 * @return
	 */
	@RequestMapping("/plugin/messageBoardController/findById/{id}")
	public  ModelAndView findById(@PathVariable("id") Integer id){
		ModelAndView mav=new ModelAndView();
		mav.addObject("messageBoard",(MessageBoard)messageBoardService.findById(id,MessageBoard.class));
		mav.setViewName("plugin/updateMessageBoard");
		return mav;
	}
	/**
	 * 
	 * @Title: findMsgField
	 * @Description: 查询所有留言字段
	 * @author sunJingYang
	 * @date 2014-10-6 下午02:27:32
	 * @return
	 * @throws SQLException 
	 */
	@RequestMapping("/plugin/messageBoardController/findMsgField")
	public ModelAndView findMsgField() throws Exception{
		ModelAndView mav=new ModelAndView();
		List<columnAttributeMapping> list=fieldManagement.findAllColumn("cn.tvcms.cms.pojo.MessageBoard",MessageUtils.getMessage("hibernateXml"));
		mav.addObject("list",list);
		mav.setViewName("plugin/queryMsgField");
		return mav;
	}
	/**
	 * 
	 * @Title: addComment
	 * @Description:添加评论
	 * @author sunJingYang
	 * @date 2014-10-13 上午10:48:40
	 * @param comment
	 * @return
	 */
	@RequestMapping("/plugin/messageBoardController/addComment")
	public ModelAndView addComment(Comment comment,HttpServletRequest request){
		   String isNull=request.getParameter("isNull");//获取是否是匿名评论
		   if(isNull.equals("1")){
			   comment.setMember(null);
		   }else{
			   Member member=new Member();
			   member.setId(Integer.parseInt(request.getSession().getAttribute("memberId").toString()));
			  comment.setMember(member);
		   }
		   ModelAndView mav=new ModelAndView();
		   String forward ="/";
		   String returnString="评论成功！";
		   
		   comment.setReviewTime(new Date());
		   messageBoardService.addCooment(comment);
	       mav.addObject("returnString", returnString);
		   mav.addObject("url", forward);
		   mav.setViewName("system/returnAlert");
		   return mav;
	}
	/**
	 * 
	 * @Title: findAllComment
	 * @Description: 显示所有评论
	 * @author sunJingYang
	 * @date 2014-10-13 上午10:57:07
	 * @param request
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/plugin/messageBoardController/findAllComment")
	public ModelAndView findAllComment(HttpServletRequest request,Comment comment) throws Exception{
		ModelAndView mav=new ModelAndView();
		String forward ="plugin/queryComment";
		String sqlWhere="from Comment where 1=1";
		if(comment!=null){
			comment.setReviewTime(DateTools.getDateTime(request.getParameter("reviewTimes")));
		    if(comment.getTitle()!=null){
		    	if(!comment.getTitle().equals("")){
		    		sqlWhere+=" and title like '%"+comment.getTitle()+"%'";
		    	}
		    }
		    if(comment.getContent()!=null){
		    	if(!comment.getContent().equals("")){
		    		sqlWhere+=" and content like '%"+comment.getContent()+"%'";
		    	}
		    }
		    if(comment.getReviewTime()!=null){
		    	if(!comment.getReviewTime().equals("")){
		    		sqlWhere+=" and reviewTime between '"+DateTools.getDateYYYYMMDD(comment.getReviewTime())+"' and '"+DateTools.getSpecifiedDayAfter(DateTools.getDateYYYYMMDD(comment.getReviewTime()))+"'";
		    	}
		    }
	
		    if(comment.getIsExamine()!=null){
		    	if(!comment.getIsExamine().equals("")){
		    		if(comment.getIsExamine()==1)
		    		{
		    		sqlWhere+=" and isExamine = "+comment.getIsExamine();
		    		}else if(comment.getIsExamine()==2){
		    			sqlWhere+=" and (isExamine = 2 or isExamine is null or isExamine='')";
		    		}
		    	}
		    }
		}
		sqlWhere+=" order by reviewTime desc";
		Map<String, Object> map=queryPaging.query(sqlWhere, request,Comment.class);
		mav.addObject("paging",map);
		mav.setViewName(forward);
		return mav;
	}
	/**
	 * 
	 * @Title: deleComment
	 * @Description: 删除评论
	 * @author sunJingYang
	 * @date 2014-10-13 上午11:58:31
	 * @param ids
	 * @return
	 */
	@RequestMapping("/plugin/messageBoardController/deleComment/{commentIds}")
	public ModelAndView deleComment(@PathVariable("commentIds") String ids){
		   ModelAndView mav=new ModelAndView();
		   String forward ="/plugin/messageBoardController/findAllComment";
		   String returnString="删除评论成功！";
		   ids="'"+ids.replace(",", "','")+"'";
		   messageBoardService.deleComment(ids);
		   
	       mav.addObject("returnString", returnString);
		   mav.addObject("url", forward);
		   mav.setViewName("system/returnAlert");
		   return mav;
	}
	/**
	 * 
	 * @Title: updateComment
	 * @Description: 取消审核或审核留言
	 * @author sunJingYang
	 * @date 2014-10-13 下午05:07:02
	 * @param id
	 * @param type
	 * @param response
	 */
	@SuppressWarnings("null")
	@RequestMapping("/plugin/messageBoardController/isExamine/{id}/{type}.html")
	public void isExamine(@PathVariable("id") Integer id,@PathVariable("type") Integer type,HttpServletResponse response){
		   Comment comment=(Comment) messageBoardService.findById(id,Comment.class);
		   comment.setIsExamine(type);
		   PrintWriter out=null;
		   try {
			   messageBoardService.updateComment(comment);
			   if(out==null)
			   out=response.getWriter();
			   if(type==1){
				   out.print("1");//审核通过
			   }else{
				   out.print("2");//取消审核
			   }
			   out.flush();
		} catch (IOException e) {
			out.print("3");//系统错误
			out.flush();
			e.printStackTrace();
		}finally{
			out.close();
		}
		   
	}
	/**
	 * 
	 * @Title: findCommentById
	 * @Description: 跳转到留言修改页面
	 * @author sunJingYang
	 * @date 2014-10-13 下午05:11:30
	 * @param id
	 * @return
	 */
	@RequestMapping("/plugin/messageBoardController/findCommentById/{commentId}")
	public ModelAndView findCommentById(@PathVariable("commentId") Integer id){
		ModelAndView mav=new ModelAndView();
		String forward ="plugin/updateComment";
        Comment comment=(Comment) messageBoardService.findById(id, Comment.class);
        mav.addObject("comment",comment);
		mav.setViewName(forward);
		return mav;
	}
	/**
	 * 
	 * @Title: updateComment
	 * @Description: 修改评论成功!
	 * @author sunJingYang
	 * @date 2014-10-13 下午05:38:25
	 * @param comment
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/plugin/messageBoardController/updateComment")
	public ModelAndView updateComment(Comment comment,HttpServletRequest request) throws Exception{
		   ModelAndView mav=new ModelAndView();
		   String forward ="/plugin/messageBoardController/findAllComment";
		   String returnString="修改评论成功！";
		   String reviewTime=request.getParameter("reviewTimes");
		   if(reviewTime==null||reviewTime.equals("")){
			   comment.setReviewTime(null);
		   }else
		   {
		   comment.setReviewTime(DateTools.getDateTime(reviewTime));
		   }
		   String id=request.getParameter("memberId");
		   if(id==null||id.equals("")){
			   comment.setMember(null);
		   }else{
			   Integer memberId=Integer.parseInt(id);
			   Member member=new Member();
			   member.setId(memberId);
			   comment.setMember(member);
		   }
		   messageBoardService.updateComment(comment);
		   
	       mav.addObject("returnString", returnString);
		   mav.addObject("url", forward);
		   mav.setViewName("system/returnAlert");
		   return mav;
		
	}
	/**
	 * 
	 * @Title: forwardComment
	 * @Description: 跳转到评论页面
	 * @author sunjinyang
	 * @date 2014-10-30 下午12:28:39
	 * @return
	 */
	@RequestMapping("/plugin/forwardComment")
	public ModelAndView forwardComment(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("plugin/receptionComment");
		return mav;
	}
	

}

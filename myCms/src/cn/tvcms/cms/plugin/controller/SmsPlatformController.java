/**
 * @Project: 特维内容管理系统
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014年10月2日 下午3:46:43
 * @version V1.0
 */
package cn.tvcms.cms.plugin.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.filter.SystemFilter;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.plugin.service.SmsPlatformService;
import cn.tvcms.cms.pojo.MailList;
import cn.tvcms.cms.pojo.MailListGroup;
import cn.tvcms.cms.pojo.SendSmsRecord;
import cn.tvcms.cms.pojo.SmsPlatformSet;

/**
 * @ClassName: SmsPlatformController
 * @Description: 短信平台
 * @author xurannan
 * @date 2014年10月2日 下午3:46:43
 * 
 */
@Controller
public class SmsPlatformController {
	private static final Log log = LogFactory.getLog(SystemFilter.class);
	
	@Autowired
	private SmsPlatformService smsplatformservice;
	
	@Autowired
	private QueryPaging queryPaging;
	
	/**
	 * @Title: findById
	 * @Description: 平台配置页面初始化查询
	 * @author xurannan
	 * @date 2014年10月2日 下午3:24:44
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/plugin/smsplatformcontroller/smsPlat")
	public ModelAndView smsPlat() throws Exception {
		ModelAndView mav = new ModelAndView();
		SmsPlatformSet smsplatformset = new SmsPlatformSet();
		List<SmsPlatformSet> list = smsplatformservice.smsPlatFind();
		if(list.size()>0){
			smsplatformset = list.get(0);
			mav.addObject("sms", smsplatformset);
		}
		mav.setViewName("plugin/platformSet");
		return mav;
	}
	
	/**
	 * @Title: findAllMessage
	 * @Description: 配置项保存
	 * @author xurannan
	 * @date 2014年10月2日 下午4:31:02
	 * @param request
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/smsformsave")
	public ModelAndView findAllMessage(SmsPlatformSet smsplatformset,HttpServletRequest request) throws Exception{
		ModelAndView mav=new ModelAndView();
		String returnString="保存配置成功!";
		String forward="";
		/* 操作数据记录部分 */
		smsplatformset.setModifyUserId(SystemUtils.getLoginUserId(request));//记录修改用户ID
		String strdate = DateTools.getStandSystemDate();//获取系统当前时间
		smsplatformset.setModifyTime(DateTools.getDateTime(strdate));//转换时间类型并记录修改用户时间
		smsplatformservice.saveOrUpdateSet(smsplatformset);
		forward="/plugin/smsplatformcontroller/smsPlat";
		mav.addObject("url",forward);
		mav.addObject("returnString",returnString);
		   mav.setViewName("system/returnAlert1");
		return mav;
	}
	
	/**
	 * @Title: smsRecordFindAll
	 * @Description: 查询所有短信发送记录
	 * @author xurannan
	 * @date 2014年10月5日 上午3:03:46
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/smsRecordFindAll")
	public ModelAndView smsRecordFindAll(HttpServletRequest request,SendSmsRecord sendSmsRecord) throws Exception{
		//List<SendSmsRecord> list = smsplatformservice.smsRecordFindAll();
		
		
		String sqlWhere="from SendSmsRecord where 1=1";
		if(sendSmsRecord!=null){
			sendSmsRecord.setSendTime(DateTools.getDate(request.getParameter("sendTimes")));
			if(sendSmsRecord.getPhone()!=null){
				if(!sendSmsRecord.getPhone().equals("")){
					sqlWhere+=" and phone like '%"+sendSmsRecord.getPhone()+"%'";
				}
			}
			if(sendSmsRecord.getType()!=null){
				if(!sendSmsRecord.getType().equals("0")&&!sendSmsRecord.getType().equals("")){
					sqlWhere+=" and type='"+sendSmsRecord.getType()+"'";
				}
			}
			if(sendSmsRecord.getState()!=null){
				if(!sendSmsRecord.getState().equals("0")&&!sendSmsRecord.getState().equals("")){
					sqlWhere+=" and state='"+sendSmsRecord.getState()+"'";
				}
			}
			if(sendSmsRecord.getSendTime()!=null){
				if(!sendSmsRecord.getSendTime().equals("")){
					sqlWhere+=" and sendTime between '"+DateTools.getDateYYYYMMDD(sendSmsRecord.getSendTime())+"' and '"+DateTools.getSpecifiedDayAfter(DateTools.getDateYYYYMMDD(sendSmsRecord.getSendTime()))+"'";
				}
			}
		}
		sqlWhere+=" Order by sendTime desc";
		Map<String, Object> map=queryPaging.query(sqlWhere, request, SendSmsRecord.class);
		ModelAndView mav=new ModelAndView();
		mav.addObject("paging", map);
		mav.setViewName("plugin/smsRecord");
		return mav;
	}
	
	/**
	 * @Title: loginHome
	 * @Description: 发送短信页面
	 * @author xurannan
	 * @date 2014年10月2日 下午11:34:33
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/sendsmsPage")
	public ModelAndView sendsmsPage() {
		ModelAndView mav=new ModelAndView();
		List<SendSmsRecord> list=smsplatformservice.findRecordTop20();
		List<MailListGroup> groupList=smsplatformservice.findGroupList();
		mav.addObject("list",list);
		mav.addObject("groupList",groupList);
		mav.setViewName("plugin/sendSms");
		return mav;
	}
	
	/**
	 * @Title: sendsms
	 * @Description: 发送短信功能并记录发送日志
	 * @author xurannan
	 * @date 2014年10月3日 上午12:17:15
	 * @param sendsmsrecord 记录发送日志，需要设置参数
	 * @param request
	 * @param phone 手机号
	 * @param txt 短信内容
	 * @param type 类型,1=预约发送，2=留言发送，3=后台发送，4=其他发送
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/plugin/smsplatformcontroller/sendsms")
	public ModelAndView sendsms(SendSmsRecord sendsmsrecord,HttpServletRequest request,
			String phone,String txt,String type) throws Exception{
		String returnString="";//返回页面弹出提示
		String forward = "/plugin/smsplatformcontroller/sendsmsPage";
		ModelAndView mav=new ModelAndView();
		phone = sendsmsrecord.getPhone();
		txt=sendsmsrecord.getTxt()+"回N退订";
		List<Object> list = smsplatformservice.sendsms(phone, txt, "3", null,request,"");
		returnString=list.get(0).toString();
		mav.addObject("sms_return",list.get(1));
		mav.addObject("returnString", returnString);
		mav.addObject("url",forward);
		mav.setViewName("system/returnAlert1");
		return mav;
	}
	
	/**
	 * @Title: deleteRecord
	 * @Description: 删除短信发送记录
	 * @author xurannan
	 * @date 2014年10月5日 上午5:16:29
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/plugin/smsplatformcontroller/deleteRecord/{id}")
	public ModelAndView deleteRecord(@PathVariable("id") String id) throws Exception{
		String returnString="";//返回页面弹出提示
		String forward = "/plugin/smsplatformcontroller/smsRecordFindAll";
		try {
			smsplatformservice.deleteRecord(id);
			returnString="删除成功！";
		} catch (Exception e) {
			log.debug("异常信息：");
			e.printStackTrace();
			//returnString = "出现异常，请与系统管理员联系！";
			forward = "error";//返回单独错误页面时使用
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("returnString", returnString);
		mav.addObject("url", forward);
		mav.setViewName("system/returnAlert1");
		return mav;
	}
	/**
	 * 
	 * @Title: findAllMailList
	 * @Description: 查询所有通讯录
	 * @author sunjinyang
	 * @date 2014-11-6 上午10:07:38
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/findMailList")
	public ModelAndView findAllMailList(HttpServletRequest request,MailList mailList){
		ModelAndView mav=new ModelAndView();
		StringBuffer hql=new StringBuffer("from MailList where 1=1");
		
		if(mailList!=null){
			if(mailList.getName()!=null&&!mailList.getName().equals("")){
				hql.append(" and name like '%"+mailList.getName()+"%'");
			}
			if(mailList.getPinyin()!=null&&!mailList.getPinyin().equals("")){
				hql.append(" and pinyin like '%"+mailList.getPinyin()+"%'");
			}
			if(mailList.getPhone()!=null&&!mailList.getPhone().equals("")){
				hql.append(" and phone like '%"+mailList.getPhone()+"%'");
			}
			if(mailList.getGroupId()!=null&&mailList.getGroupId().getId()!=0){
				hql.append(" and groupId.id ="+mailList.getGroupId().getId());
			}
			if(mailList.getRemarks()!=null&&!mailList.getRemarks().equals("")){
				hql.append(" and remarks like '%"+mailList.getRemarks()+"%'");
			}
		}
		hql.append(" order by pinyin");
		List<MailListGroup> groupList=smsplatformservice.findAllMailListGroup();
		Map<String, Object> map=queryPaging.query(hql.toString(), request, MailList.class);
		mav.addObject("mailList",mailList);
		mav.addObject("paging",map);
		mav.addObject("groupList",groupList);
		mav.setViewName("plugin/queryMailList");
		return mav;
	}
	/**
	 * 
	 * @Title: findMailListById
	 * @Description: 返回新增或修改页面
	 * @author sunjinyang
	 * @date 2014-11-6 下午02:02:06
	 * @param id
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/findMailListById/{id}")
	public ModelAndView findMailListById(@PathVariable("id") Integer id){
		ModelAndView mav=new ModelAndView();
		if(id!=0){
			MailList mailList=smsplatformservice.findMailById(id);
			mav.addObject("mailList",mailList);
		}
		List<MailListGroup> groupList=smsplatformservice.findAllMailListGroup();
		mav.addObject("groupList",groupList);
		mav.setViewName("plugin/updateOrAddMail");
		return mav;
	}
	/**
	 * 
	 * @Title: addOrUpdateMail
	 * @Description:新增或保存联系人
	 * @author sunjinyang
	 * @date 2014-11-6 下午02:43:43
	 * @param mailList
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/addOrUpdateMail")
	public ModelAndView addOrUpdateMail(MailList mailList){
		ModelAndView mav=new ModelAndView();
		String returnString="";
		String forward="/plugin/smsplatformcontroller/findMailList.html";
		if(mailList.getId()!=null&&mailList.getId()!=0){
			returnString="修改联系人成功!";
		}else{
			returnString="新增联系人成功!";
		}
		smsplatformservice.addOrUpdateMail(mailList);
		mav.addObject("returnString",returnString);
		mav.addObject("url",forward);
		mav.setViewName("system/returnAlert1");
		return mav;
	}
	/**
	 * 
	 * @Title: deleteMail
	 * @Description: 删除联系人
	 * @author sunjinyang
	 * @date 2014-11-6 下午02:58:57
	 * @param ids
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/deleteMail/{ids}")
	public ModelAndView deleteMail(@PathVariable("ids") String ids){
		ModelAndView mav=new ModelAndView();
		String returnString="删除成功!";
		String forward="/plugin/smsplatformcontroller/findMailList.html";
		smsplatformservice.deleteMail(ids);
		mav.addObject("returnString",returnString);
		mav.addObject("url",forward);
		mav.setViewName("system/returnAlert1");
		return mav;
	}
	/**
	 * 
	 * @Title: findAllMailListGroup
	 * @Description: 查询所有通讯录分组
	 * @author sunjinyang
	 * @date 2014-11-6 下午03:06:05
	 * @param request
	 * @param mailListGroup
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/findMailListGroup")
	public ModelAndView findAllMailListGroup(HttpServletRequest request,MailListGroup mailListGroup){
		ModelAndView mav=new ModelAndView();
		StringBuffer hql=new StringBuffer("from MailListGroup where 1=1");
		if(mailListGroup!=null){
			if(mailListGroup.getTitle()!=null&&!mailListGroup.getTitle().equals("")){
				hql.append(" and title like '%"+mailListGroup.getTitle()+"%'");
			}
		
			if(mailListGroup.getRemarks()!=null&&!mailListGroup.getRemarks().equals("")){
				hql.append(" and remarks like '%"+mailListGroup.getRemarks() +"%'");
			}
		}
		Map<String, Object> map=queryPaging.query(hql.toString(), request, MailList.class);
		mav.addObject("mailListGroup",mailListGroup);
		mav.addObject("paging",map);
		mav.setViewName("plugin/queryMailListGroup");
		return mav;
	}
	/**
	 * 
	 * @Title: findMailListGroupById
	 * @Description:返回新增或修改联系人分组
	 * @author sunjinyang
	 * @date 2014-11-6 下午03:14:13
	 * @param id
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/findMailListGroupById/{id}")
	public ModelAndView findMailListGroupById(@PathVariable("id") Integer id){
		ModelAndView mav=new ModelAndView();
		if(id!=0){
			MailListGroup mailListGroup=smsplatformservice.findMailGroupById(id);
			mav.addObject("mailListGroup",mailListGroup);
		}
		mav.setViewName("plugin/updateOrAddMailGroup");
		return mav;
	}
	
	/**
	 * 
	 * @Title: addOrUpdateMailGroup
	 * @Description: 新增或修改联系人分组
	 * @author sunjinyang
	 * @date 2014-11-6 下午03:21:00
	 * @param mailListGroup
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/addOrUpdateMailGroup")
	public ModelAndView addOrUpdateMailGroup(MailListGroup mailListGroup){
		ModelAndView mav=new ModelAndView();
		String returnString="";
		String forward="/plugin/smsplatformcontroller/findMailListGroup.html";
		if(mailListGroup.getId()!=null&&mailListGroup.getId()!=0){
			returnString="修改分组成功!";
		}else{
			returnString="新增分组成功!";
		}
		smsplatformservice.addOrUpdateMailGroup(mailListGroup);
		mav.addObject("returnString",returnString);
		mav.addObject("url",forward);
		mav.setViewName("system/returnAlert1");
		return mav;
	}
	/**
	 * 
	 * @Title: deleteMail
	 * @Description: 删除联系人分组
	 * @author sunjinyang
	 * @date 2014-11-6 下午03:22:19
	 * @param ids
	 * @return
	 */
	@RequestMapping("/plugin/smsplatformcontroller/deleteMailGroup/{ids}")
	public ModelAndView deleteMailGroup(@PathVariable("ids") String ids){
		ModelAndView mav=new ModelAndView();
		String returnString="删除分组成功!";
		String forward="/plugin/smsplatformcontroller/findMailListGroup.html";
		smsplatformservice.deleteMailGroup(ids);
		mav.addObject("returnString",returnString);
		mav.addObject("url",forward);
		mav.setViewName("system/returnAlert1");
		return mav;
	}
	
	/**
	 * 
	 * @Title: searchMail
	 * @Description:通过关键字查询
	 * @author sunjinyang
	 * @date 2014-11-8 上午09:53:21
	 * @param mail
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/plugin/smsplatformcontroller/searchMail")
	public Map<String , List> searchMail(HttpServletRequest request){
		String mail=request.getParameter("mail");
		
		if(StringUtils.isEmpty(mail)) return null;
		
		Map<String , List> map=smsplatformservice.searchMailGroup(mail);
		return map;
	}
}

/**
 * @Project: 特维内容管理系统
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014年10月2日 下午5:16:52
 * @version V1.0
 */
package cn.tvcms.cms.plugin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.sms.ClientSDK;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.PinyinUtil;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.pojo.MailList;
import cn.tvcms.cms.pojo.MailListGroup;
import cn.tvcms.cms.pojo.SendSmsRecord;
import cn.tvcms.cms.pojo.SmsPlatformSet;

/**
 * @ClassName: SmsPlatformService
 * @Description: 短信平台Service
 * @author xurannan
 * @date 2014年10月2日 下午5:16:52
 * 
 */
@Service
public class SmsPlatformService {
	@Autowired
	private CommonDao commonDao;
	
	/**
	 * @Title: saveOrUpdate
	 * @Description: 保存或更新短信平台配置
	 * @author xurannan
	 * @date 2014年10月2日 下午5:18:18
	 * @param smsplatformset
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void saveOrUpdateSet(SmsPlatformSet smsplatformset){
		commonDao.saveOrUpdate(smsplatformset);
	}
	
	/**
	 * @Title: smsPlatFind
	 * @Description: 查询平台配置项
	 * @author xurannan
	 * @date 2014年10月5日 上午3:09:09
	 * @return
	 */
	@Transactional(readOnly=true, propagation=Propagation.REQUIRED)
	public List<SmsPlatformSet> smsPlatFind(){
		return commonDao.findAll(SmsPlatformSet.class);
	}
	
	/**
	 * @Title: smsRecordFindAll
	 * @Description: 查询短信发送记录
	 * @author xurannan
	 * @date 2014年10月5日 上午3:12:09
	 * @return
	 */
	@Transactional(readOnly=true, propagation=Propagation.REQUIRED)
	public List<SendSmsRecord> smsRecordFindAll(){
		return commonDao.findAll(SendSmsRecord.class);
	}
	
	/**
	 * @Title: save
	 * @Description: 保存发送记录
	 * @author xurannan
	 * @date 2014年10月3日 上午12:08:54
	 * @param smsplatformset
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void save(SendSmsRecord sendsmsrecord){
		commonDao.save(sendsmsrecord);
	}
	
	/**
	 * @Title: deleteRecord
	 * @Description: 删除短信发送记录
	 * @author xurannan
	 * @date 2014年10月5日 上午5:15:44
	 * @param ids
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void deleteRecord(String ids){
		ids="'"+ids.replace(",", "','")+"'";
		
		String hql = "delete from SendSmsRecord where id in ("+ids+") ";
		commonDao.executeHQL(hql);
	} 
	
	/**
	 * @Title: sendsms
	 * @Description: 发送短信
	 * @author xurannan
	 * @date 2014-10-8 下午04:30:18
	 * @param sendsmsrecord
	 * @param phone 手机号
	 * @param txt 短信内容
	 * @param type 类型,1=预约发送，2=留言发送，3=后台发送，4=其他发送
	 * @param returnString 返回页面提示信息
	 * @param uuid
	 * @return
	 * @throws Exception
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public List<Object> sendsms(String phone,String txt,String type,
			String returnString,HttpServletRequest request,String uid) throws Exception{
		ClientSDK sdk = new ClientSDK();
		String sms_name=null;//平台用户名
		String sms_pwd=null;//平台密码
		int su=0;//成功记录数
		int not=0;//发送失败记录数
		
		List<Object> ls = new ArrayList<Object>();
		//if("".equals(type) || phone==null || "".equals(txt) || txt==null){//如果等于空，说明不是自动发送，表示手动发送短信。
		//	txt = sendsmsrecord.getTxt();//短信内容
		//	phone = sendsmsrecord.getPhone();
		//	sendsmsrecord.setType("3");
		//}else{
		//	sendsmsrecord.setType(type);
		//}
		String sms_return=null;//短信平台返回参数
		List<SmsPlatformSet> list = this.smsPlatFind();//查询平台配置项是否存在
		if(!list.isEmpty()){
			sms_name=list.get(0).getSmsName();
			sms_pwd=list.get(0).getSmsPwd();
			String sub=",";
			int isa=phone.indexOf(sub);//判断是否存在“,”如果存在说明是多个手机号码
			
			if(isa>=0){
				//log.info("多个发送号码！");
				String a[] = phone.split(",");
				for(int i=0;i<a.length;i++){
					SendSmsRecord sendsmsrecord = new SendSmsRecord(); 
					if("".equals(uid) || uid == null){
						String id = UUID.randomUUID().toString().replace("-", "");
						sendsmsrecord.setId(id);
					}else{
						sendsmsrecord.setId(uid);
					}
					String spCode= DateTools.getDateyyMMddHHmmss();
					sms_return=sdk.sendSms(sms_name, sms_pwd, a[i].toString(), txt+"【"+list.get(0).getSign()+"】");//调用短信平台发送接口
					sms_return = sms_return.replaceAll("\r|\n", "");
					//1=发送成功，2=用户名为空，3=密码为空，4=手机号为空，5=信息为空，6=错误的号码，7=位置错误，8=未配置短信平台用户名或密码
					if("0".equals(sms_return)){
						sendsmsrecord.setState("1");
						returnString="发送成功";
						su++;
					}else if("ERROR&cpName=为空".equals(sms_return)){
						sendsmsrecord.setState("2");
						returnString="发送失败：用户名为空";
						not++;
					}else if("ERROR&cppwd=为空".equals(sms_return)){
						sendsmsrecord.setState("3");
						returnString="发送失败：密码为空";
						not++;
					}else if("ERROR&phones=为空".equals(sms_return)){
						sendsmsrecord.setState("4");
						returnString="发送失败：手机号为空";
						not++;
					}else if("ERROR&msg=为空".equals(sms_return)){
						sendsmsrecord.setState("5");
						returnString="发送失败：信息为空";
						not++;
					}else if("ERROR&phones=错误的号码".equals(sms_return)){
						sendsmsrecord.setState("6");
						returnString="发送失败：错误的号码";
						not++;
					}else{
						//发送失败：未知错误
						//如果失败获取平台返回错误信息
						sendsmsrecord.setState("7");
						returnString="发送失败："+sms_return;
						not++;
					}
					sendsmsrecord.setSpCode(spCode);//流水号
					sendsmsrecord.setSendTime(DateTools.getDateTime(DateTools.getStandSystemDate()));//发送时间
					/* 操作数据记录部分 */
					sendsmsrecord.setPhone(a[i]);
					sendsmsrecord.setType(type);
					sendsmsrecord.setTxt(txt);
					sendsmsrecord.setModifyUserId(SystemUtils.getLoginUserId(request));//记录修改用户ID
					String strdate = DateTools.getStandSystemDate();//获取系统当前时间
					sendsmsrecord.setModifyTime(DateTools.getDateTime(strdate));//转换时间类型并记录修改用户时间
					this.save(sendsmsrecord);
				}
				if(su==0){
					returnString="发送失败："+not+"条";
				}else if(su!=0 && not!=0){
					returnString="发送成功："+su+"条,发送失败："+not+"条";
				}
			}else{
				SendSmsRecord sendsmsrecord = new SendSmsRecord(); 
				if("".equals(uid) || uid == null){
					String id = UUID.randomUUID().toString().replace("-", "");
					sendsmsrecord.setId(id);
				}else{
					sendsmsrecord.setId(uid);
				}
				
				//log.info("单个发送号码！");
				String spCode= DateTools.getDateyyMMddHHmmss();
				sms_return=sdk.sendSms(sms_name, sms_pwd, phone, "【"+list.get(0).getSign()+"】"+txt);//调用短信平台发送接口
				sms_return = sms_return.replaceAll("\r|\n", "");
				//1=发送成功，2=用户名为空，3=密码为空，4=手机号为空，5=信息为空，6=错误的号码，7=未知错误，8=未配置短信平台用户名或密码
				if("0".equals(sms_return)){
					sendsmsrecord.setState("1");
					returnString="发送成功";
				}else if("ERROR&cpName=为空".equals(sms_return)){
					sendsmsrecord.setState("2");
					returnString="发送失败：用户名为空";
				}else if("ERROR&cppwd=为空".equals(sms_return)){
					sendsmsrecord.setState("3");
					returnString="发送失败：密码为空";
				}else if("ERROR&phones=为空".equals(sms_return)){
					sendsmsrecord.setState("4");
					returnString="发送失败：手机号为空";
				}else if("ERROR&msg=为空".equals(sms_return)){
					sendsmsrecord.setState("5");
					returnString="发送失败：信息为空";
				}else if("ERROR&phones=错误的号码".equals(sms_return)){
					sendsmsrecord.setState("6");
					returnString="发送失败：错误的号码";
				}else{
					//发送失败：未知错误
					//如果失败获取平台返回错误信息
					sendsmsrecord.setState("7");
					returnString="发送失败："+sms_return;
				}
				sendsmsrecord.setSpCode(spCode);//流水号
				sendsmsrecord.setSendTime(DateTools.getDateTime(DateTools.getStandSystemDate()));//发送时间
				/* 操作数据记录部分 */
				sendsmsrecord.setType(type);
				sendsmsrecord.setPhone(phone);
				sendsmsrecord.setTxt(txt);
				sendsmsrecord.setModifyUserId(SystemUtils.getLoginUserId(request));//记录修改用户ID
				String strdate = DateTools.getStandSystemDate();//获取系统当前时间
				sendsmsrecord.setModifyTime(DateTools.getDateTime(strdate));//转换时间类型并记录修改用户时间
				this.save(sendsmsrecord);
			}
		}
		ls.add(returnString);
		ls.add(sms_return);
		return ls;
	}

	/**
	 * @Title: findAllMailListGroup
	 * @Description: 查询所有的通讯录分组
	 * @author sunjinyang
	 * @date 2014-11-6 上午11:59:24
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<MailListGroup> findAllMailListGroup() {
		String hql=" from MailListGroup";
		return commonDao.queryHQL(hql);
	}

	/**
	 * @Title: findMailById
	 * @Description: 根据id查找通讯录
	 * @author sunjinyang
	 * @date 2014-11-6 下午02:04:23
	 * @param id
	 * @return
	 */
	public MailList findMailById(Integer id) {
		// TODO Auto-generated method stub
		return commonDao.findById(MailList.class, id);
	}

	/**
	 * @Title: addOrUpdateMail
	 * @Description: 新增或修改联系人
	 * @author sunjinyang
	 * @date 2014-11-6 下午02:21:13
	 * @param mailList
	 */
	@Transactional
	public void addOrUpdateMail(MailList mailList) {
		if(mailList.getId()!=null){
			commonDao.update(mailList);
		}else{
			mailList.setPinyin(PinyinUtil.makeStringByStringSet(PinyinUtil.getPinyin(mailList.getName())));
			commonDao.save(mailList);
		}
		
	}

	/**
	 * @Title: deleteMail
	 * @Description: 删除联系人
	 * @author sunjinyang
	 * @date 2014-11-6 下午02:57:22
	 * @param ids
	 */
	@Transactional
	public void deleteMail(String ids) {
		ids="'"+ids.replace(",", "','")+"'";
		String hql="delete from MailList where id in("+ids+")";
		commonDao.executeHQL(hql);
		
	}

	/**
	 * @Title: findMailGroupById
	 * @Description: 查找分组
	 * @author sunjinyang
	 * @date 2014-11-6 下午03:15:10
	 * @param id
	 * @return
	 */
	public MailListGroup findMailGroupById(Integer id) {
		// TODO Auto-generated method stub
		return commonDao.findById(MailListGroup.class, id);
	}

	/**
	 * @Title: addOrUpdateMailGroup
	 * @Description:新增或修改联系人分组
	 * @author sunjinyang
	 * @date 2014-11-6 下午03:19:47
	 * @param mailListGroup
	 */
	@Transactional
	public void addOrUpdateMailGroup(MailListGroup mailListGroup) {
		if(mailListGroup.getId()!=null&&mailListGroup.getId()!=0){
			commonDao.update(mailListGroup);
		}else{
			commonDao.save(mailListGroup);
		}
		
	}

	/**
	 * @Title: deleteMailGroup
	 * @Description: 删除联系人分组并把其分组下的联系人移至未分组下
	 * @author sunjinyang
	 * @date 2014-11-6 下午03:23:04
	 * @param ids
	 */
	@Transactional
	public void deleteMailGroup(String ids) {
		String [] str=ids.split(",");
		for (int i = 0; i < str.length; i++) {
			String hql="update MailList set groupId.id=1 where  groupId.id="+str[i];
			commonDao.executeHQL(hql);
		}
		ids="'"+ids.replace(",", "','")+"'";
		String hql="delete from MailListGroup where id in ("+ids+")";
		commonDao.executeHQL(hql);
		
	}

	/**
	 * @Title: findRecordTop20
	 * @Description:查询前20条短信发送记录
	 * @author sunjinyang
	 * @date 2014-11-6 下午08:47:26
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<SendSmsRecord> findRecordTop20() {
		
		Criteria criteria=commonDao.createCriteria(SendSmsRecord.class);
		criteria.addOrder(Order.desc("sendTime"));
		criteria.setMaxResults(20);
		
		return criteria.list();
	}

	/**
	 * @Title: findGroupList
	 * @Description: 查询通讯录分组并且查出每个组的联系人
	 * @author sunjinyang
	 * @date 2014-11-6 下午08:52:51
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<MailListGroup> findGroupList() {
		String hql="from MailListGroup";
		List<MailListGroup> groupList=commonDao.queryHQL(hql);
		for (int i = 0; i < groupList.size(); i++) {
			String hqls="from MailList where groupId.id="+groupList.get(i).getId()+" order by pinyin";
			groupList.get(i).setList(commonDao.queryHQL(hqls));
		}
		return groupList;
	}

	/**
	 * @Title: searchMailGroup
	 * @Description:按关键字查询
	 * @author sunjinyang
	 * @date 2014-11-8 上午09:45:21
	 * @param mail
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Map<String , List> searchMailGroup(String mail) {
		String hql="from MailListGroup where id in (select groupId.id from MailList where name like '%"+mail+"%')";
		List<MailListGroup> list=commonDao.queryHQL(hql);
		Map<String , List> map=new HashMap<String, List>();
		map.put("group", list);
		List<MailList> lis=new ArrayList<MailList>();
		for (int i = 0; i < list.size(); i++) {
			hql="from MailList where groupId.id="+list.get(i).getId()+" and name like '%"+mail+"%'";
			List<MailList> mailList = commonDao.queryHQL(hql);
			for(int j=0;j<mailList.size();j++){
				lis.add(mailList.get(j));
			}
		}
		map.put("mail", lis);
		return map;
	}
	
	

}

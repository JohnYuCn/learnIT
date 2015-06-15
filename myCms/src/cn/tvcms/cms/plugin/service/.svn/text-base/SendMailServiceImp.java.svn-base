/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lp
 * @date 2014-11-13 下午10:03:46
 * @version V1.0
 */
package cn.tvcms.cms.plugin.service;

import java.util.Properties;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import cn.tvcms.cms.pojo.MailUtil;

/**
 * @ClassName: SendMailServiceImp
 * @Description: 邮件发送service
 * @author lp
 * @date 2014-11-13 下午10:03:46 7443
 * 
 */
@Service
public class SendMailServiceImp {

	public void sendOrderMail(MailUtil mailUtil,String con) {

		JavaMailSenderImpl senderImpl = new JavaMailSenderImpl();

		senderImpl.setHost(mailUtil.getEmailHost());
		// 建立邮件消息
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(mailUtil.getToEmails());
		mailMessage.setFrom(mailUtil.getEmailUserName());
		mailMessage.setSubject(mailUtil.getSubject());
		mailMessage.setText(con);

		senderImpl.setUsername(mailUtil.getEmailUserName());
		senderImpl.setPassword(mailUtil.getEmailPassword());
		senderImpl.setPort(mailUtil.getPort());

		Properties prop = new Properties();
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.timeout", "25000");
		senderImpl.setJavaMailProperties(prop);
		// 发送邮件
		senderImpl.send(mailMessage);

		System.out.println(" 邮件发送成功.. ");
	}

}

package cn.tvcms.cms.common.sms;

import java.net.URLEncoder;

import cn.tvcms.cms.common.sms.WebClient;;

public class ClientSDK {
	private WebClient webclient = new WebClient();
	private String baseurl = "http://221.122.112.136:8080/sms/";

	/**
	 * 
	 * @param username 用户名
	 * @param password 密码
	 * @param phone 发送手机号，如果发送多个手机号可用逗号隔开，每一批号码最多20个
	 * @param content 发送内容
	 * @return 如果返回值为0，则说明发送成功，如果返回其他值，则说明发送失败
	 * @throws Exception
	 */
	public String sendSms(String username, String password, String phone,
			String content) throws Exception {
		return webclient.doGet(baseurl + "mt.jsp?cpName=" + username
				+ "&cpPwd=" + password + "&phones=" + phone + "&msg="
				+ URLEncoder.encode(content, "gbk"),"gbk");
	}
}

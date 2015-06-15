/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-12-7 下午03:55:41
 * @version V1.0
 */
package cn.tvcms.cms.system.service;

import java.sql.DriverManager;

import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.MessageUtils;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * @ClassName: MessageService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author sunjinyang
 * @date 2014-12-7 下午03:55:41
 * 
 */

public class MessageService {
	public boolean saveMsg(String content,String title){
		String url=MessageUtils.getMessage("mysqlurl");
		String user="root";
		String pwd="root";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=(Connection) DriverManager.getConnection(url, user, pwd);
		    String sql="insert into message_push(content,send_time,title) values ('"+content+"','"+DateTools.getStandSystemDate()+"','"+title+"')";
		    Statement statement=(Statement) connection.createStatement();
		    statement.execute(sql);
		    statement.close();
		    connection.close();
		    return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public boolean saveAuth(String domainName, String code,String endTime,String startTime,String type,String status){
		
		String url=MessageUtils.getMessage("mysqlurl");
		String user="root";
		String pwd="root";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=(Connection) DriverManager.getConnection(url, user, pwd);
			String sqls="delete from tvcms_authorization";
		    String sql="insert into tvcms_authorization(domain_name,code,end_time,start_time,type,status) values ('"+domainName+"','"+code+"','"+endTime+"','"+startTime+"','"+type+"','"+status+"')";
		    Statement statement=(Statement) connection.createStatement();
		    statement.execute(sqls);
		    statement.execute(sql);
		    statement.close();
		    connection.close();
		    return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	

}

/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-12-7 下午03:57:51
 * @version V1.0
 */
package cn.tvcms.cms.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Authorization;
import cn.tvcms.cms.pojo.MessagePush;

/**
 * @ClassName: MessagePushService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author sunjinyang
 * @date 2014-12-7 下午03:57:51
 * 
 */
@Service
public class MessagePushService {
	
	@Autowired
	private CommonDao commonDao;
	public void saveMsg(MessagePush messagePush)  throws Exception{
	   // HibernateTemplate template=new HibernateTemplate();
     /*   System.out.println("11111111111");
		System.out.println(messagePush.getDomainName());
		SessionFactory sf=getSessionFactory();
		Session session=SessionFactoryUtils.getSession(sf, true);
		session.save(messagePush);*/
		commonDao.save(messagePush);
		
		
		
	/*	Configuration configuration = new Configuration().configure("resources/hibernate/hibernate.cfg.xml");
		
        ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
		SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		Session session=sessionFactory.openSession();
		session.save(messagePush);*/
		
		
		/*String url="jdbc:mysql://192.168.16.111/standard";
		String user="root";
		String pwd="root";
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection=(Connection) DriverManager.getConnection(url, user, pwd);
	    String sql="insert into message_push(content,send_time) values ('"+messagePush.getContent()+"','"+DateTools.getStandSystemDate()+"')";
	    Statement statement=(Statement) connection.createStatement();
	    statement.execute(sql);
	    statement.close();
	    connection.close();*/
	}
	/**
	 * @Title: findAuth
	 * @Description: 查找本系统授权信息
	 * @author sunjinyang
	 * @date 2014-12-11 下午12:16:13
	 * @return
	 */
	public Authorization findAuth() {
		String hql="from Authorization";
		if(commonDao.queryHQL(hql).size()==0){
			return null;
		}
		return (Authorization) commonDao.queryHQL(hql).get(0);
	}
	/**
	 * @Title: updateAuth
	 * @Description: 改变授权信息状态
	 * @author sunjinyang
	 * @date 2014-12-11 下午02:16:37
	 * @param authorization
	 */
	public void updateAuth(Authorization authorization) {
		commonDao.update(authorization);
		
	}
	

}

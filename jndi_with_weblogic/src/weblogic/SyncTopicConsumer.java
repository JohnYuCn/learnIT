package weblogic;

import java.util.Properties;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.Destination;
import javax.jms.MessageConsumer;
import javax.jms.MessageProducer;
import javax.jms.Session;
import javax.jms.TextMessage;
import javax.jms.Topic;
import javax.jms.TopicSubscriber;
import javax.naming.Context;
import javax.naming.InitialContext;

public class SyncTopicConsumer {

	public static void main(String[] args) throws Exception{
		//context的获取
		String server_url="t3://localhost:7001";
		String context_factory_url="weblogic.jndi.WLInitialContextFactory";
		Properties pro=new Properties();
		pro.put(Context.INITIAL_CONTEXT_FACTORY, context_factory_url);
		pro.put(Context.PROVIDER_URL, server_url);
		
		Context context=new InitialContext(pro);
		
//		String connectionFactoryJndi="weblogic.jms.ConnectionFactory";
		String connectionFactoryJndi="connectionFactory0";
		Topic dest=(Topic)context.lookup("topic0");
		
		ConnectionFactory factory=(ConnectionFactory) context.lookup(connectionFactoryJndi);
		Connection con=factory.createConnection();
		con.setClientID("johnyu");
		con.start();
		Session sen=con.createSession(false, Session.AUTO_ACKNOWLEDGE);
		System.out.println("sen创建......");
		
		TopicSubscriber subcriber=	sen.createDurableSubscriber(dest, "johnyu");
		System.out.println("持久订阅者创建，它不会错过任何消息......");
		Thread.sleep(10000);
		TextMessage msg=(TextMessage)subcriber.receive();
		System.out.println(msg.getText());
		sen.close();
		con.close();
	}

}

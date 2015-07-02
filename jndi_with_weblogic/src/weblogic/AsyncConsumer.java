package weblogic;

import java.util.Properties;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageConsumer;
import javax.jms.MessageListener;
import javax.jms.Session;
import javax.jms.TextMessage;
import javax.naming.Context;
import javax.naming.InitialContext;

public class AsyncConsumer{
	
	public static void main(String[] args) throws Exception{
		//context的获取
				String server_url="t3://localhost:7001";
				String context_factory_url="weblogic.jndi.WLInitialContextFactory";
				Properties pro=new Properties();
				pro.put(Context.INITIAL_CONTEXT_FACTORY, context_factory_url);
				pro.put(Context.PROVIDER_URL, server_url);
				
				Context context=new InitialContext(pro);
				
//				String connectionFactoryJndi="weblogic.jms.ConnectionFactory";
				String connectionFactoryJndi="connectionFactory0";
				Destination dest=(Destination)context.lookup("queue0");
				ConnectionFactory factory=(ConnectionFactory) context.lookup(connectionFactoryJndi);
				Connection con=factory.createConnection();
				con.start();
				Session sen=con.createSession(false, Session.AUTO_ACKNOWLEDGE);
				MessageConsumer consumer=sen.createConsumer(dest);
				
				//异步测试
				consumer.setMessageListener(new MessageListener() {
					@Override
					public void onMessage(Message m) {
						TextMessage msg=(TextMessage)m;
						try {
							System.out.println(msg.getText());
						} catch (JMSException e) {
							e.printStackTrace();
						}
					}
				});
				System.out.println("就绪");
				Thread.sleep(20000);
				
				sen.close();
				con.close();
	}

	
}

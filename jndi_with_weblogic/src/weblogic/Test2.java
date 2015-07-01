package weblogic;

import java.util.Properties;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.Destination;
import javax.jms.MessageConsumer;
import javax.jms.MessageProducer;
import javax.jms.Session;
import javax.jms.TextMessage;
import javax.naming.Context;
import javax.naming.InitialContext;

public class Test2 {

	public static void main(String[] args) throws Exception{
		//contextµÄ»ñÈ¡
		String server_url="t3://localhost:7001";
		String context_factory_url="weblogic.jndi.WLInitialContextFactory";
		Properties pro=new Properties();
		pro.put(Context.INITIAL_CONTEXT_FACTORY, context_factory_url);
		pro.put(Context.PROVIDER_URL, server_url);
		
		Context context=new InitialContext(pro);
		
//		String connectionFactoryJndi="weblogic.jms.ConnectionFactory";
		String connectionFactoryJndi="connectionFactory0";
		Destination dest=(Destination)context.lookup("queue0");
		ConnectionFactory factory=(ConnectionFactory) context.lookup(connectionFactoryJndi);
		Connection con=factory.createConnection();
		con.start();
		Session sen=con.createSession(false, Session.AUTO_ACKNOWLEDGE);
		MessageConsumer consumer=sen.createConsumer(dest);
		TextMessage msg=(TextMessage)consumer.receive();
		System.out.println(msg.getText());
		sen.close();
		con.close();
	}

}

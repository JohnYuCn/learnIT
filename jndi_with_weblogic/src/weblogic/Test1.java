package weblogic;

import java.util.Properties;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.DeliveryMode;
import javax.jms.Destination;
import javax.jms.MessageProducer;
import javax.jms.Session;
import javax.jms.TextMessage;
import javax.naming.Context;
import javax.naming.InitialContext;

public class Test1 {

	public static void main(String[] args) throws Exception{
		String server_url="t3://localhost:7001";
		String context_factory_url="weblogic.jndi.WLInitialContextFactory";
		Properties pro=new Properties();
		pro.put(Context.INITIAL_CONTEXT_FACTORY, context_factory_url);
		pro.put(Context.PROVIDER_URL, server_url);
		
		Context context=new InitialContext(pro);
		
		//String connectionFactoryJndi="weblogic.jms.ConnectionFactory";
		String connectionFactoryJndi="connectionFactory0";
		Destination dest=(Destination)context.lookup("queue0");
		ConnectionFactory factory=(ConnectionFactory) context.lookup(connectionFactoryJndi);
		Connection con=factory.createConnection();
		
		Session sen=con.createSession(false, Session.AUTO_ACKNOWLEDGE);
		MessageProducer sender=sen.createProducer(dest);
		sender.setDeliveryMode(DeliveryMode.PERSISTENT);
		//sender.setTimeToLive(20000);
		
		TextMessage msg=sen.createTextMessage("msg4");
		sender.send(msg);
		sen.close();
		con.close();
	}

}

package simple_jax_ws.client;

import java.net.URL;

import javax.xml.namespace.QName;
import javax.xml.ws.Service;

import simple_jax_ws.server.Hello;

public class Client1 {
	public static void main(String[] args) throws Exception{
		 URL url = new URL("http://127.0.0.1:9999/ws/hello?wsdl");  
	       QName qname = new QName("http://server.simple_jax_ws/", "HelloImplService");  
	        Service service = Service.create(url, qname);
	        Hello hello = service.getPort(Hello.class);  
	        System.out.println(hello.getClass().getName());
	        System.out.println(hello.say("John Yu"));  
	}
}


/*
 * 自动生成客户端工具类（包括接口）
 * wsimport -keep http://10.225.112.86:9999/ws/hello?wsdl
 将生成的代码copy到客户端，然后以如下代码完成
public class Test1 {
	public static void main(String[] args) {
		HelloImplService service=	new HelloImplService();
		Hello hello=service.getHelloImplPort();
		String s=hello.say("john");
		System.out.println(s);
	}
}  
 * 
 * *
 */


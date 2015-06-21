package simple_jax_ws.server;

import javax.jws.WebService;
import javax.xml.ws.Endpoint;

@WebService(endpointInterface="simple_jax_ws.server.Hello")
public class HelloImpl implements Hello {

	@Override
	public String say(String s) {
		// TODO Auto-generated method stub
		return "hello:"+s;
	}
	
	public static void main(String[] args) {
	        Endpoint.publish("http://localhost:9999/ws/hello", new HelloImpl());  
	        System.out.println("published.");  
	}

}

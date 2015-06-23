package cn.johnyu.jndi.test;

import java.util.Date;
import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.InitialContext;

public class Test1 {

	public static void main(String[] args) throws Exception {

		//sdsdsdf
		// ������ʵ��
		Hashtable<String, String> env = new Hashtable<String, String>();
		env.put(Context.INITIAL_CONTEXT_FACTORY,
				"org.apache.naming.java.javaURLContextFactory");
		Context ctx = new InitialContext(env);
		ctx.rebind("bd", new Date());

		// �ͻ���ʵ��
		// Context ctx=new InitialContext(env);
		Date d = (Date) ctx.lookup("bd");
		System.out.println(d);

	}

}

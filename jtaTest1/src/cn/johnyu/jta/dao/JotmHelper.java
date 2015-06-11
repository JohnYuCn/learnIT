package cn.johnyu.jta.dao;
import java.sql.Connection;

import javax.naming.NamingException;
import javax.sql.XAConnection;
import javax.transaction.TransactionManager;
import javax.transaction.UserTransaction;

import org.enhydra.jdbc.standard.StandardXADataSource;
import org.objectweb.jotm.Jotm;
import org.objectweb.transaction.jta.TMService;
public class JotmHelper {
	private TMService jotm;
	private UserTransaction userTransaction;
	private TransactionManager transactionManager;
	/**
	 * 启动事务管理服务
	 */
	public void startTMService() {
		try {
			jotm = new Jotm(true, false);
			transactionManager=	jotm.getTransactionManager();
			userTransaction = jotm.getUserTransaction();
		} catch (NamingException e1) {
			e1.printStackTrace();
		}
	}

	/**
	 * 取得数据库连�?
	 * 
	 * @param db
	 * @return
	 * @throws Exception
	 */
	public Connection getConnection(String db) throws Exception {
		StandardXADataSource xads = new StandardXADataSource();
		XAConnection xaconn = null;
		if ("mysql".equals(db)) {
			xads.setDriverName("com.mysql.jdbc.Driver");
			xads.setUrl("jdbc:mysql://localhost:3306/test");
			xads.setTransactionManager(transactionManager);
			xaconn = xads.getXAConnection("root", "123");
		} else if ("oracle".equals(db)) {
			xads.setDriverName("oracle.jdbc.driver.OracleDriver");
			xads.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
			xads.setTransactionManager(jotm.getTransactionManager());
			xaconn = xads.getXAConnection("john", "123");
		} else {

		}
		return xaconn.getConnection();
	}
	public void begin() {
		try {
			userTransaction.begin();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void commit() {
		try {
			userTransaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void rollback() {
		try {
			userTransaction.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 停止事务管理服务
	 */
	public void stopTMService() {
		jotm.stop();
		jotm = null;
	}
}

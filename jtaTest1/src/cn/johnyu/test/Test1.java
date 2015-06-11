package cn.johnyu.test;

import java.sql.Connection;

import cn.johnyu.jta.dao.JotmHelper;
import cn.johnyu.jta.dao.UserDAO;
import cn.johnyu.jta.entity.User;

public class Test1 {

	public static void main(String[] args) {
		User user=new User();
		user.setId(321);
		user.setName("a122456");
		UserDAO dao = new UserDAO();
		JotmHelper helper = new JotmHelper();
		try {
			helper.startTMService();
			Connection mysqlConn = helper.getConnection("mysql");
			Connection oracleConn = helper.getConnection("oracle");
			helper.begin();
			dao.addUserToMySQL(user, mysqlConn);
			//System.out.println(1/0);
			dao.addUserToOracle(user, oracleConn);
			helper.commit();
		} catch (Exception e) {
			helper.rollback();
			e.printStackTrace();
		} finally {
			helper.stopTMService();
		}

	}
}

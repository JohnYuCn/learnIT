package cn.johnyu.jta.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cn.johnyu.jta.entity.User;
public class UserDAO {
	/**
	 * 增加用户信息到MySQL数据库中
	 * 
	 * @param user
	 * @param connection
	 * @throws SQLException
	 */
	public void addUserToMySQL(User user, Connection connection)
			throws SQLException {
		String sql = "insert into TUser values(?,?)";
		PreparedStatement pstmt = connection.prepareStatement(sql);
		pstmt.setInt(1, user.getId());
		pstmt.setString(2, user.getName());
		pstmt.execute();
	}

	/**
	 * 增加用户信息到Oracle数据库中
	 * 
	 * @param user
	 * @param connection
	 * @throws SQLException
	 */
	public void addUserToOracle(User user, Connection connection)
			throws SQLException {
		String sql = "insert into TUser values(?,?)";
		PreparedStatement pstmt = connection.prepareStatement(sql);
		pstmt.setInt(1, user.getId());
		pstmt.setString(2, user.getName());
		pstmt.execute();
	}
}
package com.sud.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sud.bean.User;
import com.sud.connection.JDBCConnection;

public class UserService {

	public String registration(User user) {

		Connection conn = JDBCConnection.getConnection();
		String query = "insert into user" + "(name, email, mobile, address, gender, pwd, reg_date) "
				+ "values(?,?,?,?,?,?,now())";
		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString(1, user.getName());
			stmt.setString(2, user.getEmail());
			stmt.setString(3, user.getMobile());
			stmt.setString(4, user.getAddress());
			stmt.setString(5, user.getGender());
			stmt.setString(6, user.getPwd());

			stmt.execute();
			int count = stmt.getUpdateCount();

			return count > 0 ? "true" : "false";

		} catch (SQLException e) {
			e.printStackTrace();
			return "fasle";
		}
	}

	public String update(User user) {

		Connection conn = JDBCConnection.getConnection();
		String query = "update user set name=?, email=?, mobile=?,address=? where rollNo=?";
		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString(1, user.getName());
			stmt.setString(2, user.getEmail());
			stmt.setString(3, user.getMobile());
			stmt.setString(4, user.getAddress());
			stmt.setInt(5, user.getRollNo());

			int count = stmt.executeUpdate();

			return count > 0 ? "true" : "false";

		} catch (SQLException e) {
			e.printStackTrace();
			return "fasle";
		}
	}

	public User login(String email, String pwd) {
		Connection conn = JDBCConnection.getConnection();
		String query = "select * from user where email=? and pwd=?";
		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2, pwd);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setRollNo(rs.getInt("rollNo"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setAddress(rs.getString("address"));
				user.setMobile(rs.getString("mobile"));
				user.setGender(rs.getString("gender"));
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return null;
	}
}

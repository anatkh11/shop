package com.haina.shop.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.haina.shop.bean.users;
import com.haina.shop.dao.UserDao;
import com.haina.shop.util.DBUtil;


public class UserDaoImpl implements UserDao{
	private Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	public users queryUserByUserNameAndPassword(String username, String password) {
		users user = null;
		String sql = "select * from tb_users where username=? and password=?";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
			rs = pst.executeQuery();
			if(rs.next()) {
			 user= new users(rs.getInt(1),rs.getString(2), rs.getString(3),rs.getString(4), rs.getString(5), rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			DBUtil.closeConnection(conn, pst, rs);
		}
		return user;
	}

	public void insertUser(String username,String password) {
		
		String sql = "insert into tb_users value(?,?,?,?,?,?)";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, 3);
			pst.setString(2,username);
			pst.setString(3, "h");
			pst.setString(4, "99");
			pst.setString(5,"33");
			pst.setString(6, password);
			pst.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			DBUtil.closeConnection(conn, pst, rs);
		}
		
		
	}

	public users queryUserById() {
		return null;
	}

	public void updateUser(users user) {
		
	}

	public void updateUserPasswordById(int id, String oldPassword, String newPassword) {
		
	}

	public void deletUserById(int id) {
		
	}

}

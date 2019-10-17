package com.haina.shop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
		
			private static final String DRIVERNAME="com.mysql.jdbc.Driver";
			private static final String URL = "jdbc:mysql://127.0.0.1:3306/goonashop?useUnicode=true&characterEncoding=UTF-8" ;
			private static final String USERNAME = "root";
			private static final String PASSWORD = "";
			
			public static Connection getConnection() {
				Connection conn = null;
				
				try {
					Class.forName(DRIVERNAME);
					conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return conn;
			}
			
			
			public static void closeConnection(Connection conn,PreparedStatement pst,ResultSet rs) {
				try {
					if(rs!=null){
						rs.close();
					}
					if(pst!=null) {
						pst.close();
					}
					if(conn!=null) {
						conn.close();
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
}

package com.haina.shop.dao;

import com.haina.shop.bean.users;

public interface UserDao {
		
		//1.登录
			public users queryUserByUserNameAndPassword(String username,String password);
		//2.注册
			public void insertUser(String username,String password);
		//3.查看个人信息
			public users queryUserById();
		//4.修改个人信息
			public void updateUser(users user);
		//5.修改个人密码
			public void updateUserPasswordById(int id,String oldPassword,String newPassword);
		//6.注销账号
			public void deletUserById(int id);
}

package com.haina.shop.dao;

import com.haina.shop.bean.users;

public interface UserDao {
		
		//1.��¼
			public users queryUserByUserNameAndPassword(String username,String password);
		//2.ע��
			public void insertUser(String username,String password);
		//3.�鿴������Ϣ
			public users queryUserById();
		//4.�޸ĸ�����Ϣ
			public void updateUser(users user);
		//5.�޸ĸ�������
			public void updateUserPasswordById(int id,String oldPassword,String newPassword);
		//6.ע���˺�
			public void deletUserById(int id);
}

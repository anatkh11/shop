package com.haina.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haina.shop.bean.users;
import com.haina.shop.dao.UserDao;
import com.haina.shop.daoImpl.UserDaoImpl;

public class UserServlet extends HttpServlet {
	private UserDao ud = new UserDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String action = request.getParameter("action");
				
				if("login".equals(action)) {
					//��¼���ܴ��롢
					String username = request.getParameter("username");
					String password = request.getParameter("password");
					users user = ud.queryUserByUserNameAndPassword(username,password);
					if(user!=null) {
						//��user�������session�򣬷������ÿ��ҳ��ʹ��
						request.getSession().setAttribute("user",user);
						response.sendRedirect("meimeng/index.jsp");
					}else {
						String errorInfo = "�˺Ż��������" ;
						request.getSession().setAttribute("errorInfo", errorInfo);
						response.sendRedirect("meimeng/login.jsp");
					}
				}else if("register".equals(action)) {
					//ע���û���Ϣ���ܴ���
					System.out.println("what!!!!!!!!!!!!!");
					String username = request.getParameter("username");
					String password = request.getParameter("password");
					ud.insertUser(username,password);
					if(username!=null) {
						response.sendRedirect("meimeng/login.jsp ");
					}else {
						response.sendRedirect("meimeng/register.jsp");
					}
					
					
					
					
					
				}else if("queryUser".equals(action)){
					//��ѯ�û���Ϣ���ܴ���
				}else if("updateUser".equals(action)) {
					//�����û���Ϣ���ܴ���
				}
				else if("updatePassword".equals(action)) {
					//�����û����빦�ܴ���
				}else if("deleteUser".equals(action)) {
					//ɾ���û���Ϣ���ܴ���
				}else {
					response.sendRedirect("meimeng/index.jsp");
				}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

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
					//登录功能代码、
					String username = request.getParameter("username");
					String password = request.getParameter("password");
					users user = ud.queryUserByUserNameAndPassword(username,password);
					if(user!=null) {
						//将user对象存入session域，方便后续每个页面使用
						request.getSession().setAttribute("user",user);
						response.sendRedirect("meimeng/index.jsp");
					}else {
						String errorInfo = "账号或密码错误" ;
						request.getSession().setAttribute("errorInfo", errorInfo);
						response.sendRedirect("meimeng/login.jsp");
					}
				}else if("register".equals(action)) {
					//注册用户信息功能代码
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
					//查询用户信息功能代码
				}else if("updateUser".equals(action)) {
					//更新用户信息功能代码
				}
				else if("updatePassword".equals(action)) {
					//更新用户密码功能代码
				}else if("deleteUser".equals(action)) {
					//删除用户信息功能代码
				}else {
					response.sendRedirect("meimeng/index.jsp");
				}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

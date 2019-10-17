package com.haina.shop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haina.shop.bean.Cart;
import com.haina.shop.dao.CartDao;
import com.haina.shop.daoImpl.CartDaoImpl;
public class CartServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String action = request.getParameter("action");
				CartDao cd = new CartDaoImpl();
				if("addCart".equals(action)) {
					//加入购物车功能
					String goodsname = request.getParameter("goodsName");
					String price = request.getParameter("price");
					String color = request.getParameter("color");
					String size = request.getParameter("size");
					String count = request.getParameter("count");
					String goodsId = request.getParameter("goodsId");
					String userId = request.getParameter("userId");
					Cart cart = new Cart(0, goodsname, color, size, Double.parseDouble(price),Integer.parseInt(count),Integer.parseInt(goodsId) , Integer.parseInt(userId));
					//至此加入商品至购物车功能完结，并显示该用户全部购物车中的商品
					cd.addCart(cart);
					//跳转至购物车主页面
					List<Cart> cartList = cd.queryCartByUserId(Integer.parseInt(userId));
					request.getSession().setAttribute("cartList", cartList);
					response.sendRedirect("meimeng/cart.jsp");
					
				}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

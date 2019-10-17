package com.haina.shop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haina.shop.bean.DetailGoodsInfo;
import com.haina.shop.bean.goods;
import com.haina.shop.dao.ProductDao;
import com.haina.shop.daoImpl.ProductDaoImpl;

public class ProductServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String action = request.getParameter("action");
			ProductDao pd = new ProductDaoImpl();
			if("search".equals(action)) {
				//搜索功能
				//获取用户在页面输入的搜索关键词
				String keywords = request.getParameter("keywords");
				keywords = new String(keywords.getBytes("iso-8859-1"),"utf-8");
				
						
				//默认分页功能的当前初始页为1
				int currentPage = 1;
				//接受请求中所携带的当前页值
				String current = request.getParameter("currentPage");
				if(current!=null) {
					//将默认的初始页修改为指定值
					currentPage = Integer.parseInt(current);
				}
					int totalDataCount = pd.getTotalDataCountByName(keywords);
					int pageSize = 15;
					int totalPageCount = 0;
					if(totalDataCount%pageSize == 0) {
							totalPageCount = totalDataCount/pageSize;
					}else {
						totalPageCount = totalDataCount/pageSize+1;
					}
					if(currentPage<1) {
						currentPage = 1;
					}
					if(currentPage>totalPageCount) {
						currentPage = totalPageCount;
					}
					List<goods> goodsList = pd.queryProductsByName(keywords,(currentPage-1)*pageSize,pageSize);
					//将查询到待展示的数据以及分页用到的数据传给页面
					request.getSession().setAttribute("currentPage",currentPage);
					request.getSession().setAttribute("totalpageCount",totalPageCount);
					request.getSession().setAttribute("goodsList",goodsList);
					request.getSession().setAttribute("keywords", keywords);
					response.sendRedirect("meimeng/product_list.jsp");
				
				
			}else if("showDetail".equals(action)){
				//商品详情信息展示功能
				String goodsId = request.getParameter("goodsId");
				DetailGoodsInfo dgi = pd.getDetailGoodsInfo(Integer.parseInt(goodsId));
				request.getSession().setAttribute("detailInfo", dgi);
				response.sendRedirect("meimeng/product.jsp");
			}else {
				response.sendRedirect("index.jsp");
			}
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}

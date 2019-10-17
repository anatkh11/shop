package com.haina.shop.dao;

import java.util.List;

import com.haina.shop.bean.Cart;
import com.haina.shop.bean.goods;

public interface CartDao {
	//向购物车表中添加数据
	public void addCart(Cart cart);
   //删除购物车中的数据	
	public void deleteCart(int id);
	//查询某用户购物车中的全部数据
	public List<Cart> queryCartByUserId(int userId);
}

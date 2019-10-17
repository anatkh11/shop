package com.haina.shop.dao;

import java.util.List;

import com.haina.shop.bean.Cart;
import com.haina.shop.bean.goods;

public interface CartDao {
	//���ﳵ�����������
	public void addCart(Cart cart);
   //ɾ�����ﳵ�е�����	
	public void deleteCart(int id);
	//��ѯĳ�û����ﳵ�е�ȫ������
	public List<Cart> queryCartByUserId(int userId);
}

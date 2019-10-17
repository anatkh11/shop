package com.haina.shop.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.haina.shop.bean.Cart;
import com.haina.shop.bean.goods;
import com.haina.shop.dao.CartDao;
import com.haina.shop.util.DBUtil;

public class CartDaoImpl implements CartDao{
		private Connection conn = null;
		private PreparedStatement pst = null;
		private ResultSet rs = null;
	public void addCart(Cart cart) {
		String sql = "insert into tb_cart values(?,?,?,?,?,?,?,?)";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, cart.getId());
			pst.setString(2, cart.getGoodsname());
			pst.setString(3, cart.getColor());
			pst.setString(4, cart.getSize());
			pst.setDouble(5, cart.getPrice());
			pst.setInt(6, cart.getCount());
			pst.setInt(7, cart.getGoodsId());
			pst.setInt(8, cart.getUserId());
			pst.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeConnection(conn, pst, rs);
		}
	}

	public void deleteCart(int id) {
		
	}


	public List<Cart> queryCartByUserId(int userId) {
		List<Cart> cartList = new ArrayList<Cart>();
		String sql = "select * from tb_cart where userId=?";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, userId);
			rs = pst.executeQuery();
			while(rs.next()) {
				Cart cart = new Cart(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7), rs.getInt(8));
				cartList.add(cart);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeConnection(conn, pst, rs);
		}
		return cartList;
			
	}

}

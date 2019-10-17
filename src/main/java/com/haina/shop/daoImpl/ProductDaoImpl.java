package com.haina.shop.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.haina.shop.bean.DetailGoodsInfo;
import com.haina.shop.bean.goods;
import com.haina.shop.dao.ProductDao;
import com.haina.shop.util.DBUtil;

public class ProductDaoImpl implements ProductDao{
	private Connection conn = null;
	private PreparedStatement pst = null;
	private ResultSet rs = null;
	public List<goods> queryProductsByName(String goodsname,int startIndex,int pageSize) {
		String sql = "select * from tb_goods where name like ? limit ?,?";
		List<goods> goodsList = new ArrayList<goods>();
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, "%"+goodsname+"%");
			pst.setInt(2, startIndex);
			pst.setInt(3, pageSize);
			rs = pst.executeQuery();
			while(rs.next()) {
				goods Goods = new goods(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
				goodsList.add(Goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(conn, pst, rs);
		}
		return goodsList;
	}

	public goods queryGoodsById(int goodsId) {
		return null;
	}

	public int getTotalDataCountByName(String goodsName) {
		int totalDataCount = 0;
		String sql = "select count(*) from tb_goods where name like ?";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, "%"+goodsName+"%");
			rs = pst.executeQuery();
			if(rs.next()) {
					totalDataCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeConnection(conn, pst, rs);
		}
		return totalDataCount;
		
	}

	public DetailGoodsInfo getDetailGoodsInfo(int goodsId) {
		DetailGoodsInfo detailInfo = null;
		String sql = "select * from tb_goods left join tb_shops on tb_goods.shopid = tb_shops.id where tb_goods.id=?";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, goodsId);
			rs = pst.executeQuery();
			if(rs.next()) {
				detailInfo = new DetailGoodsInfo(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeConnection(conn, pst, rs);
		}
		return detailInfo;
	}
	
			
}

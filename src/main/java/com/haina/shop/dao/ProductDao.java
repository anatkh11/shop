package com.haina.shop.dao;

import java.util.List;

import com.haina.shop.bean.DetailGoodsInfo;
import com.haina.shop.bean.goods;

public interface ProductDao {
		//定义模糊查询需要使用的方法
		public List<goods> queryProductsByName(String goodsname,int startIndex,int pageSize);
		//定义商品详情页信息展示需要使用的方法
		public goods queryGoodsById(int goodsId);
		//定义获取要显示的商品的总数的方法
		public int getTotalDataCountByName(String goodsName);
		//利用左连接获取商品详细信息及店铺信息方法
		public DetailGoodsInfo getDetailGoodsInfo(int goodsId);
}

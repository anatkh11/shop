package com.haina.shop.dao;

import java.util.List;

import com.haina.shop.bean.DetailGoodsInfo;
import com.haina.shop.bean.goods;

public interface ProductDao {
		//����ģ����ѯ��Ҫʹ�õķ���
		public List<goods> queryProductsByName(String goodsname,int startIndex,int pageSize);
		//������Ʒ����ҳ��Ϣչʾ��Ҫʹ�õķ���
		public goods queryGoodsById(int goodsId);
		//�����ȡҪ��ʾ����Ʒ�������ķ���
		public int getTotalDataCountByName(String goodsName);
		//���������ӻ�ȡ��Ʒ��ϸ��Ϣ��������Ϣ����
		public DetailGoodsInfo getDetailGoodsInfo(int goodsId);
}

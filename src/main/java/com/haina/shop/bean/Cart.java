package com.haina.shop.bean;

import java.io.Serializable;

public class Cart implements Serializable{
		
		private int id;
		private String goodsname;
		private String color;
		private String size;
		private Double price;
		private int count;
		private int goodsId;
		private int userId;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getGoodsname() {
			return goodsname;
		}
		public void setGoodsname(String goodsname) {
			this.goodsname = goodsname;
		}
		public String getColor() {
			return color;
		}
		public void setColor(String color) {
			this.color = color;
		}
		public String getSize() {
			return size;
		}
		public void setSize(String size) {
			this.size = size;
		}
		public Double getPrice() {
			return price;
		}
		public void setPrice(Double price) {
			this.price = price;
		}
		public int getCount() {
			return count;
		}
		public void setCount(int count) {
			this.count = count;
		}
		public int getGoodsId() {
			return goodsId;
		}
		public void setGoodsId(int goodsId) {
			this.goodsId = goodsId;
		}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		@Override
		public String toString() {
			return "cart [id=" + id + ", goodsname=" + goodsname + ", color=" + color + ", size=" + size + ", price="
					+ price + ", count=" + count + ", goodsId=" + goodsId + ", userId=" + userId + "]";
		}
		public Cart(int id, String goodsname, String color, String size, Double price, int count, int goodsId,
				int userId) {
			super();
			this.id = id;
			this.goodsname = goodsname;
			this.color = color;
			this.size = size;
			this.price = price;
			this.count = count;
			this.goodsId = goodsId;
			this.userId = userId;
		}
		public Cart() {
			super();
		}
		
}

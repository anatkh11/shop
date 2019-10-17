package com.haina.shop.bean;

import java.io.Serializable;

public class DetailGoodsInfo implements Serializable{
	
		private int id;
		private String name;
		private double price;
		private String startTime;
		private String brand;
		private String description;
		private int shopId;
		private String shopName;
		private String type;
		private String ceo;
		private String email;
		private String tel;
		private String shortAddress;
		private String detailAddress;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(double price) {
			this.price = price;
		}
		public String getStartTime() {
			return startTime;
		}
		public void setStartTime(String startTime) {
			this.startTime = startTime;
		}
		public String getBrand() {
			return brand;
		}
		public void setBrand(String brand) {
			this.brand = brand;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public int getShopId() {
			return shopId;
		}
		public void setShopId(int shopId) {
			this.shopId = shopId;
		}
		public String getShopName() {
			return shopName;
		}
		public void setShopName(String shopName) {
			this.shopName = shopName;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getCeo() {
			return ceo;
		}
		public void setCeo(String ceo) {
			this.ceo = ceo;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		public String getShortAddress() {
			return shortAddress;
		}
		public void setShortAddress(String shortAddress) {
			this.shortAddress = shortAddress;
		}
		public String getDetailAddress() {
			return detailAddress;
		}
		public void setDetailAddress(String detailAddress) {
			this.detailAddress = detailAddress;
		}
		public DetailGoodsInfo(int id, String name, double price, String startTime, String brand, String description,
				int shopId, String shopName, String type, String ceo, String email, String tel, String shortAddress,
				String detailAddress) {
			super();
			this.id = id;
			this.name = name;
			this.price = price;
			this.startTime = startTime;
			this.brand = brand;
			this.description = description;
			this.shopId = shopId;
			this.shopName = shopName;
			this.type = type;
			this.ceo = ceo;
			this.email = email;
			this.tel = tel;
			this.shortAddress = shortAddress;
			this.detailAddress = detailAddress;
		}
		public DetailGoodsInfo() {
			super();
		}
		
}

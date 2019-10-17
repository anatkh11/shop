package com.haina.shop.bean;

import java.io.Serializable;

public class goods implements Serializable{
	
		private int id;
		private String name;
		private Double price;
		private String startTime;
		private String brand;
		private String description;
		private int shopId;
		
		public goods(int id, String name, Double price, String startTime, String brand, String description, int shopId) {
			super();
			this.id = id;
			this.name = name;
			this.price = price;
			this.startTime = startTime;
			this.brand = brand;
			this.description = description;
			this.shopId = shopId;
		}
		@Override
		public String toString() {
			return "goods [id=" + id + ", name=" + name + ", price=" + price + ", startTime=" + startTime + ", brand="
					+ brand + ", description=" + description + ", shopId=" + shopId + "]";
		}
		public goods() {
			super();
		}
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
		public Double getPrice() {
			return price;
		}
		public void setPrice(Double price) {
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
		
}

package com.haina.shop.bean;

import java.io.Serializable;

public class shops implements Serializable{
	
	private int id;
	private String shopName;
	private String type;
	private String ceo;
	private String email;
	private String tel;
	private String shortAddress;
	private String detailAddress;
	public shops() {
		super();
	}
	public shops(int id, String shopName, String type, String ceo, String email, String tel, String shortAddress,
			String detailAddress) {
		super();
		this.id = id;
		this.shopName = shopName;
		this.type = type;
		this.ceo = ceo;
		this.email = email;
		this.tel = tel;
		this.shortAddress = shortAddress;
		this.detailAddress = detailAddress;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	@Override
	public String toString() {
		return "shops [id=" + id + ", shopName=" + shopName + ", type=" + type + ", ceo=" + ceo + ", email=" + email
				+ ", tel=" + tel + ", shortAddress=" + shortAddress + ", detailAddress=" + detailAddress + "]";
	}
	
}

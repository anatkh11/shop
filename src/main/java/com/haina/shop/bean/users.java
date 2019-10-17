package com.haina.shop.bean;

import java.io.Serializable;

public class users implements Serializable{
	
		private int id;
		private String username;
		private String realname;
		private String tel;
		private String email;
		private String password;
		public users(int id, String username, String realname, String tel, String email, String password) {
			super();
			this.id = id;
			this.username = username;
			this.realname = realname;
			this.tel = tel;
			this.email = email;
			this.password = password;
		}
		public users() {
			super();
		}
		@Override
		public String toString() {
			return "users [id=" + id + ", users=" + username + ", realname=" + realname + ", tel=" + tel + ", email="
					+ email + ", password=" + password + "]";
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getRealname() {
			return realname;
		}
		public void setRealname(String realname) {
			this.realname = realname;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		
}

package com.src.model;

public class RegisterModel {
	
	private String username;
	private String email;
	private String password;
	private String ccpassword;
	private String address;
	private String phone;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return username+" "+email;
	}

	public String getCcpassword() {
		return ccpassword;
	}

	public void setCcpassword(String ccpassword) {
		this.ccpassword = ccpassword;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}

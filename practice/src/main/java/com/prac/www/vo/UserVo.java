package com.prac.www.vo;

public class UserVo {

	private int uidx;
	private String uname;
	private String email;
	private String phone;
	private String pass;
	
	public int getUidx() {
		return uidx;
	}
	public void setUidx(int uidx) {
		this.uidx = uidx;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "UserVo [uidx="+uidx+", uname="+uname+",email="+email+", phone="+phone+", pass="+pass+"]";
	}
}

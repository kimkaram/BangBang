package com.kh.bangbang.member.model.vo;

import java.sql.Date;

public class Member {
	 private static final long serialVersionUID = 2L;
	
	public Member() {}
	
	private String id;
	private String pwd;
	private String type;
	private Date date;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Member(String id, String pwd, String type, Date date) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.type = type;
		this.date = date;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", type=" + type + ", date=" + date + "]";
	}
	
	
	
	
	
	
}

package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="seller_table")
public class Seller 
{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
	@Column(name="seller_name",nullable=false,length = 50)
	private String sname;
	@Column(name="company_name",nullable=false,length = 50)
	private String cname;
	@Column(name="seller_email",nullable=false,unique = true,length = 30)
    private String email;
	@Column(name="seller_contactno",nullable=false,unique = true)
    private String contactno;
	@Column(name="seller_id",nullable=false,unique=true)
	private String sid;
	@Column(name="company_id",nullable=false,unique=true)
	private String cid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	@Override
	public String toString() {
		return "Seller [id=" + id + ", sname=" + sname + ", cname=" + cname + ", email=" + email + ", contactno="
				+ contactno + ", sid=" + sid + ", cid=" + cid + "]";
	}
}

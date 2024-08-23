package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;

public interface AdminService 
{
	public List<Customer> viewallcustomers();
	public Customer viewcustomerbyid(int cid);
	public Admin checkadminlogin(String auname,String apwd);
	public int updatestatus(boolean active,int eid) ;
	public String deletebook(int bid);
	public long bookcount(); //count(*)
	public long customercount(); //count 
	public long sellercount(); //count 
	 //public String updatebook(Book book);
	public List<Seller> viewallsellers();
}

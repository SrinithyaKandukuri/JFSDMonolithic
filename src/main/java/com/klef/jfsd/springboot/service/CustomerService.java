package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Customer;

public interface CustomerService
{
	
	public String addcutomer(Customer c);
	public String updatecustomer(Customer c);
	public Customer viewcustomerbyid(int cid);
	
	public Customer checkcustomerlogin(String email,String pwd);
	
	public Customer getCustomerById(Customer c);

}

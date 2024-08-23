package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Seller;

public interface SellerService 
{
	public String addseller(Seller s);
	public Seller viewsellerbyid(String sid);
}

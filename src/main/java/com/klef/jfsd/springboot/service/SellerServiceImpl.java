package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;

@Service
public class SellerServiceImpl implements SellerService
{

	@Autowired
	private SellerRepository sellerRepository;
	
	
	@Override
	public String addseller(Seller s) 
	{
		sellerRepository.save(s);
		return "Seller Added successfully";
	}

	@Override
	public Seller viewsellerbyid(String sid) {
		// TODO Auto-generated method stub
		return null;
	}
	
}

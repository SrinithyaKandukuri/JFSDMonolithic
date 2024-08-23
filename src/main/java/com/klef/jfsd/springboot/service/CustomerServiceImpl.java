package com.klef.jfsd.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements  CustomerService
{
	@Autowired
	private CustomerRepository customerRepository;
	
	
	@Override
	public String addcutomer(Customer c) {
		customerRepository.save(c);
		return "Customer Added successfully";
	}

	@Override
	public String updatecustomer(Customer c) {
		Customer customer = customerRepository.findById(c.getId()).get();
		
		customer.setName(c.getName());
		customer.setDateofbirth(c.getDateofbirth());
		customer.setEmail(c.getEmail());
		customer.setPassword(c.getPassword());
		customer.setAddress(c.getAddress());
		customer.setContactno(c.getContactno()); 
		
		customerRepository.save(customer);
		
		return "Customer Updated Successfully";
	}

	@Override
	public Customer viewcustomerbyid(int cid) {
Optional<Customer> obj = customerRepository.findById(cid);    
	    
	    if(obj.isPresent())
	    {
	      Customer c = obj.get();
	      return c;
	    }
	    else
	    {
	      return null;
	    }
	}

	@Override
	public Customer checkcustomerlogin(String email, String pwd) {
		return customerRepository.checkcustomerlogin(email, pwd);
	}

	@Override
	public Customer getCustomerById(Customer c) {
		 Optional<Customer> customerOptional = customerRepository.findById(c.getId());

		    if (customerOptional.isPresent()) {
		        return customerOptional.get();
		    } else {
		        return null; // or handle the "not found" case accordingly
		    }
	}

}

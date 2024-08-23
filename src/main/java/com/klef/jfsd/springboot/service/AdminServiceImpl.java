package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Book;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.BookRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;

@Service
public class AdminServiceImpl  implements  AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private BookRepository bookRepository;
	
	@Autowired
	 private SellerRepository sellerRepository;

	@Override
	public List<Customer> viewallcustomers() 
	{
		return customerRepository.findAll();
	}

	@Override
	public Customer viewcustomerbyid(int cid) 
	{
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
	public Admin checkadminlogin(String auname, String apwd) {
		//return null;
		return adminRepository.checkadminlogin(auname, apwd);
	}

	@Override
	public int updatestatus(boolean active, int eid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public long sellercount() {
		return sellerRepository.count();
	}

	@Override
	public long customercount() {
		return customerRepository.count();
	}

	@Override
	public String deletebook(int bid) {
Optional<Book> obj = bookRepository.findById(bid);
	    
	    String msg = null;
	    
	    if(obj.isPresent())
	    {
	      Book emp = obj.get();
	      bookRepository.delete(emp);
	      msg = "Book Deleted Successfully";
	    }
	    else
	    {
	      msg = "Book Not Found";
	    }
	    
	    return msg;
	}

	@Override
	public long bookcount() {
		return bookRepository.count();
	}

	/*@Override
	 public Seller viewsellerbyid(int sid) {
	  Optional<Seller> obj = sellerRepository.findById(sid);
	     
	     if(obj.isPresent())
	     {
	       Seller s = obj.get();
	       return s;
	     }
	     else
	     {
	       return null;
	     }
	 }*/

	@Override
	 public List<Seller> viewallsellers() 
	 {
	  return sellerRepository.findAll();
	 }

	/*@Override
	public String updatebook(Book book) {
Book b = bookRepository.findById(book.getId()).get();
		
		//b.setBookname(book.getBookname());
		b.setCategory(book.getCategory());
		b.setCost(book.getCost());
		b.setQuantity(book.getQuantity());
		b.setDescription(book.getDescription());
		//b.setProductlink(book.getProductlink());
		
		bookRepository.save(b);
		
		return "Book Updated Successfully";
	}*/
	

}

package com.klef.jfsd.springboot.controller;


import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Book;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BookService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.EmailService;
import com.klef.jfsd.springboot.service.SellerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private SellerService sellerService;
	
	@Autowired
	 private EmailService emailService;
	
	@GetMapping("/")
	public String main()
	{
		return "home";
	}
	
	@GetMapping("adminlogin") // URI & method name can be different
	 public ModelAndView adminlogin()
	 {
	  ModelAndView mv=new ModelAndView();
	  mv.setViewName("adminlogin");
	  return mv;
	 }
	
	@GetMapping("adminhome")
	 public ModelAndView adminhome()
	 {
		long bcount=adminService.bookcount();
	    long ccount=adminService.customercount();
	    long scount=adminService.sellercount();
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminhome");
	     mv.addObject("bcount",bcount);
	     mv.addObject("ccount",ccount);
	     mv.addObject("scount", scount);
	     return mv;
	 }
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers() {
		List<Customer> customerlist = adminService.viewallcustomers();

		ModelAndView mv = new ModelAndView("viewallcustomers");
		mv.addObject("customerdata", customerlist);

		return mv;
	}
	
	@GetMapping("viewallsellers")
	public ModelAndView viewallsellers() {
		List<Seller> sellerlist = adminService.viewallsellers();

		ModelAndView mv = new ModelAndView("viewallsellers");
		mv.addObject("sellerdata", sellerlist);

		return mv;
	}
	
	@GetMapping("view")
	public ModelAndView viewempdemo(@RequestParam("id") int cid) {
		Customer c = adminService.viewcustomerbyid(cid);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewcustomerbyid");
		mv.addObject("cus", c);
		return mv;
	}
	
	
	
	@PostMapping("checkadminlogin")
	   public ModelAndView checkadminlogin(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView(); 
	     
	     
	     String uname = request.getParameter("auname");
	      String pwd = request.getParameter("pwd");
	      
	     Admin admin = adminService.checkadminlogin(uname, pwd);
	     
	     if(admin!=null)
	     {
	       mv.setViewName("adminhome");
	       //long ecount=adminService.empcount();
	       long ccount=adminService.customercount();
	       
	       //mv.addObject("ecount",ecount);
	       mv.addObject("ccount",ccount);
	     }
	     else
	     {
	       mv.setViewName("adminlogin");
	       mv.addObject("message", "Login Failed");
	     }
	     
	     return mv;
	   }
	
	@GetMapping("home")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("customerhome")
	 public ModelAndView customerhome(HttpServletRequest request )
	 {
	  HttpSession session = request.getSession();
	  
	  int cid = (int)session.getAttribute("cid");//cid is a session variable
	  String cname = (String)session.getAttribute("cname");//cname is a session variable;
	  
	  ModelAndView mv = new ModelAndView();
	  mv.addObject("cid", cid);
	  mv.addObject("cname", cname);
	  mv.setViewName("customerhome");
	  
	  
	  
	  return mv;
	 }
	
	
	
	@GetMapping("login")
	public ModelAndView customerlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		
		Customer c = customerService.checkcustomerlogin(email, pwd);
		if(c!=null)
		{
			// session
			HttpSession session = request.getSession();
			session.setAttribute("cid", c.getId());// cid is a session variable
			session.setAttribute("cname", c.getName()); // cname is a session variable
           // session
			mv.setViewName("customerhome"); //home is a jsp file name it must be created first front page
			mv.addObject("message", "Login Successfull");
		}
		else
		{
			mv.setViewName("displaymsg");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("categories")
	public ModelAndView categories()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("categories");
		return mv;
	}
	@GetMapping("action")
	public ModelAndView action()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("action");
		return mv;
	}
	
	@GetMapping("seller")
	public ModelAndView seller()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("seller");
		return mv;
	}
	
	@GetMapping("contact")
	public ModelAndView contact()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	
	@GetMapping("registration")
	public ModelAndView customerregistration()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("registration");
		return mv;
	}
	
	@PostMapping("insertcustomer")
	public ModelAndView insertaction(HttpServletRequest request)
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		try {
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dateofbirth");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pass");
			String address = request.getParameter("address");
			String contact = request.getParameter("contact");

			Customer c = new Customer();
			c.setName(name);
			c.setGender(gender);
			c.setDateofbirth(dob);
			c.setEmail(email);
			c.setPassword(pwd);
			c.setAddress(address);
			c.setContactno(contact);

			msg = customerService.addcutomer(c);
			emailService.sendEmail(c.getEmail(),"Rainbow Books","Hey,Baddam.....successfully created your account in Rainbow books,Thanks for creating account.     If you have any queries pls contact 9381824042");
			
			
			mv.setViewName("login");
			mv.addObject("message", msg);

		} catch (Exception e) {
			msg = e.getMessage();
			mv.setViewName("displaymsg");
			mv.addObject("message", msg);
		}

		return mv;
	}
	
	@PostMapping("insertseller")
	public ModelAndView insertselleraction(HttpServletRequest request)
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		try {
			String name = request.getParameter("sellername");
			String cname = request.getParameter("companyname");
			String email = request.getParameter("email");
			String contact = request.getParameter("sellercontact");
			String sid=request.getParameter("sellerid");
			String cid=request.getParameter("companyid");
			

			Seller s = new Seller();
			s.setSname(name);
			s.setCname(cname);
			s.setEmail(email);
			s.setContactno(contact);
			s.setSid(sid);
			s.setCid(cid);

			msg = sellerService.addseller(s);

			mv.setViewName("seller");
			//mv.addObject("message", msg);

		} catch (Exception e) {
			msg = e.getMessage();
			mv.setViewName("displaysellsucess");
			mv.addObject("message", msg);
		}

		return mv;
	}
	
	
	@GetMapping("logout")
	public ModelAndView customerlogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("message", "Logout Successfully");
		return mv;
	}
	
	@GetMapping("payment")
	public ModelAndView payment()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("payment");
		//mv.addObject("message", "Logout Successfully");
		return mv;
	}
	
	@GetMapping("paymentsuccess")
	public ModelAndView paymentsuccess()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("paymentsuccess");
		//mv.addObject("message", "Logout Successfully");
		return mv;
	}
	
   @GetMapping("addbook")
   public ModelAndView demo()
   {
	   ModelAndView mv = new ModelAndView("addbook");
	   return mv;
   }
   @PostMapping("insertbook")
   public ModelAndView insertbookdemo(HttpServletRequest request,@RequestParam("bookimage") MultipartFile file) throws IOException, SerialException, SQLException
   {
	   String msg = null;
	   
	   ModelAndView mv = new ModelAndView();
	   
	   try
	   {
	   String category = request.getParameter("category");
	   String name = request.getParameter("name");
	   String description = request.getParameter("description");
	   Double cost = Double.valueOf(request.getParameter("cost"));
	   int quantity =Integer.valueOf(request.getParameter("quantity"));
	   String productlink = request.getParameter("productlink");
	   
		  byte[] bytes = file.getBytes();
		  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		  
		  Book p = new Book();
		  p.setCategory(category);
		  p.setBookname(name);
		  p.setDescription(description);
		  p.setCost(cost);
		  p.setQuantity(quantity);
		  p.setProductlink(productlink);
		  p.setBookimage(blob);
		  
		  msg=bookService.AddBook(p);
		  System.out.println(msg);
		  mv.setViewName("productmsg");
		  mv.addObject("message",msg);
	   }	  
	   catch(Exception e)
	   {
		   msg = e.getMessage();
		   System.out.println(msg.toString());
		   mv.setViewName("producterror");
		   mv.addObject("message",msg);
	   }
	   return mv;
   }
   @GetMapping("viewallbooks")
   public ModelAndView viewallprodsdemo()
   {
	   List<Book> productlist = bookService.ViewAllBooks();
	   
	   ModelAndView mv = new ModelAndView("viewallbooks");
	   
	   mv.addObject("productlist", productlist);
	   
	   return mv;
   }
   
@GetMapping("displayprodimage")
public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
{
  Book product =  bookService.ViewBookByID(id);
  byte [] imageBytes = null;
  imageBytes = product.getBookimage().getBytes(1,(int) product.getBookimage().length());

  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
}

   @GetMapping("viewbookbyid")
public ModelAndView  viewproductbyiddemo()
{
	   List<Book> productlist=bookService.ViewAllBooks();
	   ModelAndView mv=new ModelAndView("viewbookbyid");
	   mv.addObject("productlist",productlist);
	   return mv;
}
   
   @PostMapping("displaybook")
   public ModelAndView displayproductdemo(HttpServletRequest request)
   {
	   int pid=Integer.parseInt(request.getParameter("pid"));
	   Book product=bookService.ViewBookByID(pid);
	   ModelAndView mv=new ModelAndView("displaybook");
	   mv.addObject("product",product);
	   return mv;
   }
   
   @GetMapping("viewbooksbycategory")
   public ModelAndView  viewbooksbycategorydemo()
   {
        ModelAndView mv=new ModelAndView("viewbooksbycategory");
        return mv;
   }
   
   @PostMapping("displaybooksbycategory")
   public ModelAndView  viewproductsbycategorydemo(HttpServletRequest request)
   {
      String category = request.getParameter("category");
      
        List<Book> productlist=bookService.viewallbooksbycategory(category);
        ModelAndView mv=new ModelAndView("displaybooksbycategory");
        mv.addObject("productlist",productlist);
        return mv;
   }
   @GetMapping("/updatebookdetails/{id}")
   public ModelAndView updatebook(@PathVariable("id") int bookId) {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("updatebookdetails");

       // Fetch the book details using the bookId
       Book book = bookService.ViewBookByID(bookId);

       mv.addObject("book", book);

       return mv;
   }

   @PostMapping("/updatebookdetails/update/{id}")
   public ModelAndView updateaction(@PathVariable("id") int bookId, HttpServletRequest request) {
       ModelAndView mv = new ModelAndView();
       String msg = null;

       try {
           String bname = request.getParameter("bookname");
           double cost = Double.parseDouble(request.getParameter("cost"));
           String qty = request.getParameter("quantity");
           int q = Integer.parseInt(qty);
           //byte[] bytes = file.getBytes();
 		  //Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

           Book book = bookService.ViewBookByID(bookId);
           book.setId(bookId);
           book.setBookname(bname);
           book.setCost(cost);
           book.setQuantity(q);
           

           msg = bookService.updateBookByID(book);

           mv.setViewName("redirect:/viewallbooks");
           mv.addObject("message", msg);


       } catch (NumberFormatException e) {
           msg = "Invalid input. Please enter valid numbers.";
           mv.setViewName("bookupdateerror");
           mv.addObject("message", msg);
       } catch (Exception e) {
           msg = e.getMessage();
           mv.setViewName("bookupdateerror");
           mv.addObject("message", msg);
       }

       return mv;
   }
   
   @GetMapping("delete/{id}")
  public String deleteaction(@PathVariable("id") int bid,RedirectAttributes redirectAttributes) {
    adminService.deletebook(bid);
    redirectAttributes.addFlashAttribute("message", "Book deleted successfully!!!");
    return "redirect:/viewallbooks";
  }
   
   @GetMapping("/profile")
   public ModelAndView profile(HttpServletRequest request) {
	   HttpSession session = request.getSession();
		  
		  int cid = (int)session.getAttribute("cid");//cid is a session variable
		  String cname = (String)session.getAttribute("cname");//cname is a session variable;
		  
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("profile");
		  
		  mv.addObject("cid", cid);
		  mv.addObject("cname", cname);
		  
		  return mv;
   }


   


}

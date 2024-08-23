package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Book;
import com.klef.jfsd.springboot.repository.BookRepository;

@Service
public class BookserviceImpl implements BookService
{
	@Autowired
	private BookRepository bookRepository;

	@Override
	public String AddBook(Book book) {
		bookRepository.save(book);
		return "Book Added Successfully";
	}

	@Override
	public List<Book> ViewAllBooks() {
		return (List<Book>) bookRepository.findAll();
	}

	@Override
	public Book ViewBookByID(int bookid) {
		return bookRepository.findById(bookid).get();
	}

	@Override
	public void DeleteBookByID(int bookid) {
		bookRepository.deleteById(bookid);
	}

	@Override
	public List<Book> viewallbooksbycategory(String category) {
		return bookRepository.viewallbooksbycategory(category);
	}

	@Override
	  public String updateBookByID(Book book) {
	      Optional<Book> optionalBook = bookRepository.findById(book.getId());
	      if (optionalBook.isPresent()) {
	          Book b = optionalBook.get();
	          b.setBookname(book.getBookname());
	          b.setCost(book.getCost());
	          b.setQuantity(book.getQuantity());
	          bookRepository.save(b);
	          return "Book Updated Successfully!!!";
	      } else {
	          return "Book not found";
	      }
	  }  
	

	
}

package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Book;

public interface BookService {
	
	 public String AddBook(Book book);
	   public List<Book> ViewAllBooks();
	   public Book ViewBookByID(int bookid);
	   public void DeleteBookByID(int bookid);
	   public List<Book> viewallbooksbycategory(String category);
	   public String updateBookByID(Book book);

}

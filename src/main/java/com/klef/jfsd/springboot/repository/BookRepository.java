package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Integer>
{
	@Query("from Book b where b.category=?1")
	public List<Book>  viewallbooksbycategory(String category);
}

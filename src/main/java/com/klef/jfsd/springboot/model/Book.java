package com.klef.jfsd.springboot.model;

import java.security.SecureRandom;
import java.sql.Blob;
import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "book_table")
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(nullable = false, length = 100)
	private String category;
	@Column(nullable = false, length = 100)
	private String bookname;
	@Column(nullable = false, length = 1000)
	private String description;
	@Column(nullable = false)
	private int quantity;
	@Column(nullable = false)
	private double cost;
	@Column(length = 200)
	private String productlink;
	private Blob bookimage; // blob - binary large object

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public String getProductlink() {
		return productlink;
	}

	public void setProductlink(String productlink) {
		this.productlink = productlink;
	}

	public Blob getBookimage() {
		return bookimage;
	}

	public void setBookimage(Blob bookimage) {
		this.bookimage = bookimage;
	}

	/*
	 * private String bookid;
	 * 
	 * private static final String CHARACTERS =
	 * "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"; private static final int ID_LENGTH =
	 * 10; private static final Random random = new SecureRandom();
	 * 
	 * private static String generateUniqueBookId() { StringBuilder idBuilder = new
	 * StringBuilder(ID_LENGTH); for (int i = 0; i < ID_LENGTH; i++) { int
	 * randomIndex = random.nextInt(CHARACTERS.length()); char randomChar =
	 * CHARACTERS.charAt(randomIndex); idBuilder.append(randomChar); } return
	 * idBuilder.toString(); }
	 * 
	 * public String getBookid() { if (bookid == null) { bookid =
	 * generateUniqueBookId(); } return bookid; }
	 * 
	 * public void setBookid(String bookid) { this.bookid = bookid; }
	 */
}

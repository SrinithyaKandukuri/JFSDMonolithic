package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Seller;

@Repository
public interface SellerRepository extends JpaRepository<Seller, Integer>
{
	@Query("from Seller s where s.sid=?1")
	public List<Seller>viewallsellersbyid(String sid);
}

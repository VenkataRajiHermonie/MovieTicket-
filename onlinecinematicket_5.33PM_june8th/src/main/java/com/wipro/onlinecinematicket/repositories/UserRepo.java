package com.wipro.onlinecinematicket.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.wipro.onlinecinematicket.bean.User;

public interface UserRepo extends JpaRepository<User, Integer> {
	
	
	@Query("select n from User n where n.email=:email and n.password=:password")
	User findByUseremailAndPassword(String email,String password);

	User findByEmail(String email);
	
}

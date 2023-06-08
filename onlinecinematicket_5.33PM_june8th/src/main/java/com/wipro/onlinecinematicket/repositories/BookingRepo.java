package com.wipro.onlinecinematicket.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.wipro.onlinecinematicket.bean.Booking;

public interface BookingRepo extends JpaRepository<Booking, Integer> {
	
	
	@Query("select n from Booking n where n.userid=:userid")
	public List<Booking> getBookings(int userid);
	
	@Query("select n from Booking n where n.email=:email")
	public List<Booking>allBookings(String email);
}

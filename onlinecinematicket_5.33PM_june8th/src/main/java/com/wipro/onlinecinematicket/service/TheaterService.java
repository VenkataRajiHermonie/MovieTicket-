package com.wipro.onlinecinematicket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.onlinecinematicket.bean.Movie;
import com.wipro.onlinecinematicket.bean.Theater;
import com.wipro.onlinecinematicket.repositories.TheaterRepo;

@Service
public class TheaterService {
	@Autowired
	private TheaterRepo theaterRepo;
	
	public List<Theater> getByLocation(String location)
	{
		return theaterRepo.findByLocation(location);
	}
	
	public Theater geTheater(int id)
	{
		return theaterRepo.findById(id).get();
	}
}

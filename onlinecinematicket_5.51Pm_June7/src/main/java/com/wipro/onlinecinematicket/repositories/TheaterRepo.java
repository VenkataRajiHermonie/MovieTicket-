package com.wipro.onlinecinematicket.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.onlinecinematicket.bean.Movie;
import com.wipro.onlinecinematicket.bean.Theater;

public interface TheaterRepo extends JpaRepository<Theater, Integer>{

	List<Theater> findByLocation(String location);

}

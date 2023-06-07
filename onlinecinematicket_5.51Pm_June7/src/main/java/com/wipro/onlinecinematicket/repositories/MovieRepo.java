package com.wipro.onlinecinematicket.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.onlinecinematicket.bean.Movie;

public interface MovieRepo extends JpaRepository<Movie, Integer> {
	List<Movie> findByTheaterLocation(String location);
}

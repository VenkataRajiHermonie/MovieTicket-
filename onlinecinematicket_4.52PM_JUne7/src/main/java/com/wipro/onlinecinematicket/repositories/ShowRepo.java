package com.wipro.onlinecinematicket.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.wipro.onlinecinematicket.bean.Show;

public interface ShowRepo extends JpaRepository<Show, Integer>{
	//List<Show>findByMovieIdAndTheaterId(int movieId,int theaterId);
	@Query("select m from Show m where m.movie.id=:movieId and m.theater.id=:theaterId")
	List<Show> findByMovieAndTheater(int movieId, int theaterId);
	

	@Query("select m from Show m where m.movie.id=:movieId and m.theater.id=:theaterId")
	Show findByMovieIdAndTheaterId(int movieId, int theaterId);
}

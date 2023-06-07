package com.wipro.onlinecinematicket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.onlinecinematicket.bean.Movie;
import com.wipro.onlinecinematicket.bean.Show;
import com.wipro.onlinecinematicket.repositories.MovieRepo;
import com.wipro.onlinecinematicket.repositories.ShowRepo;

@Service
public class MovieService {
	@Autowired
	private MovieRepo movieRepo;
	@Autowired
	private ShowRepo showRepo;
	
	public List<Movie> getallMovies()
	{
		return movieRepo.findAll();
	}
	
	public List<Movie> getByLocation(String location)
	{
		return movieRepo.findByTheaterLocation(location);
	}
	
	public List<Show> getShowByMidAndTid(int movieid,int theaterid)
	{
		return showRepo.findByMovieAndTheater(movieid, theaterid);
	}
	
	public Show getshow(int sid)
	{
		return showRepo.findById(sid).get();
	}
	
	public Movie getMovie(int id)
	{
		return movieRepo.findById(id).get();
	}

}

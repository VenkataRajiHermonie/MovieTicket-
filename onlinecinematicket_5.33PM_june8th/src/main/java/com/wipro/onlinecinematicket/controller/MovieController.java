package com.wipro.onlinecinematicket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wipro.onlinecinematicket.bean.Movie;
import com.wipro.onlinecinematicket.bean.Show;
import com.wipro.onlinecinematicket.bean.Theater;
import com.wipro.onlinecinematicket.bean.User;
import com.wipro.onlinecinematicket.service.MovieService;
import com.wipro.onlinecinematicket.service.TheaterService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MovieController {
	@Autowired
	private MovieService movieService;
	@Autowired
	private TheaterService theaterService;
	
	
	@GetMapping("/movies")
	public String getByLocation(@RequestParam("location")String location,Model m,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null) {
		List<Movie> movieslist=movieService.getByLocation(location);
		m.addAttribute("list", movieslist);
		return "movieslist";
		}
		else {
			return "login";
		}
	}
	@GetMapping("/show/{movie_id}/{theater_id}")
	public String getshowdetails(@PathVariable("movie_id")int mid,@PathVariable("theater_id")int tid,Model m,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
		List<Show> showlist=movieService.getShowByMidAndTid(mid, tid);
		m.addAttribute("list", showlist);
		return "shows";
		}
		else {
			return "login";
		}
		
	}
	
	@GetMapping("book/{show_id}")
	public String bookTicket(@PathVariable("show_id")int sid,Model m,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
		Show show=movieService.getshow(sid);
		m.addAttribute("show", show);
		return "booking";
		}
		else {
			return "login";
		}
	}
}

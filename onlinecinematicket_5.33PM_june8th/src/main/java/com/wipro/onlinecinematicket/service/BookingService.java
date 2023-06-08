package com.wipro.onlinecinematicket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.onlinecinematicket.bean.Booking;
import com.wipro.onlinecinematicket.bean.Show;
import com.wipro.onlinecinematicket.repositories.BookingRepo;

@Service
public class BookingService {
	@Autowired
	private BookingRepo bookingRepo;
	@Autowired
	private MovieService movieService;
	
	public Booking bookticket(int userid,int showid,int seats,String email)
	{
		Show show=movieService.getshow(showid);
		Booking booking=new Booking();
		
		booking.setUserid(userid);
		booking.setDuration(show.getMovie().getDuration());
		booking.setLocation(show.getTheater().getLocation());
		booking.setMoviename(show.getMovie().getMoviename());
		booking.setSeats(seats);
//		booking.setTotalPrice(seats*show.getPrice());
		booking.setPrice(seats*show.getPrice());
		booking.setEmail(email);
		booking.setShowdate(show.getShowdate());
		booking.setShowtime(show.getShowtime());
		booking.setShowtype(show.getShowtype());
		booking.setTheatername(show.getTheater().getTheatername());

		
		
		bookingRepo.save(booking);
		return booking;
	}
	
	public BookingRepo getBookingRepo() {
		return bookingRepo;
	}

	public void setBookingRepo(BookingRepo bookingRepo) {
		this.bookingRepo = bookingRepo;
	}

	public MovieService getMovieService() {
		return movieService;
	}

	public void setMovieService(MovieService movieService) {
		this.movieService = movieService;
	}

	public Booking getTicket(int id)
	{
		return bookingRepo.findById(id).get();
	}
	
	public List<Booking> getAllTickets(int id)
	{
		return bookingRepo.getBookings(id);
	}
	
	public List<Booking>allTicketsByEmail(String email)
	{
		return bookingRepo.allBookings(email);
	}

	public boolean cancelTicket(int bookingid) {
		bookingRepo.deleteById(bookingid);
		return true;
	}
}

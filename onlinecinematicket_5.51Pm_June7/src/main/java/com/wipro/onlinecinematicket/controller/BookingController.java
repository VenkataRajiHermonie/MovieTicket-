package com.wipro.onlinecinematicket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wipro.onlinecinematicket.bean.Booking;
import com.wipro.onlinecinematicket.bean.CreditCard;
import com.wipro.onlinecinematicket.bean.User;
import com.wipro.onlinecinematicket.repositories.BookingRepo;
import com.wipro.onlinecinematicket.repositories.CreditCardRepo;
import com.wipro.onlinecinematicket.service.BookingService;

import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@Controller
public class BookingController {
	@Autowired 
	BookingService bookingService;
	@Autowired
	private CreditCardRepo creditCardRepo;
	
	@PostMapping("/booking/{show_id}")
	public String reserve(@PathVariable("show_id")int showid,@RequestParam("seats")int seats,@RequestParam("cardnumber")String number,@RequestParam("cvv")int cvv,@RequestParam("expiry")String expiry,HttpSession session,Model m)
	{
		User user=(User)session.getAttribute("user");
		
		CreditCard creditCard= creditCardRepo.findByCardnumberAndCvvCardAndExpiry(number, cvv, expiry);
		if(user!=null)
		{
			String email=user.getEmail();
		if(creditCard!=null) {
		int userid=user.getId();
		Booking booking=bookingService.bookticket( userid, showid, seats,email);
		int bookingid=booking.getBookingid();
		System.out.println(bookingid);
		m.addAttribute("bookingid", bookingid);
		m.addAttribute("userid", userid);
		
		
		m.addAttribute("price",booking.getPrice());

		return "payment";
		}
		else {
			m.addAttribute("error","Payment Failed");
			return "search";
		}
		}
		
		
		else {
			return "login";
		}
	}
	
	@GetMapping("/viewticket/{booking_id}")
	public String viewTicket(@PathVariable("booking_id") int bookingid,Model m,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
		Booking booking=bookingService.getTicket(bookingid);
		m.addAttribute("ticket", booking);
		return "ticket";
		}
		else {
			return "login";
		}
	}
	
	@GetMapping("/cancel/{booking_id}")
	public String cancelTicket(@PathVariable("booking_id") int bookingid,Model m,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
		int userid=user.getId();
		boolean status=bookingService.cancelTicket(bookingid);
		if(status) {
			List<Booking>bookings= bookingService.getAllTickets(userid);
			m.addAttribute("cancel","Cancellation Success");
			System.out.println(bookings);
			m.addAttribute("list", bookings);
			return "viewtickets";
		
		}
		else {
			return "search";
		}
		}
		else {
			return "login";
		}
	}
	
	@GetMapping("/tickets/{user_id}")
	public String allTickets(@PathVariable("user_id")int userid,Model m,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
		List<Booking>bookings= bookingService.getAllTickets(userid);
		System.out.println(bookings);
		m.addAttribute("list", bookings);
		return "viewtickets";}
		else {
			return "login";
		}
	}
	
	
	@GetMapping("/tickets")
	public String allTicketsByMail(Model m,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		
		if(user!=null)
		{
			String email=user.getEmail();
		List<Booking>bookings= bookingService.allTicketsByEmail(email);
		System.out.println(bookings);
		m.addAttribute("list", bookings);
		return "viewtickets";}
		else {
			return "login";
		}
	}
}

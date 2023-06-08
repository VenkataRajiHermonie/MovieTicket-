package com.wipro.onlinecinematicket.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "booking")
public class Booking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingid;
	private int userid;
	private String email;
	private int seats;
	private String moviename;
	private String theatername;
	private String showdate;
	private String showtime;
	private double price;
	private String duration;
	private String showtype;
	private String location;
	public int getBookingid() {
		return bookingid;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getTheatername() {
		return theatername;
	}
	public void setTheatername(String theatername) {
		this.theatername = theatername;
	}
	public String getShowdate() {
		return showdate;
	}
	public void setShowdate(String showdate) {
		this.showdate = showdate;
	}
	public String getShowtime() {
		return showtime;
	}
	public void setShowtime(String showtime) {
		this.showtime = showtime;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getShowtype() {
		return showtype;
	}
	public void setShowtype(String showtype) {
		this.showtype = showtype;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Booking(int bookingid, int userid, String email, int seats, String moviename, String theatername,
			String showdate, String showtime, double price, String duration, String showtype, String location) {
		super();
		this.bookingid = bookingid;
		this.userid = userid;
		this.email = email;
		this.seats = seats;
		this.moviename = moviename;
		this.theatername = theatername;
		this.showdate = showdate;
		this.showtime = showtime;
		this.price = price;
		this.duration = duration;
		this.showtype = showtype;
		this.location = location;
	}
	
	
}

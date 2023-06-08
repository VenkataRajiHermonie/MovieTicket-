package com.wipro.onlinecinematicket.bean;

import org.springframework.beans.factory.annotation.Autowired;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "shows")
public class Show {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int showid;
	
	@ManyToOne
	@JoinColumn(name = "movie_id")
	private Movie movie;
	
	@ManyToOne
	@JoinColumn(name = "theater_id")
	private Theater theater;
	
	private String showtime;
	private String showdate;
	private String showtype;
	private double price;
	public int getShowid() {
		return showid;
	}
	public void setShowid(int showid) {
		this.showid = showid;
	}
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	public Theater getTheater() {
		return theater;
	}
	public void setTheater(Theater theater) {
		this.theater = theater;
	}
	public String getShowtime() {
		return showtime;
	}
	public void setShowtime(String showtime) {
		this.showtime = showtime;
	}
	public String getShowdate() {
		return showdate;
	}
	public void setShowdate(String showdate) {
		this.showdate = showdate;
	}
	public String getShowtype() {
		return showtype;
	}
	public void setShowtype(String showtype) {
		this.showtype = showtype;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Show() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Show(int showid, Movie movie, Theater theater, String showtime, String showdate, String showtype,
			double price) {
		super();
		this.showid = showid;
		this.movie = movie;
		this.theater = theater;
		this.showtime = showtime;
		this.showdate = showdate;
		this.showtype = showtype;
		this.price = price;
	}
	
	
}

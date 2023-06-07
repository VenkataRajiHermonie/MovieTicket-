package com.wipro.onlinecinematicket.bean;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "theaters")
public class Theater {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int theaterid;
	private String theatername;
	
	@OneToMany(mappedBy = "theater")
	private List<Movie> movies;
	
	@OneToMany(mappedBy = "theater")
	private List<Show>shows;
	
	private String location;
	private String contact;

	public int getTheaterid() {
		return theaterid;
	}
	public void setTheaterid(int theaterid) {
		this.theaterid = theaterid;
	}
	public String getTheatername() {
		return theatername;
	}
	public void setTheatername(String theatername) {
		this.theatername = theatername;
	}
	public List<Movie> getMovies() {
		return movies;
	}
	public void setMovies(List<Movie> movies) {
		this.movies = movies;
	}
	public List<Show> getShows() {
		return shows;
	}
	public void setShows(List<Show> shows) {
		this.shows = shows;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public Theater() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Theater(int theaterid, String theatername, List<Movie> movies, List<Show> shows, String location,
			String contact) {
		super();
		this.theaterid = theaterid;
		this.theatername = theatername;
		this.movies = movies;
		this.shows = shows;
		this.location = location;
		this.contact = contact;
	}
	
	
}

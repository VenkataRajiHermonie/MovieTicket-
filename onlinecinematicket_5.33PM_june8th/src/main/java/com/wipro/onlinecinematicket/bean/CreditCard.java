package com.wipro.onlinecinematicket.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "creditCard")
public class CreditCard {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String cardnumber;
	private int cvv;
	private String expiry;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCardnumber() {
		return cardnumber;
	}
	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	public String getExpiry() {
		return expiry;
	}
	public void setExpiry(String expiry) {
		this.expiry = expiry;
	}
	public CreditCard(int id, String cardnumber, int cvv, String expiry) {
		super();
		this.id = id;
		this.cardnumber = cardnumber;
		this.cvv = cvv;
		this.expiry = expiry;
	}
	public CreditCard() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}

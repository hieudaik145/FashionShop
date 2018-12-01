package com.teamwork.model.bean;

import java.sql.Timestamp;

public class Bill {

	private long billID;
	private long userID;
	private double total;
	private String payment;
	private String adress;
	private Timestamp date;
	public Bill() {
		super();
	}
	public Bill(long billID, long userID, double total, String payment, String adress, Timestamp date) {
		super();
		this.billID = billID;
		this.userID = userID;
		this.total = total;
		this.payment = payment;
		this.adress = adress;
		this.date = date;
	}
	public long getBillID() {
		return billID;
	}
	public void setBillID(long billID) {
		this.billID = billID;
	}
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
}

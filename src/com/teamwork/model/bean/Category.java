package com.teamwork.model.bean;

public class Category {
	
	private long category_ID;
	private String category_Name;

	

	public long getCategory_ID() {
		return category_ID;
	}


	public void setCategory_ID(long category_ID) {
		this.category_ID = category_ID;
	}


	public Category(long category_ID, String category_Name) {
		super();
		this.category_ID = category_ID;
		this.category_Name = category_Name;
	}


	public String getCategory_Name() {
		return category_Name;
	}


	public void setCategory_Name(String category_Name) {
		this.category_Name = category_Name;
	}

	



	public Category() {
		super();
	}
	
	
	
}

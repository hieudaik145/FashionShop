package com.teamwork.model.bean;

public class CategoryMen {
	private long categoryMen_ID;
	private String categoryMen_Name;
	public long getCategoryMen_ID() {
		return categoryMen_ID;
	}
	public void setCategoryMen_ID(long categoryMen_ID) {
		this.categoryMen_ID = categoryMen_ID;
	}
	public String getCategoryMen_Name() {
		return categoryMen_Name;
	}
	public void setCategoryMen_Name(String categoryMen_Name) {
		this.categoryMen_Name = categoryMen_Name;
	}
	public CategoryMen(long categoryMen_ID, String categoryMen_Name) {
		super();
		this.categoryMen_ID = categoryMen_ID;
		this.categoryMen_Name = categoryMen_Name;
	}
	public CategoryMen() {
		super();
	}
	
	
}

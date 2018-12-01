package com.teamwork.model.bean;

public class Product {
	
	private long productID;
	private long categoryID;
	private String productName;
	private String productImage;
	private String productImage1;
	private String productImage2;
	private double productPrice;
	private double productPriceOld;
	private String productDescription;
	private String productOverview;
	private String productAdditonal;
	private String productReview;
	
	public Product(long productID, long categoryID, String productName, String productImage, String productImage1,
			String productImage2, double productPrice,double productPriceOld, String productDescription, String productOverview,
			String productAdditonal, String productReview) {
		super();
		this.productID = productID;
		this.categoryID = categoryID;
		this.productName = productName;
		this.productImage = productImage;
		this.productImage1 = productImage1;
		this.productImage2 = productImage2;
		this.productPrice = productPrice;
		this.productPriceOld = productPriceOld;
		this.productDescription = productDescription;
		this.productOverview = productOverview;
		this.productAdditonal = productAdditonal;
		this.productReview = productReview;
	}
	
	


	public String getProductOverview() {
		return productOverview;
	}




	public void setProductOverview(String productOverview) {
		this.productOverview = productOverview;
	}




	public String getProductAdditonal() {
		return productAdditonal;
	}


	

	public void setProductAdditonal(String productAdditonal) {
		this.productAdditonal = productAdditonal;
	}




	public String getProductReview() {
		return productReview;
	}




	public void setProductReview(String productReview) {
		this.productReview = productReview;
	}




	public Product() {
		super();
	}
	
	
	public String getProductImage1() {
		return productImage1;
	}
	public void setProductImage1(String productImage1) {
		this.productImage1 = productImage1;
	}
	public String getProductImage2() {
		return productImage2;
	}
	public void setProductImage2(String productImage2) {
		this.productImage2 = productImage2;
	}
	public long getProductID() {
		return productID;
	}
	public void setProductID(long productID) {
		this.productID = productID;
	}
	public long getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(long categoryID) {
		this.categoryID = categoryID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	
	public double getProductPriceOld() {
		return productPriceOld;
	}




	public void setProductPriceOld(double productPriceOld) {
		this.productPriceOld = productPriceOld;
	}




	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	
	

}

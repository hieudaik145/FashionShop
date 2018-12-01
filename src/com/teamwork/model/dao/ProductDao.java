package com.teamwork.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.teamwork.model.bean.Product;

public class ProductDao {
	
	public ArrayList<Product> getListProductByCategory(long category_id) throws SQLException
	{
		Connection conn = ConnectionProvider.getConnection();
		String sql = "select * from product where category_id = '"+category_id+"' ";
		PreparedStatement ps = conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Product> list = new ArrayList<>();
		while(rs.next())
		{
			Product product = new Product();
			product.setProductID(rs.getLong("product_id"));
			product.setProductName(rs.getString("product_name"));
			product.setProductImage(rs.getString("product_image"));
			product.setProductPrice(rs.getDouble("product_price"));
			product.setProductPriceOld(rs.getDouble("price_old"));
			product.setProductDescription(rs.getString("product_description"));
			product.setProductOverview(rs.getString("product_overview"));
			product.setProductReview(rs.getString("product_review"));
			product.setProductAdditonal(rs.getString("product_additional"));
			list.add(product);
		}
		
		return list;
	}
	
	
	public Product getProduct(long product_id) throws SQLException
	{
		Connection conn = ConnectionProvider.getConnection();
		String sql = " select * from product where product_id = '"+product_id+"'";
		PreparedStatement ps = conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		Product product = new Product();
		while(rs.next())
		{
			product.setProductID(rs.getLong("product_id"));
			product.setProductName(rs.getString("product_name"));
			product.setProductImage(rs.getString("product_image"));
			product.setProductPrice(rs.getDouble("product_price"));
			product.setProductPriceOld(rs.getDouble("price_old"));
			product.setProductDescription(rs.getString("product_description"));
			product.setProductImage1(rs.getString("product_image1"));
			product.setProductImage2(rs.getString("product_image2"));
			product.setProductOverview(rs.getString("product_overview"));
			product.setProductReview(rs.getString("product_review"));
			product.setProductAdditonal(rs.getString("product_additional"));
		}
		
		return product;
	}
	
}

package com.teamwork.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.teamwork.model.bean.Category;

public class CategoryDao {
	
	public ArrayList<Category> getListCategory()
	{
		Connection conn = ConnectionProvider.getConnection();
		String sql = "select * from category";
		ArrayList<Category> list = new ArrayList<>();
		
		try {
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Category category = new Category();
				category.setCategory_ID(rs.getLong("category_id"));
				category.setCategory_Name(rs.getString("category_name"));
				list.add(category);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
	}
	
}

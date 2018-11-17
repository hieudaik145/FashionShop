package com.teamwork.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.teamwork.model.bean.CategoryMen;

public class CategoryMenDao {
	
	public ArrayList<CategoryMen> getListCategoryMan()
	{
		Connection conn = ConnectionProvider.getConnection();
		String sql = "select * from categorymen";
		ArrayList<CategoryMen> list = new ArrayList<>();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				CategoryMen categoryMen = new CategoryMen();
				categoryMen.setCategoryMen_ID(rs.getInt("categoryMen_ID"));
				categoryMen.setCategoryMen_Name(rs.getString("categoryMen_Name"));
				list.add(categoryMen);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}

}

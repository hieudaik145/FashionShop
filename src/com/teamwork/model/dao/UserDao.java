package com.teamwork.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.teamwork.model.bean.User;

public class UserDao {
	
	static public boolean checkEmail(String email)
	{
		Connection conn = ConnectionProvider.getConnection();
		String sql = "select * from khachhang where email=? ";
		
		try {
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs = ps.executeQuery();
			return rs.next();
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
		
	}
	
	
	

}

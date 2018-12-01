package com.teamwork.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.teamwork.model.bean.User;

public class RegisterDao {
	
	public static int register(User u)
	{
		int status = 0;
		
		if(checkEmail(u) == false)
		{
			try {
				
				Connection con = ConnectionProvider.getConnection();
				PreparedStatement ps = con.prepareStatement("insert into khachhang(username,password,email,phone) value(?,?,?,?)");
				ps.setString(1, u.getUsername());
				ps.setString(2, u.getPassword());
				ps.setString(3, u.getEmail());
				ps.setInt(4, u.getPhone());
				
				status=ps.executeUpdate();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		else
		{
			return status = 0;
		}
		
		return status;
	}
	
	public static boolean checkEmail(User u)
	{
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from khachhang where email = ?");
			ps.setString(1, u.getEmail());
			ResultSet rs = ps.executeQuery();
			return rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}

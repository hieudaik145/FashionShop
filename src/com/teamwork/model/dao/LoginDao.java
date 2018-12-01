package com.teamwork.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.teamwork.model.bean.User;

public class LoginDao {

		static public boolean CheckLogin(User u)
		{
			
			try {
				
				Connection con = ConnectionProvider.getConnection();
				PreparedStatement ps = con.prepareStatement("select * from khachhang where email=? and password=? ");
				ps.setString(1, u.getEmail());
				ps.setString(2, u.getPassword());
				ResultSet rs = ps.executeQuery();
				return rs.next();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return false;
		
		}
		static public void getDataKH(User u) throws SQLException
		{
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from khachhang where email=? and password=? ");
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getPassword());
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				u.setUserID(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setEmail(rs.getString("email"));
				u.setPhone(rs.getInt("phone"));
			}
		}
	
}

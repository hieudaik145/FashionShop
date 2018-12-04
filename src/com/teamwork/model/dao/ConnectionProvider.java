package com.teamwork.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import static com.teamwork.model.dao.Provider.*;

public class ConnectionProvider {

	private static Connection con=null;
	
	static {
		
		try {
			Class.forName(DRIVER);
			con=DriverManager.getConnection(DB_URL,User,Pass);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		return con;
	}
	
}

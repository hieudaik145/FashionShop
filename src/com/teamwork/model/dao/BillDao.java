package com.teamwork.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLSyntaxErrorException;
import java.sql.Timestamp;
import java.util.Date;

import com.teamwork.model.bean.Bill;

public class BillDao {
	
	public void insertBill(Bill bill) throws SQLException
	{
		Connection conn = ConnectionProvider.getConnection();
		String sql = "insert into bill(bill_id,user_id,total,payment,adress,date) values(?,?,?,?,?,?) ";
		PreparedStatement ps = conn.prepareCall(sql); 
		ps.setLong(1, bill.getBillID());
		ps.setLong(2, bill.getUserID());
		ps.setDouble(3,bill.getTotal());
		ps.setString(4, bill.getPayment());
		ps.setString(5, bill.getAdress());
		ps.setTimestamp(6, bill.getDate());
		ps.executeUpdate();
	}

}

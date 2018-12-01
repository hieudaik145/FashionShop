package com.teamwork.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.teamwork.model.bean.BillDetail;

public class BillDetailDao {
	
	public void insertBillDetail(BillDetail bd) throws SQLException {
		
		Connection conn = ConnectionProvider.getConnection();
		String sql = "insert into bill_detail(bill_detail_id,bill_id,product_id,price,quantity) values(?,?,?,?,?)" ;
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setLong(1, bd.getBillDetailID());
		ps.setLong(2, bd.getBillID());
		ps.setLong(3, bd.getProductID());
		ps.setDouble(4, bd.getPrice());
		ps.setInt(5, bd.getQuantity());
		ps.executeUpdate();
	}
	


}

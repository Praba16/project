package com.cognizant.bean;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class GrizzlyDAO {
	public static Connection Connect() throws Exception {

		Connection conn = null;
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grizzy", "root", "root");
		return conn;
	}

	public int insert(Grizzly gr) throws Exception

	{
		Connection conn = Connect();
		String insertQuery = "insert into product(product_id,category,name,describtion,price) values(?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(insertQuery);
		ps.setInt(1, gr.getProductId());
		ps.setString(2, gr.getCategory());
		ps.setString(3, gr.getName());
		ps.setString(4, gr.getDescribtion());
		ps.setFloat(5, gr.getPrice());
		int insertStatus = 0;
		insertStatus = ps.executeUpdate();
		return insertStatus;
	}

	public List<Grizzly> readAll() throws Exception {
		List<Grizzly> grList = new ArrayList<Grizzly>();
		Connection conn = Connect();
		String readQuery = "select name,brand,category,rating from product";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(readQuery);

		while (rs.next()) {
			Grizzly gr = new Grizzly();
			gr.setName(rs.getString(1));
			gr.setBrand(rs.getString(2));
			gr.setCategory(rs.getString(3));
			gr.setRating(rs.getFloat(4));
			grList.add(gr);
		}
		return grList;

	}
	public int delete(String name) throws Exception

	{
		Connection conn = Connect();
		String deleteQuery = "delete from product where name='"+name+"'";
		int deleteStatus = 0;
		Statement st=conn.createStatement();
		deleteStatus = st.executeUpdate(deleteQuery);
		return deleteStatus;
		
	}
	public Grizzly read(String name) throws Exception{
		Connection conn = Connect();
		String readQuery = "select name,brand,describtion,price,rating from product where name='"+name+"'";
		
		Statement st=conn.createStatement();
		ResultSet rs = st.executeQuery(readQuery);
		
		Grizzly dept = new Grizzly();
		if(rs.next())
		{
			dept.setName(rs.getString(1));
			dept.setBrand(rs.getString(2));
			dept.setDescribtion(rs.getString(3));
			dept.setPrice(rs.getFloat(4));
			dept.setRating(rs.getFloat(5));
			
		}
		return dept;
	}
	public Grizzly redrive(String name) throws Exception{
		Connection conn = Connect();
		String readQuery = "select username,id,designation,office,user_type from login where username='"+name+"'";
		
		Statement st=conn.createStatement();
		ResultSet rs = st.executeQuery(readQuery);
		
		Grizzly dept = new Grizzly();
		if(rs.next())
		{   dept.setUsername(rs.getString(1));
			dept.setId(rs.getInt(2));
			dept.setDesignation(rs.getString(3));
			dept.setOffice(rs.getString(4));
			dept.setUserType(rs.getString(5));
			
		}
		return dept;
	}

}

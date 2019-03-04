package com.cognizant.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class VendorDAO {
	public static Connection Connect() throws Exception {

		Connection conn = null;
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vendor", "root", "root");
		return conn;
	}

	public Vendor redrive(String name) throws Exception {
		Connection conn = Connect();
		String readQuery = "select username,rating,contact,address,user_type from vendor_login where username='" + name
				+ "'";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(readQuery);

		Vendor dept = new Vendor();
		if (rs.next()) {
			dept.setUsername(rs.getString(1));
			dept.setRating(rs.getFloat(2));
			dept.setContact(rs.getString(3));
			dept.setAddress(rs.getString(4));
			dept.setUserType(rs.getString(5));

		}
		return dept;
	}

	public List<Vendor> readAll() throws Exception {
		List<Vendor> grList = new ArrayList<Vendor>();
		Connection conn = Connect();
		String readQuery = "select name,brand,category,product_rating from product";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(readQuery);

		while (rs.next()) {
			Vendor gr = new Vendor();
			gr.setName(rs.getString(1));
			gr.setBrand(rs.getString(2));
			gr.setCategory(rs.getString(3));
			gr.setProductRating(rs.getFloat(4));
			grList.add(gr);
		}
		conn.close();
		return grList;

	}

public List<Vendor> read() throws Exception {
	List<Vendor> grList = new ArrayList<Vendor>();
	Connection conn = Connect();
	String readQuery = "select product.product_id,product.name,product.product_rating,product.price,inventry.stock,inventry.buffer,inventry.pending from product,inventry where product.product_id=inventry.id";

	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(readQuery);

	while (rs.next()) {
		Vendor gr = new Vendor();
		gr.setProductId(rs.getString(1));
		gr.setName(rs.getString(2));
		gr.setProductRating(rs.getFloat(3));
		gr.setPrice(rs.getFloat(4));
		gr.setStock(rs.getInt(5));
		gr.setBuffer(rs.getInt(6));
		gr.setPending(rs.getInt(7));
		
		grList.add(gr);
	}
	conn.close();
	return grList;

}
public int update(Vendor emp) throws Exception

{
	Connection conn = Connect();
	String updateQuery = "update inventry set stock=?,buffer=? where id=?";
	PreparedStatement ps = conn.prepareStatement(updateQuery);
	ps.setString(3, emp.getId());
	ps.setInt(1, emp.getStock());
	ps.setInt(2, emp.getBuffer());
	int updateStatus = 0;
	updateStatus = ps.executeUpdate();
	conn.close();
	return updateStatus;
	
}
public Vendor read(String name) throws Exception{
	Connection conn = Connect();
	String readQuery = "select name,brand,describtion,price,product_rating from product where name='"+name+"'";
	
	Statement st=conn.createStatement();
	ResultSet rs = st.executeQuery(readQuery);
	
	Vendor dept = new Vendor();
	if(rs.next())
	{
		dept.setName(rs.getString(1));
		dept.setBrand(rs.getString(2));
		dept.setDescribtion(rs.getString(3));
		dept.setPrice(rs.getFloat(4));
		dept.setProductRating(rs.getFloat(5));
		
	}
	conn.close();
	return dept;
}
public int delete(String name) throws Exception

{
	Connection conn = Connect();
	String deleteQuery = "delete from product where name='"+name+"'";
	int deleteStatus = 0;
	Statement st=conn.createStatement();
	deleteStatus = st.executeUpdate(deleteQuery);
	conn.close();
	return deleteStatus;
	
}
public int insert(Vendor gr) throws Exception

{
	Connection conn = Connect();
	String insertQuery = "insert into product(product_id,category,name,describtion,price) values(?,?,?,?,?)";
	PreparedStatement ps = conn.prepareStatement(insertQuery);
	ps.setString(1, gr.getProductId());
	ps.setString(2, gr.getCategory());
	ps.setString(3, gr.getName());
	ps.setString(4, gr.getDescribtion());
	ps.setFloat(5, gr.getPrice());
	int insertStatus = 0;
	insertStatus = ps.executeUpdate();
	conn.close();
	return insertStatus;
}
}

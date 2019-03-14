<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Ajax Page</title>

</head>

<body>

	<%
	
		String user = request.getParameter("val");
	
		
		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grizzy", "root", "root");

			String userQuery = "Select * from login where username='" + user + "'";

			PreparedStatement ps = conn.prepareStatement(userQuery);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

	%>

	<p align="center">

		<input type="password" name="pass" placeholder="password"

			class="form-rounded username-padding" data-toggle="tooltip"

			title="Password" required>

		<%

			//String password = request.getParameter("pass");

		//session.setAttribute("password",password);

				} else {

					out.println("Invalid username please check!!");

				}



			} catch (Exception e) {

				out.println(e.getMessage());

			}

		%>

	

</body>

</html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSetMetaData"%>

<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Validation</title>

</head>

<body>

	<%
	String uname = request.getParameter("uname");

	String password = request.getParameter("pass");

		// session.setAttribute("username", uname);

		try {
			
			int status = 0;
			Class.forName("com.mysql.jdbc.Driver");
			HttpSession s=request.getSession();
			s.setAttribute("username",uname);
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grizzy", "root", "root");
			Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String s1 = "select * from login where username='" + uname + "'";

			
			ResultSet rs = stmt.executeQuery(s1);

			if (rs.next())

			{
				status = rs.getInt(4);
				if (password.equals(rs.getString(2))) {
					status = 0;
					rs.updateInt(4, status);
					rs.updateRow();
					response.sendRedirect("list.jsp?username=" + uname + "");
				} else if (status < 3) {
					rs.updateInt(4, ++status);
					rs.updateRow();
					response.sendRedirect("index.jsp");
				} else {
					out.println("Invalid");
				}

			}

			else

			{

				out.println("Issue in viewing the product list..please check!");

			}

		}

		catch (Exception e)

		{

			out.println(e.getMessage());

		}
		
		
		
	%>

</body>

</html>
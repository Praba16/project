<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
	
	<form action="update.jsp">
		<h1 align="center">edit record</h1>
		<table>
			<tr>
				<th>Column Name</th>
				<th>Value</th>
			</tr>
			<%
				String id = request.getParameter("id");
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vendor", "root", "root");
					Statement st = conn.createStatement();
					ResultSet rs = st.executeQuery("select id,stock,buffer from inventry where id='"+id+"'");
					int i = 0;
					if (rs.next()) {
			%>


			<tr>
				<td>Id:</td>
				<td><input type="text" name="id" value="<%=rs.getString(1)%>"
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>In Stock:</td>
				<td><input type="number" name="stock"
					value="<%=rs.getInt(2)%>"></td>
			</tr>
			<tr>
				<td>Buffer</td>
				<td><input type="number" name="buffer"
					value="<%=rs.getInt(3)%>"></td>
			</tr>
			<tr>
				<td><input type="reset" value="clear"></td>
				<td><input type="submit" value="update"></td>
			</tr>

		</table>
	</form>
	<%
		}
			rs.close();
			st.close();
			conn.close();
		} catch (Exception e) {
			out.println(e.getMessage());
		}
	%>
</body>
</html>
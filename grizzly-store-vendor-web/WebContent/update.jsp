<%@page import="com.cognizant.bean.VendorDAO"%>
<%@page import="com.cognizant.bean.Vendor"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<% 
try {
	VendorDAO empDAO = new VendorDAO();
	Vendor emp = new Vendor();
			emp.setId(request.getParameter("id"));
			emp.setStock(Integer.parseInt(request.getParameter("stock")));
			emp.setBuffer( Integer.parseInt(request.getParameter("buffer")));
			
			
			int updateStatus = 0;
			updateStatus = empDAO.update(emp);
			if (updateStatus == 0) {
				out.println("Error while updating the record!! please check.");
			} else {
				response.sendRedirect("inventory.jsp");
			}

		} catch (Exception e) {
			out.println(e.getMessage());
		}
%>
</body>
</html>
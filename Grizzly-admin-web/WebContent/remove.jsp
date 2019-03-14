<%@page import="com.cognizant.bean.GrizzlyDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DELETE PAGE</title>
</head>
<body>
<%
GrizzlyDAO grDAO=new GrizzlyDAO();
int status=0;
status=grDAO.delete(request.getParameter("name"));
if(status!=0){
	 response.sendRedirect("view.jsp");
}
     else{
          
           out.println("Error");
     }
%>
</body>
</html>

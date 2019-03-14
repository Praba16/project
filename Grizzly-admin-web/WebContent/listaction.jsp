<%@page import="com.cognizant.bean.GrizzlyDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertion</title>
</head>
<body>
<jsp:useBean id="gt" class="com.cognizant.bean.Grizzly"></jsp:useBean>
	<jsp:setProperty property="*" name="gt"/>
<%


		GrizzlyDAO gr= new GrizzlyDAO();
		int status = 0;
		status = gr.insert(gt);
		request.setAttribute("status", status);
	%>
	<core:if test="${status!=0 }">
		<core:redirect url="view.jsp" ></core:redirect>
	</core:if>
	<core:if test="${status==0 }">
		<core:out value="Error"></core:out>
	</core:if>
</body>
</html>
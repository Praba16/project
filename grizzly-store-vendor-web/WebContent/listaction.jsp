<%@page import="com.cognizant.bean.VendorDAO"%>
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
<jsp:useBean id="gt" class="com.cognizant.bean.Vendor"></jsp:useBean>
	<jsp:setProperty property="*" name="gt"/>
<%


		VendorDAO gr= new VendorDAO();
		int status = 0;
		status = gr.insert(gt);
		request.setAttribute("status", status);
	%>
	<core:if test="${status!=0 }">
		<core:redirect url="product.jsp" ></core:redirect>
	</core:if>
	<core:if test="${status==0 }">
		<core:out value="Error"></core:out>
	</core:if>
</body>
</html>
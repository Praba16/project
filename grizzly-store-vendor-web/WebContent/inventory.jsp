<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.cognizant.bean.Vendor"%>
<%@page import="com.cognizant.bean.VendorDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="styles/center.css">
</head>
<body>
	<div style="background-color: #eee">
		<header> GRIZZLY <img src="images/logo1.png" class="img"
			alt="logo" width="60px" height="60px" /> STORE &emsp;&emsp;&emsp; <input
			type="search"
			placeholder="Search                   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;        &#xf002"
			class="fa fa-search rounded-pill"
			style="border: 0; width: 300px; height: 40px" role="button">
		<%
			try {

				HttpSession s = request.getSession();
				VendorDAO j = new VendorDAO();
				Vendor d = new Vendor();

				d = j.redrive(s.getAttribute("username").toString());
		%>


		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <a class="btn"><i
			class="fa fa-bell" role="button" style="font-size: 20px"></i></a>
		&emsp;&emsp;&emsp; Welcome, <%=d.getUserType()%> <%=d.getUsername()%>
		&emsp;&emsp;<a href="index.jsp">
			<button type="button" class="btn btn-secondary round btn-sm">Logout</button>
		</a> </header>
	</div>


	<div class="navi">
		<header class="btn btn-tertiary"
			style="color: white; background-color:lightgray">PROFILE
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Edit</header>
		<br> <br>
		<div class="text-center">
			<img src="images/smiley.jpg" alt="picture" width="100px"
				height="100px" /><br> <br>
			<h3><%=d.getUsername()%></h3>
			<br>
			<h3 style="font-size: 20px; color: grey">
				<i class="fa fa-star-o"></i> &nbsp; 3.7
			</h3>
			<br>
			<h4>Contact</h4>
			<h4 style="color: grey"><%=d.getContact()%></h4>
			<br>
			<h4>Address</h4>
			<h5 style="color: grey"><%=d.getAddress()%></h5>
			<br>
			<button type="submit" class="btn btn-secondary btn-lg round"
				style="background-color: lightgray; height: 58px; width: 220px; color: white; border-top-width: 0px; border-left-width: 0px; border-right-width: 0px; border-bottom-width: 0px;">Contact
				Vendor</button>
			<%
				} catch (Exception e) {

					out.println(e.getMessage());

				}
			%>


		</div>
	</div>

	<div class="col ">
		<div class="container">
			<div class="row">
				<div>
					<form method="get"
						action="product.jsp">
						<button type="submit" class="btn btn-secondary btn-lg "
							style="background-color: lightgray; height: 58px; width: 332px; color: black; border-top-width: 0px; border-left-width: 0px; border-right-width: 0px; border-bottom-width: 0px">
							<h3>PRODUCTS</h3>
						</button>
						</button>
					</form>
				</div>
				<div>
					<form method="get"
						action="file:///D:/grizzly/static/admin/vendor/inventory.html">
						<button type="submit" class="btn btn-secondary btn-lg  gr"
							style="background-color: darkgrey; box-shadow: 0px 10px grey; height: 58px; width: 334px; color: black">
							<h3>INVENTORY</h3>
						</button>
					</form>
				</div>
				<div class="btn btn-tertiary  col-sm-3 gr"
					style="background-color: #eee">
					<h3></h3>
				</div>


			</div>

			<div class="row top-buffer">
				<div class="dropdown">
					<button type="button" class="btn btn-light dropdown-toggle round"
						style="padding-top: 10px; width: 226px; font-size: 20px"
						data-toggle="dropdown">Choose Action</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Link 1</a> <a
							class="dropdown-item" href="#">Link 2</a> <a
							class="dropdown-item" href="#">Link 3</a>
					</div>
				</div>
				&emsp;&emsp; <input type="search"
					placeholder="Product Name/Id..            &#xf002"
					class="fa fa-search rounded-pill"
					style="border: 0; width: 200px; height: 40px" role="button">

				&emsp;&emsp;&emsp;&emsp;
				<div class="dropdown">
					<button type="button" class="btn btn-light dropdown-toggle round"
						style="padding-top: 10px; width: 226px; font-size: 20px"
						data-toggle="dropdown">Sort By</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Product</a> <a
							class="dropdown-item" href="#">Brand</a> <a class="dropdown-item"
							href="#">Category</a> <a class="dropdown-item" href="#">Rating</a>
					</div>
				</div>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <br> <br> <br> <br>

				<!--table-->
			</div>
			<%
				try {
					VendorDAO gr = new VendorDAO();
					List<Vendor> grList = new ArrayList<Vendor>();
					grList = gr.read();
			%>
			<div class="table-wrapper-scroll-y">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col" style="color: gray">Product List</th>
							<th scope="col" style="color: gray">ID</th>
							<th scope="col" style="color: gray">In Stock</th>
							<th scope="col" style="color: gray">Req.</th>
							<th scope="col" style="color: gray">Buffer</th>
							<th scope="col" style="color: gray">Price/Item</th>
							<th scope="col" style="color: gray">Pending</th>
							<th scope="col" style="color: gray">Rating</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<%
						for (Vendor g : grList) {
					%>
					<%int x= g.getStock();%>
					<%int y= g.getBuffer();%>
					<tbody>
						<tr>
							<td><div class="container">
									<div class="round1">
										<input type="checkbox" id="checkbox" /> <label for="checkbox"></label>
									</div>
								</div></td>
							<td><%=g.getName()%></td>
							<td><%=g.getProductId()%></td>
							<% 
							if(y>x){%>
							<td style="background-color: lightgrey"><%=x %></td>
							<td style="background-color: lightgrey"><%=y-x %></td>
							<td style="background-color: lightgrey"><%=y %></td>
							<%
							}
							else 
							{%>
							<td style="background-color: lightgrey"><%=x %></td>
							<td style="background-color: lightgrey"><%=0 %></td>
							<td style="background-color: lightgrey"><%=y %></td>
							<%} %>
							<td><%=g.getPrice() %></td>
							<td><%=g.getPending() %></td>
							<td><%=g.getProductRating() %></td>
							<td><a href="edit.jsp?id=<%=g.getProductId()%>"><button
										type="button" class="btn btn-light round view">Manage</button></a></td>

						</tr>
						<%
							}
							} catch (Exception e) {

								out.println(e.getMessage());

							}
						%>


					</tbody>
				</table>

			</div>


		</div>
	</div>
</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cognizant.bean.Grizzly"%>
<%@page import="java.util.List"%>
<%@page import="com.cognizant.bean.GrizzlyDAO"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>Product-list</title>

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
		<header>
			<b>GRIZZLY</b> <img src="images/logo1.PNG" class="img" alt="logo"
				width="60px" height="60px" /> <b>STORE</b> &emsp;&emsp;&emsp; <input
				type="search"
				placeholder="Search                   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;        &#xf002;"
				class="fa fa-search rounded-pill"
				style="border: 0; width: 300px; height: 40px" role="button">
			<%
				try {

					HttpSession s = request.getSession();
					GrizzlyDAO j = new GrizzlyDAO();
					Grizzly d = new Grizzly();

					d = j.redrive(s.getAttribute("username").toString());
			%>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <a class="btn"><i
				class="fa fa-bell" role="button" style="font-size: 20px"></i></a>
			&emsp;&emsp;&emsp; Welcome
			<%=d.getUserType()%>
			<%=d.getUsername()%>

			 &emsp;&emsp;<a href="index.jsp"><button type="button"
					class="btn btn-secondary round btn-sm">Logout</button></a>

		</header>
	</div>


	<div class="navi">
		<header class="btn btn-tertiary"
			style="color: white; background-color: lightgray">PROFILE
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Edit</header>
		<br> <br>
		<div class="text-center">
			<img src="images/grey.png" alt="picture" width="100px" height="100px" /><br>
			<br>
			<h3>
				<%=d.getUsername()%>
			</h3>
			<br>
			<h4>ID</h4>
			<h4 style="color: grey"><%=d.getId()%></h4>
			<br>
			<h4>Designation</h4>
			<h4 style="color: grey"><%=d.getDesignation()%></h4>
			<br>
			<h4>Office</h4>
			<h4 style="color: grey"><%=d.getOffice()%></h4>
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
						action="file:///D:/grizzly/static/admin/list.html">
						<button type="submit" class="btn btn-secondary btn-lg  gr"
							style="background-color: darkgrey; box-shadow: 0px 10px grey; height: 58px; width: 334px; color: black">
							<h3>PRODUCT</h3>
						</button>
					</form>
				</div>
				<div class="btn btn-tertiary  col-sm-4 gr"
					style="background-color: lightgray">
					<h3>VENDORS</h3>
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
					placeholder="Category list                     &#xf002"
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
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<form method="get" action="list.jsp">
					<button type="submit" class="btn btn-standard round"
						style="padding-top: 10px; width: 226px; font-size: 20px; background-color: grey; padding-inline-end: 2em; color: white">
						Add Products</button>
				</form>


				<!--table-->
			</div>
			<%
				try {
					GrizzlyDAO gr = new GrizzlyDAO();
					List<Grizzly> grList = new ArrayList<Grizzly>();
					grList = gr.readAll();
			%>
			<div class="table-wrapper-scroll-y">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">Product List</th>
							<th scope="col">Brand</th>
							<th scope="col">Category</th>
							<th scope="col">Rating</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<%
							for (Grizzly g : grList) {
						%>
						<tr>
							<td><div class="container">
									<div class="round1">
										<input type="checkbox" id="<%=g.getName()%>" /> <label for="<%=g.getName()%>"></label>
									</div>
								</div></td>
							<td><%=g.getName()%></td>
							<td><%=g.getCategory()%></td>
							<td><%=g.getBrand()%></td>
							<td><%=g.getRating()%></td>
							<td><a href="display.jsp?name=<%=g.getName()%>"
								class="btn btn-light round view">View</a>
								<button type="button" class="btn btn-light round view">Block</button>
								<a href="remove.jsp?name=<%=g.getName()%>"
								class="btn btn-light round view">Remove </a></td>
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
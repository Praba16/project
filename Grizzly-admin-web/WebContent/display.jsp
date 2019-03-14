<!DOCTYPE html>
<%@page import="com.cognizant.bean.Grizzly"%>
<%@page import="com.cognizant.bean.GrizzlyDAO"%>
<html>
<head>
<title>Product-view</title>
<meta charset="utf-8">


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">


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



<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
				GrizzlyDAO j=new GrizzlyDAO();
				Grizzly d=new Grizzly();
				
	            d=j.redrive(s.getAttribute("username").toString());
				%>

			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <a class="btn"><i
				class="fa fa-bell" role="button" style="font-size: 20px"></i></a>
			&emsp;&emsp;&emsp; Welcome <%=d.getUserType()%> <%=d.getUsername()%> &emsp;&emsp;<a href="index.jsp"><button type="button"
					class="btn btn-secondary round btn-sm">Logout</button></a>

		</header>
	</div>
	



	<div class="navi">
		<header class="btn btn-tertiary"
			style="color: white; background-color: lightgray">PROFILE
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Edit</header>
		<br>
		<br>
		<div class="text-center">
			<img src="images/grey.png" alt="picture" width="100px" height="100px" /><br>
			<br>
			<h3><%=d.getUsername()%></h3>
			<br>
			<h4>ID</h4>
			<h4 style="color: grey"><%=d.getId()					
				%></h4>
			<br>
			<h4>Designation</h4>
			<h4 style="color: grey"><%=d.getDesignation()%></h4>
			<br>
			<h4>Office</h4>
			<h4 style="color: grey"><%=d.getOffice()					
				%></h4><%
					} catch (Exception e) {

						out.println(e.getMessage());

					}
				%>
		</div>
	</div>
	<%
		try {
			GrizzlyDAO grDAO = new GrizzlyDAO();
			Grizzly gr = new Grizzly();
			
			gr = grDAO.read(request.getParameter("name"));
			// request.setAttribute("status",status);
	%>
	<div class="container">
		<div class="col ">

			<div class="row">
				<div>
					<form method="get"
						action="file:///D:/grizzly/static/admin/list.jsp">
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
		</div>
		<br>

		<p style="font-size: 25px">
			<b><%=gr.getName()%> </b>
			<%=gr.getBrand()%>
			&emsp; <a class="btn"><i class="fa fa-pencil" role="button"
				id="pencil"></i></a>
		</p>
		<h6 style="font-size: 20px; color: grey">
			<i class="fa fa-star-o"></i> &nbsp; <%=gr.getRating() %>
		</h6>
		<a class="btn"><i class="fa fa-pencil" role="button" id="pencil"></i></a>


		<div class="row" style="margin-top: 0px">
			<div class="col">

				<div style="color: black" id="carouselExampleControls"
					class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="images/t1.jpg" class="d-block w-100" alt="img1">
						</div>
						<div class="carousel-item">
							<img src="images/t2.jpg" class="d-block w-100" alt="img2">
						</div>
						<div class="carousel-item">
							<img src="images/t3.jpg" class="d-block w-100" alt="img3">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleControls"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>





			<!--  <input type="search" placeholder="Search &#xf002" class="topnav round fa fa-search"  role="button" style="font-size:20px">
<input type="text" placeholder="Search" class="topnav round"><a  class="btn"><i class="fa fa-search"  role="button" style="font-size:20px"></i></a>-->

			<div class="col-sm-6">
				<p style="font-size: 30px">
					Product Description &emsp; <a class="btn"><i
						class="fa fa-pencil" role="button" id="pencil"></i></a>
				</p>
				<p style="font-size: 20px"><%=gr.getDescribtion()%><br>
				</p>

				<div style="padding-left: 425px">
					<button style="position:relative; left: 100px; bottom: 100px;" type="submit" class="btn btn-secondary btn-rounded round">Finish</button>
				</div>
				<br>
				<div>
					<h4>
						RS.<%=gr.getPrice()%>/- 15%off <a class="btn"><i
							class="fa fa-pencil" role="button" id="pencil"></i></a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
						<button style="position:relative; left: 100px; bottom: 50px;" type="reset" class="btn btn-light btn-rounded round">Cancel</button>
					</h4>
					<%
						} catch (Exception e) {
							out.println(e.getMessage());
						}
					%>



				</div>
			</div>
		</div>
	</div>
</body>
</html>
<!DOCTYPE html>
<%@page import="com.cognizant.bean.GrizzlyDAO"%>
<%@page import="com.cognizant.bean.Grizzly"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<title>Add-Products</title>

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

			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <a class="btn"><i
				class="fa fa-bell" role="button" style="font-size: 20px"></i></a>
			<%
				try {

					HttpSession s = request.getSession();
					GrizzlyDAO j = new GrizzlyDAO();
					Grizzly d = new Grizzly();

					d = j.redrive(s.getAttribute("username").toString());
			%>
			&emsp;&emsp;&emsp; Welcome
			<%=d.getUserType()%>

			<%=d.getUsername()%>&emsp;&emsp; <a href="index.jsp"><button type="button"
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
			<h4 style="color: grey">
				<%=d.getId()%>
			</h4>
			<br>
			<h4>Designation</h4>
			<h4 style="color: grey">
				<%=d.getDesignation()%>
			</h4>
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

				<div class="btn btn-tertiary  col-sm-4 "
					style="background-color: lightgray">
					<h3>VENDORS</h3>
				</div>
				<div class="btn btn-tertiary  col-sm-3 gr"
					style="background-color: #eee">
					<h3></h3>
				</div>


			</div>

			<!--<ul class="nav nav-tabs row" id="myTab" role="tablist">
      <li class="nav-item bg">
<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true" style="background-color: grey;width:500px;color: black ">PRODUCT</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false" style="background-color:#eee;color: grey;width:500px ">VENDOR</a>
                                </li>
                            </ul>-->
			<form action="listaction.jsp">

				<div class="row top-buffer">
					<div class="col">
						<img src="images/add.PNG" alt="product-image"><br> <img
							src="images/add1.PNG" alt="product-image">

					</div>


					<div class="col-sm-6">

						<input type="text" name="productId" class="form-control"
							placeholder="Enter Product ID" />
						<hr>
						<input type="text" list="category" class="form-control"
							name="category" placeholder="category" />

						<datalist id="category">
							<option value="Electronics">
								<option value="Books">
							
							<option value="Toys">
						
						</datalist>
						<hr />
						<input type="text" name="name" class="form-control"
							placeholder="Name" />
						<hr />
						<input type="text" name="describtion" class="form-control"
							placeholder="Description" />
						<hr />
						<input type="text" name="price" class="form-control"
							placeholder="Price" />
						<hr />

					</div>
					<div style="padding-left: 1000px">
						<button type="submit"
									class="btn btn-secondary btn-rounded round">Add</button>
								</a> <br> <br>
						<button type="reset" class="btn btn-light btn-rounded round">Cancel</button>
						<br>

					
							</div>
			
			</form>



			<!--  <div class="row align-items-end" style="margin-top: 150px;">
    <div class="col align-items-start" >
        <div >
            <button type="submit" class="btn btn-secondary btn-rounded"><span style="color:black">Add</span>
</button>
</div>
<div class="row">
    </br><button type="clear" class="btn card-title btn-rounded"><span style="color:black">Cancel</span>
</button>
</div>
</div>
</div>-->
		</div>
	</div>
	</div>
	
</body>
</html>
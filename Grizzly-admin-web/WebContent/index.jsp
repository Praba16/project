<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style\practicecheck.css">
<title>GRIZZLY STORES</title>
<script type="text/javascript" src="scripts\username.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	
	<style>
	input{
	
	border-radius:1rem !important;
	
	}
	
	
	</style>
	
	
	
</head>
<body>
	<script>
		var request;
		function sendInfo() {
			var v = document.form1.uname.value;
			//console.log("val of v :"+v);
			var url = "ajax.jsp?val=" + v;

			if (window.XMLHttpRequest) {
				request = new XMLHttpRequest(); //for newwer versoins of browser that is capable of creating xmlhttpreq object.
			} else if (window.ActiveXObject) {
				request = new ActiveXObject("Microsoft.XMLHTTP");//for older versions of the browser
			}

			try {
				request.onreadystatechange = getInfo;
				request.open("GET", url, true);
				request.send();
			} catch (e) {
				alert("Unable to connect to server");
			}
		}

		function getInfo() {
			if (request.readyState == 4) {
				var val = request.responseText;
				document.getElementById('amit').innerHTML = val;
			}
		}
	</script>
	<br>
	<br>
	<div class="container-fluid">
		<img src="images\gri.PNG" alt="grizzly" class="center-block">
		<div class>
			<h1 align="center" style="font-size:6rem;">
				GRIZZLY STORES
			</h1>
		</div>
		<br> <br>
		<div>
			<form action="in.jsp" name="form1" method="get" target="_parent"
				id="formLogin">
				<p align="center">
					<input type="text" name="uname" placeholder="username"
						class="form-rounded username-padding" data-toggle="tooltip"
						title="username" onblur="sendInfo()" required>
				</p>
				<!--   <p align="center">
                           <input type="password" value="" name="pass"placeholder="password"
                                class="form-rounded username-padding" data-toggle="tooltip"
                                title="Password" required> -->
				</p>
				<span id="amit"> </span>
				<p align="center" class="text-dark">
					<input type="submit" value="login" placeholder="password"
						class="login-logout-button" style="width: 5%"
						 data-toggle=" tooltip" title="LOGIN"">
				</p>
			</form>
			
		</div>
	</div>
</body>
</html>

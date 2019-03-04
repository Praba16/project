<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles/center.css">

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
	<style>
	input{
	
	border-radius:1rem !important;
	
	}
	
	
	</style>
	

<title>Login</title>
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
	<h3
		style="padding-top: 104px; margin-top: 150px; padding-left: 487px; margin-bottom: 0px;">Welcome
		to</h3>
	<div class="container" align="center">
		<p style="margin-top: 5px; font-size: 80px" align="center">
			GRIZZLY <img src="images/welcome.PNG" alt="Image not found"
				style="height: 169px; width: 255px;"> STORE
		
		<form action="in.jsp" name="form1" method="get" target="_parent"
				id="formLogin">
				<p align="center">
					<input type="text" name="uname" placeholder="username"
						class="form-rounded username-padding" data-toggle="tooltip"
						title="username" onblur="sendInfo()" required>
				</p>
				<span id="amit"> </span>
				<p align="center" class="text-dark">
					<input type="submit" value="login" placeholder="password"
						class="login-logout-button" style="width: 5%"
						 data-toggle=" tooltip" title="LOGIN">
						 </p>
						 </form>

	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:url var="bcss" value="/resources/bootstrap/css/"/>
 <c:url var="bjs" value="/resources/bootstrap/js/"/>
<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport content=" width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">
<style type="text/css">

.navbar {background-color =#282828;
	margin: 5px;
}

.top {
	margin-top: 10px;
}

.bottom navbar-nav navbar-right{

margin-left:20px;
}
.image{

margin:20px;
}
.image img{

height:200px;
width:200px;
}

.imgsize img {
	height: 30px;
	width: 30px;
	margin: 0px;
}

</style>
</head>
<body>
 <c:set var="imgapp" value="resources/images/"/>
 
	<div class="container top">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header imgsize">
					<a class="navbar-brand" href="index"><img
						class="img-responsive" src="${imgapp}logo.jpg" alt="First Slide"> </a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="index">Home</a></li>
					<li class="dropdown"><a href="Products"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">Product <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="Products">Flute</a></li>
							<li><a href="Products">Guiter</a></li>
							<li><a href="Products">Piano</a></li>
						</ul></li>
					<li><a href="AboutUs">About Us</a></li>
					<li><a href="ContactUs">Contact Us</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Register"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="Login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</nav>

		<div class="row">
			<div class="col-xs-6 image">
			
			<img class=img-responsive" src="${imgapp}ims1.jpg"></a>
			</div>
			
			<div class=col-xs-6><p>	${p.id}<p></div>

</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>

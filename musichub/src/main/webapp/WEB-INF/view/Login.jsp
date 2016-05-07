<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:url var="bcss" value="resources/bootstrap/css/"/>
 <c:url var="bjs" value="resources/bootstrap/js/"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="${bcss}bootstrap.min.css">
<style>

body {
background: #eee !important; 
}
.imgsize img {
	height: 30px;
	width: 30px;
	margin: 0px;
}
.wrapper { 
margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signin-heading,
.checkbox {
 margin-bottom: 30px;
}
.top {
	margin-top: 10px;
}

.checkbox {
 font-weight: normal;
}

.form-control {
 position: relative;
 font-size: 16px;
 height: auto;
 padding: 10px;
@include box-sizing(border-box);

&:focus {
 z-index: 2;
}
}

input[type="text"] {
 margin-bottom: -1px;
 border-bottom-left-radius: 0;
 border-bottom-right-radius: 0;
}

input[type="password"] {
 margin-bottom: 20px;
 border-top-left-radius: 0;
 border-top-right-radius: 0;
}
}
.navbar {background-color =#282828;
	margin: 5px;
}
</style>
</head>
<body>
 <c:set var="imgapp" value="resources/images/"/>
<div class="container">
   <div class="container top">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header imgsize">
					<a class="navbar-brand" href="index"><img
						class="img-responsive" src="${imgapp}/logo.jpg"
						alt="First Slide"> </a>
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

<div class="wrapper">
    <form class="form-signin">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" />
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
    </form>
  </div>
 <nav class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="index">Home</a></li>
      <li><a href="AboutUs">About Us</a></li>
      <li><a href="ContactUs">Contact Us</a></li>     
    </ul>
    
  </div>
</nav>

  
  </div>
  
<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="${bjs}bootstrap.min.js"></script>

</body>
</html>
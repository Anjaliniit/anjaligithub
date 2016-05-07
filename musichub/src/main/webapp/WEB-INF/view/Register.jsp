<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <c:url var="bcss" value="resources/bootstrap/css/"/>
 <c:url var="bjs" value="resources/bootstrap/js/"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="${bcss}bootstrap.min.css">
<style>
 .navbar {background-color =#282828;
	margin: 5px;
}

.top {
	margin-top: 10px;
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
						class="img-responsive" src="${imgapp}logo.jpg"
						alt="First Slide"> </a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="index">Home</a></li>
					<li class="dropdown"><a href="Products"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">Product <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="Products?product=Flute">Flute</a></li>
							<li><a href="Products?product=Flute">Guiter</a></li>
							<li><a href="Products?product=Piano">Piano</a></li>
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

      <div class="row"><h2>New Registration</h2>
  </div>
 
  <form role="form">
    <div class="form-group">
      <label for="firstname" class="col-md-2">
        First Name:
      </label>
      <div class="col-md-10">
        <input type="text" class="form-control" id="firstname" placeholder="Enter First Name">
      </div>
 
 
    </div>
 
    <div class="form-group">
      <label for="lastname" class="col-md-2">
        Last Name:
      </label>
      <div class="col-md-10">
        <input type="text" class="form-control" id="lastname" placeholder="Enter Last Name">
      </div>
 
 
    </div>
 
    <div class="form-group">
      <label for="emailaddress" class="col-md-2">
        Email address:
      </label>
      <div class="col-md-10">
        <input type="email" class="form-control" id="emailaddress" placeholder="Enter email address">
        <p >          Like:anjali.singhal@niit.com
        </p>
      </div>
 
 
    </div>
 
    <div class="form-group">
      <label for="password" class="col-md-2">
        Password:
      </label>
      <div class="col-md-10">
        <input type="password" class="form-control" id="password" placeholder="Enter Password">
        <p > Min: 6 characters (Alphanumeric only)
        </p>
      </div>
 
 
    </div>
 
    <div class="form-group">
      <label for="sex" class="col-md-2">
        Sex:
      </label>
      <div class="col-md-10">
        <label class="radio">
          <input type="radio" name="sex" id="sex" value="male" checked>
          Male
        </label>
        <label class="radio">
          <input type="radio" name="sex" id="sex" value="female">
          Female
        </label>
      </div>
 
 
    </div>
 
    <div class="form-group">
      <label for="country" class="col-md-2">
        Country:
      </label>
      <div class="col-md-10">
        <select name="country" id="country" class="form-control">
          <option>--Please Select--</option>
          <option>India</option>
          <option>United States</option>
          <option>Canada</option>
          <option>United Kingdom</option>
          <option>Others</option>
        </select>
      </div>
 
 
 
 
    </div>
 
    <div class="form-group">
      <label for="uploadimage" class="col-md-2">
        Upload Image:
      </label>
      <div class="col-md-10">
        <input type="file" name="uploadimage" id="uploadimage">
        <p>
          Allowed formats: jpg, png,jpeg, gif 
        </p>
      </div>
 
 
    </div>
 
    <div class="checkbox">
      <div class="col-md-2">
      </div>
      <div class="col-md-10">
        <label>
          <input type="checkbox">Terms and Conditions</label>
      </div>
 
 
    </div>
 
    <div class="row">
      <div class="col-md-2">
      </div>
      <div class="col-md-10">
        <button type="submit" class="btn btn-info">
          Register
        </button>
      </div>
    </div>
  </form>
  <nav class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      <li><a href="AboutUs">About Us</a></li>
      <li><a href="ContactUs">Contact Us</a></li>     
    </ul>
    
  </div>
</nav>
 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="${bjs}bootstrap.min.js"></script>
  </body>
</html>
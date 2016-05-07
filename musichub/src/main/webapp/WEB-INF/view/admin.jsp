<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

 <c:url var="bcss" value="/resources/bootstrap/css/"/>
 <c:url var="bjs" value="/resources/bootstrap/js/"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="${bjs}angular.min.js"></script>
<link rel="stylesheet" href="${bcss}bootstrap.min.css">
<link rel="stylesheet" href="${bcss}bootstrap-theme.min.css">
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
.bottom{margin:20px;}
.central add-product-heading{text-align:center; }
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
		<div class="container central">
				 <h2 class="add-product-heading">Please login</h2>
				 <c:url var="addAction" value="/admin/add"/>
				 <form:form action="/admin/add" commandName="admin" modelAttribute="admin">
				
		<div class="row">
			<div class=col-xs-6><form:label path="id"><spring:message text="ID"/></form:label></div>
			<div class=col-xs-6> <form:input path="id" readonly="true" disabled="true"/><form:hidden path="id"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><form:label path="name"><spring:message text="NAME"/></form:label></div>
						<div class=col-xs-6><form:input path="name"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="brand"><spring:message text="BRAND"/></form:label></div>
			<div class=col-xs-6><form:input path="brand"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="category"><spring:message text="CATEGORY"/></form:label></div>
			<div class=col-xs-6><form:input path="category"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="description"><spring:message text="DESCRIPTION"/></form:label></div>
			<div class=col-xs-6><form:input path="description"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><form:label path="price"><spring:message text="PRICE"/></form:label></div>
			<div class=col-xs-6><form:input path="price"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><c:if test="${!empty admin.name}"><input type="submit" value="<spring:message text="Update Product"/>"></c:if></div>
			<div class=col-xs-6><c:if test="${empty admin.name}"><input type="submit" value="<spring:message text="Add Product"/>"></c:if></div>
		</div>
	
</form:form>
</div>
<br>
<c:if test="${!empty listProducts}">
<div class="container" ng-controller="TableCtrl">
    <div class="table-responsive bs-example"> 
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>BRAND</th>
                 <th>DESCRIPTION</th>
                  <th>PRICE</th>
                <th>CATEGORY</th>
                  <th>Edit</th>
                  <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${listProducts}" var="p">
        <tr>
    <td>${p.id}  </td>
    <td>${p.name}</td>
    <td>${p.brand}</td>
       <td>${p.description}</td>
    <td>${p.price}</td>
    <td>${p.category}</td>
      <td><a href="<c:url value="/edit/${p.id}"/>">Edit</a></td>
      <td><a href="<c:url value="/delete/${p.id}" />" >Delete</a></td>
    </tr>  
    </c:forEach> 
    </tbody>
    </table>
</div>
</div>
</c:if>
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="${bjs}bootstrap.min.js"></script>


</body>
</html>
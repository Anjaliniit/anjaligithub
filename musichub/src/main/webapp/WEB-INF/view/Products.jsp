<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:url var="bcss" value="resources/bootstrap/css/"/>
 <c:url var="bjs" value="resources/bootstrap/js/"/>
<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport content="width=device-width, initial-scale=1.0">
 <script src="${bjs}angular.min.js"></script>

<link rel="stylesheet" href="${bcss}bootstrap.min.css">
<link rel="stylesheet" href="${bcss}bootstrap-theme.min.css">
<script> 
var prod;
var app=angular.module("searchApp",[]).controller("TableCtrl",function($scope)
                    {
            
             $scope.prod=${product};
                    });

</script>

<style type="text/css">
.top {
	margin-top: 10px;
}
.navbar 
{background-color =#282828;
	margin: 5px;
}

.imgsize img {
	height: 30px;
	width: 30px;
	margin: 0px;
}
.bs-example{margin:20px;}

input-group{
margin:10px;
}

.form-control{margin:10px;}

</style>
</head>
<body ng-app="searchApp">
  <c:set var="imgapp" value="resources/images/"/>
	<div class="container top">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header imgsize">
					<a class="navbar-brand" href="index"><img
						class="img-responsive" src=""${imgapp}logo.jpg"
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
	<div class="container" ng-controller="TableCtrl">
 	<div class="search"> 
    <input type="search" ng-model="searchText" class="form-control" id="inputSearch" placeholder="Search Here"/>
     <div>
    <div class="table-responsive bs-example"> 
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>BRAND</th>
                 <th>PRICE</th>
                <th>CATEGORY</th>
                  <th>More</th>
            </tr>
        </thead>
        <tbody>
        <tr ng-repeat="p in prod|filter:searchText">
    <td>{{p.id}}  </td>
    <td>{{p.name}}</td>
    <td>{{p.brand}}</td>
    <td>{{p.price|currency}}</td>
    <td>{{p.category}}</td>
     <td><form action="ProductDetails" method="post">
     <input type="hidden" name="id" value={{p.id}}>
       <input type="hidden" name="name" value={{p.name}}>
     <input type="submit" value="click"></form>
     </td>
    </tr>   
         
        </tbody>
    </table>
</div>

</div>




 <nav class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="container-fluid"> 
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="index">join</a></li>
      <li><a href="AboutUs">About Us</a></li>
      <li><a href="ContactUs">Contact Us</a></li>     
    </ul>
    
  </div>
</nav>
 
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="${bjs}bootstrap.min.js"></script>

 
</body>
</html>


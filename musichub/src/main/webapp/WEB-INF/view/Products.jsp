<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport content="width=device-width, initial-scale=1.0">
 <script src="resources/bootstrap/js/angular.min.js"></script>
<script src="resources/bootstrap/js/product.js"></script>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">

<style type="text/css">

.nopadding
{
padding-left:0px;
padding-right:0px;
}

.navbar{
background-color=#282828;
margin:7px;
}
.top
{
margin-top:10px;
}
.logocenter
{
text-align:top;
height:50px;
width:50px;
}

.bs-example{margin:20px;}
input-group{
margin:10px;
}
</style>
</head>

<body ng-app="searchApp">

<div class="container top">
    <div class="row">
		<div class="col-lg-2">
 	       <img class="img-responsive" src="resources/images/image1.jpg" width="100" width="100" >
		</div>

		<div class="col-lg-6  nopadding">
			<div class="jumbotron logocenter">
				<h5>MUSIC HUB</h5>
			</div>
		</div>

		<div class="col-lg-2">
			<p>Music is enough for a lifetime, but a lifetime is not enough for music"~ Sergei Rachmaninov</p>
		</div>

		<div class="col-lg-2">
			<img class="img-responsive" src="resources/images/image2.jpg" width="150" width="150" >
		</div>
	</div>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost:8080/musichub/index.jsp">MusicHub</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
       <li class="dropdown">
              <a href="Products" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Product <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="Products">Flute</a></li>
                <li><a href="Products">Guiter</a></li>
                <li><a href="Products">Piano</a></li>
                </ul>
          </li>
      <li><a href="AboutUs">About Us</a></li>
      <li><a href="ContactUs">Contact Us</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>	     

<div class="container" ng-controller="TableCtrl">
  
    
    <input type="search" ng-model="searchText" class="form-control" id="inputSearch" placeholder="Search Here"/>

    <div class="table-responsive"> 
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>BRAND</th>
                <th>PRICE</th>
                              <th>DESCRIPTION</th>
                                              <th>CATEGORY</th>
            </tr>
        </thead>
        <tbody>
        <tr ng-repeat="p in prod|filter:searchText">
    <td>{{p.ID}}</td>
    <td>{{p.NAME}}</td>
    <td>{{p.BRAND}}</td>
    <td>{{p.DESCRIPTION}}</td>
    <td>{{p.PRICE}}</td>
     <td>{{p.CATEGORY}}</td>
   
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
 <script src="resources/bootstrap/js/bootstrap.min.js"></script>

 
</body>
</html>

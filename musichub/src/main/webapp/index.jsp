
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:url var="bcss" value="/resources/bootstrap/css/"/>
 <c:url var="bjs" value="/resources/bootstrap/js/"/>
<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${bcss}bootstrap.min.css">
<link rel="stylesheet" href="${bcss}bootstrap-theme.min.css">
<style type="text/css">
.carousel {
	margin-top: 20px;
	background-color:#232200;
	background-size: cover;
	background-repeat: no-repeat;
}
.carousel .item img {
	margin: 0 auto; /* Align slide image horizontally center */
	height: 250px;
	width: 700px;
}
.bs-example {
	margin: 20px;
}

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

.thumbnail img {
width: 150px; 
height: 150px;
margin-bottom:20px;
}

.caption h4
{
  background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left top, red, yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(bottom right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(bottom right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to bottom right, red, yellow);
}
.bottom{margin:20px;}
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

		<div class="row">
			<div class="bs-example">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Carousel indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
						<li data-target="#myCarousel" data-slide-to="4"></li>
					</ol>
					<!-- Wrapper for carousel items -->
					<div class="carousel-inner">
						<div class="item active">
							<img class="img-responsive" src="${imgapp}carousel1.jpg"
								alt="General">
						</div>
						<div class="item">
							<img class="img-responsive" src="${imgapp}carousel2.jpg"
								alt="Guitar">
						</div>
						<div class="item">
							<img class="img-responsive" src="${imgapp}carousel3.jpg"
								alt="Flute">
						</div>
						<div class="item">
							<img class="img-responsive" src="${imgapp}carousel4.jpg"
								alt="Flute">
						</div>
						<div class="item">
							<img class="img-responsive" src="${imgapp}carousel5.jpg"
								alt="Drum">
						</div>
					</div>
					<!-- Carousel controls -->
					<a class="carousel-control left" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span>
					</a> <a class="carousel-control right" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>
		</div>
	<div class="row">
			<div class="col-md-4">
				<a href="#" class="thumbnail">
					 <div class="caption text-center">
                        <h4>Lorem ipsum dolor sit amet, consectetur</h4>
                    </div>
						<img class="img-responsive" src="${imgapp}image1.jpg" alt="Pulpit Rock"
					>
				</a>
			</div>
			<div class="col-md-4">
				<a href="#" class="thumbnail">
					 <div class="caption text-center">
                        <h4>Lorem ipsum dolor sit amet, consectetur</h4>
                    </div>
                     <img class="img-responsive"
					src="${imgapp}images3.jpg" alt="Moustiers Sainte Marie"
					>
				</a>
			</div>
			<div class="col-md-4">
				<a href="#" class="thumbnail">
					 <div class="caption text-center">
                        <h4>Lorem ipsum dolor sit amet, consectetur</h4>
                    </div> <img class="img-responsive img-rounded"
					src="${imgapp}image2.jpg" alt="Cinque Terre"
					>
				</a>
			</div>
		</div>
</div>
<div class="row">
  <div class=col-xs-12">
		<div class="bottom"> 
			<nav class="navbar navbar-inverse navbar-fixed-bottom">
				<div class="container">
              		<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="admin/add">Admin</a></li>
						<li><a href="AboutUs">About Us</a></li>
						<li><a href="ContactUs">Contact Us</a></li>
					</ul>
       			</div>
			</nav>
		</div>
		
</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="${bjs}bootstrap.min.js"></script>


</body>
</html>


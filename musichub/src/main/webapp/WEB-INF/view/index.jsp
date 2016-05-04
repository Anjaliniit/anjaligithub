<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">
<style type="text/css">
.carousel{
    background: #2f4357;
    margin-top: 20px;
}
.carousel .item img{
    margin: 0 auto; /* Align slide image horizontally center */
}

.nopadding
{
padding-left:0px;
padding-right:0px;
}
.bs-example{
	margin: 20px;
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
text-align:center;
height:20px;
width:20px;
}
</style>
</head>
<body>

<div class="container top">

<div class="row">
<div class="col-lg-2">
 
 
<img class="img-responsive" src="resources/images/image1.jpg" width="100" width="100" >
</div>

<div class="col-lg-6  nopadding">
<div class="jumbotron logocenter">
<h1>music hub</h1>
</div></div>

<div class="col-lg-2">

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

<div class="row">
<div class="bs-example">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>   
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="resources/images/image1.jpg" alt="First Slide">
            </div>
            <div class="item">
                <img src="resources/images/image2.jpg" alt="Second Slide">
            </div>
            <div class="item">
                <img src="resources/images/images3.jpg" alt="Third Slide">
            </div>
        </div>
        <!-- Carousel controls -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>
</div>

 <div class="row">
    <div class="col-md-4">
    <a href="resources/images/image1.jpg" class="thumbnail">
      <p>Pulpit Rock: A famous tourist attraction in Forsand, Ryfylke, Norway.</p> 
      <img src="resources/images/image1.jpg" alt="Pulpit Rock" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="resources/images/headerimg1.jpg" class="thumbnail">
      <p>Moustiers-Sainte-Marie: Considered as one of the "most beautiful villages of France".</p>
      <img src="resources/images/headerimg1.jpg" alt="Moustiers Sainte Marie" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="resources/images/image2.jpg" class="thumbnail">
      <p>The Cinque Terre: A rugged portion of coast in the Liguria region of Italy.</p> 
      <img src="resources/images/image2.jpg" alt="Cinque Terre" style="width:150px;height:150px">
    </a>
  </div>
</div>
    </div>
  </div>
 <%--   <div class="row">
  <div class="col-xs-12"><h1></h1></div></div>
 
 
 --%>
 <nav class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Artifacts From Chattisgarh</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- Customize styles -->
<link href="style.css" rel="stylesheet" />
<!-- font awesome styles -->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<!-- Favicons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico">
</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<!--<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				
				<a class="active" href="index.html"> <span class="icon-home"></span> Home</a>
				<a href="products.html "><span class="icon-shopping-cart"></span> Products </a> 
				<a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
				
			</div>
		</div>
	</div>
</div>-->

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>
		<header id="header">
		<div class="row">
			<img src="assets/img/logo1.png" alt="bootstrap sexy shop">
			<!--<h2><div class="span4">
        <a class="logo" href="index.html">Artifacts from Chattisgarh<span></span>
            <img src="assets/img/logo1.png" alt="bootstrap sexy shop">
	</a>
	</div>
        </h2>-->
		</div>
		</header>

		<!--
Navigation Bar Section 
-->
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a data-target=".nav-collapse" data-toggle="collapse"
						class="btn btn-navbar"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<div class="nav-collapse">
						<ul class="nav">
							<li class=""><a href="index.jsp">Home </a></li>
							<li class=""><a href="products.jsp">Products</a></li>
							<li><a href="contact.jsp">Contact us</a></li>
							<li class="active"><a href="about_us.jsp">About Us</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 
Body Section 
-->
		<hr class="soften">
		<div>
			<h1>About us</h1>
		</div>
		<hr class="soften">
		<div class="row">
			<%@ page import="java.io.File"%>
			<%@ page import="java.util.List"%>
			<%@ page import="java.util.ArrayList"%>

			<%!List imageUrlList;
				File imageDir;%>
			<%
				imageUrlList = new ArrayList();
				imageDir= new File("/assets/img/");
				File[] list = imageDir.listFiles();
				for(int i = 0 ; i <= list.length ; i++){
					String imageFileName = list[i].getName();
					// add this images name to the list we are building up
					imageUrlList.add(imageFileName);
				}
				request.setAttribute("imageUrlList", imageUrlList);
			%>
			<c:forEach var="img" items="${imageUrlList}">
				<img>
			</c:forEach>
		</div>
		<!-- 
Clients 
-->
		<section class="our_client">
		<hr class="soften" />
		<h4 class="title cntr">
			<span class="text">Manufactures from Chattisgarh</span>
		</h4>
		</section>

		<!--
Footer
-->
		<footer class="footer"> </footer>
	</div>
	<!-- /container -->

	<div class="copyright">
		<div class="container">
			<span>Copyright &copy;2018<br>-Artifacts From
				Chattisgarh, All rights reaserved
			</span>
		</div>
	</div>
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="assets/js/shop.js"></script>
</body>
</html>



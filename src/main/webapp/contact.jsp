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

<script type="text/javascript">
	function check() {
		if (document.f1.subject.value == "") {
			alert("Please select subject!");
			return false;
		} else if (document.f1.subject.value == "") {
			alert("Please select subject!");
			return false;
		} else if (document.f1.message.value == "") {
			alert("Please enter message!");
			return false;
		}
	}
	
	<%-- function openImageSelector(imgId,imgSrc) {

		var test='<portlet:renderURL windowState="<%= LiferayWindowState.POP_UP.toString() %>"><portlet:param name="jspPage" value="/select_image.jsp" /><portlet:param name="imageSrc" value='imageSource' /><portlet:param name="imageId" value='imgId'/></portlet:renderURL>';

		var imageWindow = window.open(test, 'structure', 'directories=no,height=640,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no,width=680');
		imageWindow.focus();
		} --%>
	function openWindow()
	{

	win = window.open("http://localhost:8008/gallery.jsp","mywindow","scroll=1,status=1,menubar=1,resizable=1,width=750,height=850");

	} 
</script>
</head>
<body>
	<!--
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				
				<a href="index.html"> <span class="icon-home"></span> Home</a>
				<a href="products.html "><span class="icon-shopping-cart"></span> Products </a> 
				<a class="active" href="contact.html"><span class="icon-envelope"></span> Contact us</a>
			</div>
		</div>
	</div>
</div>
-->

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
							<li class="active"><a href="contact.jsp">Contact us</a></li>
							<li class=""><a href="about_us.jsp">About Us</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 
Body Section 
-->
		<hr class="soften">
		<div class="well well-small">
			<h1>Visit us</h1>
			<hr class="soften" />
			<div class="row-fluid">
				<div class="span8 relative">
					<iframe style="width: 100%; height: 350px" frameborder="0"
						scrolling="no" marginheight="0" marginwidth="0"
						src="https://www.google.com/maps/search/Lane+no+10,+Ashtyvinayk+Colony,+Karve+Nagar,+Pune+-+411052/@18.4911652,73.8177224,17z/data=!3m1!4b1"></iframe>

					<div class="absoluteBlk">
						<div class="well wellsmall">
							<h4>Contact Details</h4>
							<h5>
								Shubham Gawande ,<br> Address : Lane no 10,<br>
								Ashtyvinayk Colony,<br> Karve Nagar,<br> Pune - 411052
								<br>
								<br> Tel: 8421225381,7020529597
							</h5>
						</div>
					</div>
				</div>

				<div class="span4">
					<h4>Email Us</h4>
					<form class="form-horizontal" onsubmit="return check();"
						action="mailsend.jsp" name="f1">
						<fieldset>
							<div class="control-group">
								<input type="text" placeholder="name" name="name"
									class="input-xlarge" />
							</div>
							<div class="control-group">
								<input type="text" placeholder="email" name="email"
									class="input-xlarge" />
							</div>
							<div class="control-group">
								<input type="text" placeholder="subject" name="subject"
									class="input-xlarge" />
							</div>
							<div class="control-group">
								<textarea rows="3" id="textarea" name="message"
									class="input-xlarge"></textarea>
							</div>
							
							<button class="shopBtn" type="submit">Send email</button>
							<input type="reset" value="Clear" class="shopBtn">
						</fieldset>
					</form>
				</div>
			</div>
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
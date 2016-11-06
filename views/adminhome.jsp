
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html SYSTEM "about:legacy-compat">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">



<title>aegean</title>

<meta name="keywords" content="">

<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap and Font Awesome css -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Css animations  -->
<link href="<c:url value="/resources/css/animate.css"/>"
	rel="stylesheet">

<!-- Theme stylesheet, if possible do not edit this stylesheet -->
<link href="<c:url value="/resources/css/style.default.css"/>"
	rel="stylesheet" id="theme-stylesheet">

<!-- Custom stylesheet - for your changes -->
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">

<!-- Responsivity for older IE -->

<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


<!-- Favicon and apple touch icons-->
<link rel="shortcut icon"
	href="<c:url value="/resources/img/favicon.ico"/>" type="image/x-icon" />
<link rel="apple-touch-icon" href="img/apple-touch-icon.ico" />
<link rel="apple-touch-icon" sizes="57x57"
	href="<c:url value="/resources/img/apple-touch-icon-57x57.ico"/>" />
<link rel="apple-touch-icon" sizes="72x72"
	href="<c:url value="/resources/img/apple-touch-icon-72x72.ico"/>" />
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value="/resources/img/apple-touch-icon-76x76.ico"/>" />
<link rel="apple-touch-icon" sizes="114x114"
	href="<c:url value="/resources/img/apple-touch-icon-114x114.ico"/>" />
<link rel="apple-touch-icon" sizes="120x120"
	href="<c:url value="/resources/img/apple-touch-icon-120x120.ico"/>" />
<link rel="apple-touch-icon" sizes="144x144"
	href="<c:url value="/resources/img/apple-touch-icon-144x144.ico"/>" />
<link rel="apple-touch-icon" sizes="152x152"
	href="<c:url value="/resources/img/apple-touch-icon-152x152.ico"/>" />
<!-- owl carousel css -->

<link href="<c:url value="/resources/css/owl.carousel.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/owl.theme.css"/>"
	rel="stylesheet">
</head>

<body>
	<%@include file="/includes/header.jsp"%>
	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1>Services</h1>
				</div>

			</div>
		</div>
	</div>

	<div id="content">
		<div class="container">

			<section>

				<div class="row">
					<div class="col-md-12">
						<div class="heading">
							<h2>Our main services</h2>
						</div>

						<p class="lead">Welcome ${name}, you have multiple choices to
							login in to your accouct. Click on the option below to enjoy our
							services.</p>
					</div>
				</div>
				<c:if test="${isadmin==true}">
					<div class="row services">
						<div class="col-md-4">
							<div class="box-simple">
								<div class="icon">
									<i class="fa fa-desktop"></i>
								</div>
								<h3>
									<a href="admin">Login as an Administrator</a>
								</h3>
								<p>To manage the world of aegean.</p>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${issupplier==true}">
					<div class="row services">
						<div class="col-md-4">
							<div class="box-simple">
								<div class="icon">
									<i class="fa fa-globe"></i>
								</div>
								<h3>
									<a href="supplier">Login as a Supplier</a>
								</h3>
								<p>To manage your own products(add, remove or update your
									product).</p>
							</div>
						</div>
					</div>
				</c:if>




				<div class="col-md-4">
					<div class="box-simple">
						<div class="icon">
							<i class="fa fa-user"></i>
						</div>
						<h3>
							<a href="index">Login as an general User</a>
						</h3>
						<p>To explore and purchase from Aegean.</p>
					</div>
				</div>
		</div>
		\

		</section>

		<section>

			<div class="row">
				<div class="col-md-12">
					<div class="heading">
						<h2>Why choose us</h2>
					</div>

					<p class="lead">We are one of the most leading online stores.
						All products and services here in Aegean are reliable and are
						trustworthy. Feel free to share your ideas and opinions with us on
						contact us section.</p>

				</div>

			</div>
			<!-- /.row -->

		</section>
	</div>
	</div>
	<!-- *** FOOTER ***
_________________________________________________________ -->
	<%@include file="/includes/footer.jsp"%>

	<!-- /#all -->

	<!-- #### JAVASCRIPT FILES ### -->

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/jquery-1.11.0.min.js"><\/script>')
	</script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script src="<c:url value="/resources/js/jquery.cookie.js"/>"></script>
	<script src="<c:url value="/resources/js/waypoints.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.counterup.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.parallax-1.1.3.js"/>"></script>
	<script src="<c:url value="/resources/js/front.js"/>"></script>



	<!-- owl carousel -->
	<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>



</body>

</html>
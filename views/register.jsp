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



<title>register</title>

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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


</head>
<body>
	<%@include file="/includes/header.jsp"%>
	<c:choose>
		<c:when test="${invaliduser==true}">
			<h3>${msg}</h3>
		</c:when>
	</c:choose>
	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1>New account / Sign in</h1>
				</div>
				<div class="col-md-5">
					<ul class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li>New account / Sign in</li>
					</ul>

				</div>
			</div>
		</div>
	</div>

	<div id="content">
		<div class="container">

			<div class="row">
				<div class="col-md-6">
					<div class="box">
						<h2 class="text-uppercase">New account</h2>

						<p class="lead">Not our registered customer yet?</p>
						<p>With registration with us new world of fashion, fantastic
							discounts and much more opens to you! The whole process will not
							take you more than a minute!</p>
						<p class="text-muted">
							If you have any questions, please feel free to <a
								href="contact.html">contact us</a>, our customer service center
							is working for you 24/7.
						</p>

						<hr>

						<form action="submituserdetails" method="post">
							<div class="form-group">
								<label for="name-login">Name</label> <input type="text"
									class="form-control" name="username">
							</div>
							<div class="form-group">
								<label for="email-login">Email</label> <input type="text"
									class="form-control" name="email">
							</div>
							<div class="form-group">
								<label for="password-login">Password</label> <input
									type="password" class="form-control" name="password">
							</div>
							<div class="form-group">
								<label for="mobile-login">Mobile</label> <input type="text"
									class="form-control" name="mobilenumber">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-template-main">
									<i class="fa fa-user-md"></i> Register
								</button>
							</div>
						</form>
					</div>
				</div>

				<div class="col-md-6">
					<div class="box">
						<h2 class="text-uppercase">Login</h2>

						<p class="lead">Already our customer?</p>
						<p class="text-muted">Pellentesque habitant morbi tristique
							senectus et netus et malesuada fames ac turpis egestas.
							Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit
							amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
							ultricies mi vitae est. Mauris placerat eleifend leo.</p>

						<hr>

						<form action="login" method="post">
							<div class="form-group">
								<label for="email">Email</label> <input type="text"
									class="form-control" id="email" name="email">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-template-main">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</div>
						</form>
					</div>
				</div>

			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
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
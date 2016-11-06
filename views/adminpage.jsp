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
					<h1>Administrator Section</h1>
				</div>

			</div>
		</div>
	</div>
	<div
		class="bar background-dark-gray padding-horizontal margin-vertical">
		<a href="managecategory"
			class="btn btn-lg btn-template-transparent-black" role="button">Manage
			Categories</a><br /> <br /> <a href="managesupplier"
			class="btn btn-lg btn-template-transparent-black" role="button">Manage
			Suppliers</a><br /> <br /> <a href="manageuser"
			class="btn btn-lg btn-template-transparent-black" role="button">Manage
			Users</a><br /> <br /> <a href="manageadmin"
			class="btn btn-lg btn-template-transparent-black" role="button">Make
			someone Admin</a><br /> <br />

	</div>
	<%@include file="/includes/footer.jsp"%>
</body>
</html>
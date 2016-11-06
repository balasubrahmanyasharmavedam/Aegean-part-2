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
				<div class="col-md-6">
					<h1>All Products</h1>
				</div>
				<div class="col-md-6">
					<ul class="breadcrumb">
						<li><a href="index">Home</a></li>
						<li>All Products</li>
					</ul>

				</div>
			</div>
		</div>
	</div>

	<div id="content">
		<div class="container">
			<div class="row">
				<!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

				<div class="col-md-9" id="blog-listing-medium">
					<c:if test="${!empty productList}">
						<c:forEach items="${productList}" var="product">
							<section class="post">
								<div class="row">
									<div class="col-md-4">
										<div class="image">
											<a href="blog-post.html"> <img src="img/blog-medium.jpg"
												class="img-responsive" alt="Product Img">
											</a>
										</div>
									</div>
									<div class="col-md-8">
										<h2>
											<a href="product/${product.id}">${product.name}</a>
										</h2>
										<div class="clearfix">
											<p class="author-category">
												By <a href="#">${product.supplier.name}</a> in <a
													href="blog.html">${product.category.name}</a>
											</p>

										</div>
										<p class="intro">${product.description}</p>
										<p class="read-more">
											<a href="product/${product.id}" class="btn btn-template-main">show
												details</a>
										</p>
									</div>
								</div>
							</section>
						</c:forEach>
					</c:if>



					<ul class="pager">
						<li class="previous"><a href="#">&larr; Older</a></li>
						<li class="next disabled"><a href="#">Newer &rarr;</a></li>
					</ul>



				</div>
				<!-- /.col-md-9 -->

				<!-- *** LEFT COLUMN END *** -->

				<!-- *** RIGHT COLUMN ***
			 _________________________________________________________ -->

				<div class="col-md-3">

					<!-- *** MENUS AND WIDGETS ***
 _________________________________________________________ -->
					<div class="panel panel-default sidebar-menu">

						<div class="panel-heading">
							<h3 class="panel-title">Aegean Genuine</h3>
						</div>

						<div class="panel-body text-widget">
							<p>Our products are genuine and are trusted. Feel free to
								return the item with which you are not satisfied with.</p>

						</div>
					</div>



					<div class="panel panel-default sidebar-menu">

						<div class="panel-heading">
							<h3 class="panel-title">Categories</h3>
						</div>

						<div class="panel-body">
							<ul class="nav nav-pills nav-stacked">
								<li><a href="blog.html">Electronics</a></li>
								<li><a href="blog.html">Automobiles</a></li>
								<li><a href="blog.html">Home and Kitchen</a></li>
								<li class="active"><a href="blog.html">All Categories</a></li>
							</ul>
						</div>
					</div>



					<!-- *** MENUS AND FILTERS END *** -->

				</div>
				<!-- /.col-md-3 -->

				<!-- *** RIGHT COLUMN END *** -->

			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /#content -->
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
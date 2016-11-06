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
					<h1>${product.name}</h1>
				</div>
				<div class="col-md-5">
					<ul class="breadcrumb">
						<li><a href="<c:url value="home"/>">Home</a></li>
						<li><a href="categories">categories</a></li>
						<li><a href="products">products</a></li>
						<li>${product.name}</li>
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

				<div class="col-md-9">

					<p class="lead">Free delivery for on orders above rupees 499.
						Fast home delivery available on selected products and cities.
						*Terms and conditions apply.</p>
					<p class="goToDescription">
						<a href="#details" class="scroll-to text-uppercase">Scroll to
							product details, specifictaions and discription.</a>
					</p>

					<div class="row" id="productMain">
						<div class="col-sm-6">
							<div id="mainImage">
								<img src="img/detailbig1.jpg" alt="" class="img-responsive">
							</div>

							<div class="ribbon sale">
								<div class="theribbon">SALE</div>
								<div class="ribbon-background"></div>
							</div>
							<!-- /.ribbon -->

							<div class="ribbon new">
								<div class="theribbon">NEW</div>
								<div class="ribbon-background"></div>
							</div>
							<!-- /.ribbon -->

						</div>
						<div class="col-sm-6">
							<div class="box">

								<form>


									<p class="price">Rs ${product.price}</p>

									<p class="text-center">
										<button type="submit" class="btn btn-template-main">
											<i class="fa fa-shopping-cart"></i> Add to cart
										</button>
										<button type="submit" class="btn btn-default"
											data-toggle="tooltip" data-placement="top"
											title="Add to wishlist">
											<i class="fa fa-heart-o"></i>
										</button>
									</p>

								</form>
							</div>

							<div class="row" id="thumbs">
								<div class="col-xs-4">
									<a href="img/detailbig1.jpg" class="thumb"> <img
										src="img/detailsquare.jpg" alt="" class="img-responsive">
									</a>
								</div>
								<div class="col-xs-4">
									<a href="img/detailbig2.jpg" class="thumb"> <img
										src="img/detailsquare2.jpg" alt="" class="img-responsive">
									</a>
								</div>
								<div class="col-xs-4">
									<a href="img/detailbig3.jpg" class="thumb"> <img
										src="img/detailsquare3.jpg" alt="" class="img-responsive">
									</a>
								</div>
							</div>
						</div>

					</div>


					<div class="box" id="details">
						<p>
						<h4>Product Description</h4>
						<p>${product.description}</p>
						<h4>Product Specifications</h4>
						<ul>
							<li>${product.specs}</li>

						</ul>
						<h4>Product Details</h4>
						<ul>
							<li>${product.details}</li>

						</ul>

						<blockquote>
							<p>
								<em>The products sold on aegean are brand new and are sold
									by geniune verified suppliers. Delivery ETA differs according
									to the location of suppliers and place to deliver.</em>
							</p>
						</blockquote>
					</div>

					<div class="box social" id="product-social">
						<h4>Follow Aegean on Socialmedia</h4>
						<p>
							<a href="https://www.facebook.com/" class="external facebook"
								data-animate-hover="pulse"><i class="fa fa-facebook"></i></a> <a
								href="https://plus.google.com/" class="external gplus"
								data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
							<a href="https://www.twitter.com/" class="external twitter"
								data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>

						</p>
					</div>



					<!-- *** LEFT COLUMN END *** -->

					<!-- *** RIGHT COLUMN ***
		  _________________________________________________________ -->

					<div class="col-sm-3">

						<!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
						<div class="panel panel-default sidebar-menu">

							<div class="panel-heading">
								<h3 class="panel-title">Categories</h3>
							</div>

							<div class="panel-body">
								<ul class="nav nav-pills nav-stacked category-menu">
									<li><c:if test="${!empty categoryList}">
											<c:forEach items="${categoryList}" var="category">
												<ul>
													<li><a
														href="<c:url value='category/${category.id}' />">${category.name}</a></li>

												</ul>
											</c:forEach>
										</c:if></li>
								</ul>

							</div>



							<!-- *** MENUS AND FILTERS END *** -->


							<!-- /.banner -->
						</div>
						<!-- /.col-md-3 -->

						<!-- *** RIGHT COLUMN END *** -->

					</div>
					<!-- /.row -->

				</div>
				<!-- /.container -->
			</div>
		</div>
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
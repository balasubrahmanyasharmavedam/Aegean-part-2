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
	<c:if test="${loggedout==true}">
	 
	<div class="alert alert-success alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
		</button>
		${logoutmsg}
	</div>
	
	</c:if>
	<section>
		<!-- *** HOMEPAGE CAROUSEL ***
 _________________________________________________________ -->

		<div class="home-carousel">

			<div class="dark-mask"></div>

			<div class="container">
				<div class="homepage owl-carousel">
					<div class="item">
						<div class="row">
							<div class="col-sm-5 right">
								<p>
									<img src="<c:url value="/resources/img/logo.png"/>" alt="" />
								</p>
								<h1>Sony Xperia Z3</h1>
								<p>
									Dont settle for good <br />Demand Great <br />explore Xperia
									Z3 in products section.
								</p>
							</div>
							<div class="col-sm-7">
								<img class="img-responsive"
									src="<c:url value="/resources/img/template-homepage.png"/>"
									alt="" />
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">

							<div class="col-sm-7 text-center">
								<img class="img-responsive"
									src="<c:url value="/resources/img/template-mac.png"/>" alt="" />
							</div>

							<div class="col-sm-5">
								<h2>LG Dual Washing Machine</h2>
								<ul class="list-style-none">
									<li>combines both front load and top load</li>
									<li>4 Embedded with innovative new LG technologies.</li>
									<li>Explore LG from products section</li>

								</ul>
							</div>

						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-sm-5 right">
								<h1>SONY X935D</h1>
								<ul class="list-style-none">
									<li>Spectacular 4K HDR picture and sound clarity</li>
									<li>The most immersive 4K HDR pictures.</li>
									<li>The most authentic High-Resolution Audio</li>
									<li>Explore Sony X935D from products section</li>
								</ul>
							</div>
							<div class="col-sm-7">
								<img class="img-responsive"
									src="<c:url value="/resources/img/template-easy-customize.png"/>"
									alt="" />
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-sm-7">
								<img class="img-responsive"
									src="<c:url value="/resources/img/template-easy-code.png"/>"
									alt="" />
							</div>
							<div class="col-sm-5">
								<h1>Apple Iphone 7 series</h1>
								<ul class="list-style-none">
									<li>Coming soon</li>
									<li>SignUp for Aegean for more updates</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- /.project owl-slider -->
			</div>
		</div>

		<!-- *** HOMEPAGE CAROUSEL END *** -->
	</section>

	<section class="bar background-white no-mb">
		<div class="container" data-animate="fadeInUp">
			<div class="row">
				<div class="col-md-12">

					<div class="heading text-center">
						<h2>Featured products</h2>
					</div>

					<div class="row">
						<div class="portfolio-showcase clearfix">
							<div class="col-sm-6">
								<div class="image">
									<img src="<c:url value="/resources/img/portfolio-4.jpg"/>"
										alt="" class="img-responsive" />
								</div>
							</div>

							<div class="col-sm-6">
								<h3>
									<a
										href="http://www.sonymobile.com/global-en/products/phones/xperia-z3/">Sony
										Xperia Z3</a>
								</h3>
								<p class="lead">Do more than you thought possible.</p>
								<p>Impossibly slim and wonderfully powerful, the Xperia Z3
									is the smartphone that helps you do more and go further.</p>
								<p class="buttons">
									<a href="products" class="btn btn-template-main">View</a> <a
										href="http://www.sonymobile.com/global-en/products/phones/xperia-z3/"
										class="btn btn-template-main">Visit website</a>
								</p>
							</div>
						</div>
					</div>

					<div class="heading text-center">
						<h3>Latest from Aegean</h3>
					</div>

					<div class="row portfolio no-space">
						<div class="col-sm-4">
							<div class="box-image">
								<div class="image">
									<img src="<c:url value="/resources/img/portfolio-1.jpg"/>"
										alt="" class="img-responsive" />
								</div>
								<div class="bg"></div>
								<div class="name">
									<h3>
										<a href="products">Samsung Galaxy Note7</a>
									</h3>
								</div>
								<div class="text">
									<p class="hidden-sm">Pre-order note7 and get Gear VR for
										just RS 1,990/-</p>
									<p class="buttons">
										<a href="products"
											class="btn btn-template-transparent-primary">View</a> <a
											href="http://www.samsung.com/global/galaxy/galaxy-note7/"
											class="btn btn-template-transparent-primary">Website</a>
									</p>
								</div>
							</div>
							<!-- /.box-image -->

						</div>

						<div class="col-sm-4">
							<div class="box-image">
								<div class="image">
									<img src="<c:url value="/resources/img/portfolio-2.jpg"/>"
										alt="" class="img-responsive" />
								</div>
								<div class="bg"></div>
								<div class="name">
									<h3>
										<a href="products">Mens Collection</a>
									</h3>
								</div>
								<div class="text">
									<p class="hidden-sm">Change your wardrobe with this fresh
										collections from Aegean</p>
									<p class="buttons">
										<a href="products"
											class="btn btn-template-transparent-primary">View</a> <a
											href="products" class="btn btn-template-transparent-primary">Website</a>
									</p>
								</div>
							</div>
							<!-- /.box-image -->

						</div>

						<div class="col-sm-4">
							<div class="box-image">
								<div class="image">
									<img src="<c:url value="/resources/img/portfolio-3.jpg"/>"
										alt="" class="img-responsive" />
								</div>
								<div class="bg"></div>
								<div class="name">
									<h3>
										<a href="products">Sony X935D</a>
									</h3>
								</div>
								<div class="text">
									<p class="hidden-sm">The most immersive 4K HDR pictures.
										The most authentic High-Resolution Audio.</p>
									<p class="buttons">
										<a href="products"
											class="btn btn-template-transparent-primary">View</a> <a
											href="http://www.sony.co.in/electronics/televisions/x9350d-series"
											class="btn btn-template-transparent-primary">Website</a>
									</p>
								</div>
							</div>
							<!-- /.box-image -->

						</div>

						<div class="col-sm-4">
							<div class="box-image">
								<div class="image">
									<img src="<c:url value="/resources/img/portfolio-4.jpg"/>"
										alt="" class="img-responsive" />
								</div>
								<div class="bg"></div>
								<div class="name">
									<h3>
										<a href="products">Sony Xperia Z3</a>
									</h3>
								</div>
								<div class="text">
									<p class="hidden-sm">Dont settle for good.Demand great.</p>
									<p class="buttons">
										<a href="products"
											class="btn btn-template-transparent-primary">View</a> <a
											href="http://www.sonymobile.com/global-en/products/phones/xperia-z3/"
											class="btn btn-template-transparent-primary">Website</a>
									</p>
								</div>
							</div>
							<!-- /.box-image -->
						</div>

						<div class="col-sm-4">
							<div class="box-image">
								<div class="image">
									<img src="<c:url value="/resources/img/portfolio-5.jpg"/>"
										alt="" class="img-responsive" />
								</div>
								<div class="bg"></div>
								<div class="name">
									<h3>
										<a href="products">LG Side kick</a>
									</h3>
								</div>
								<div class="text">
									<p class="hidden-sm">LG's new innovation brings both front
										and top load together.</p>
									<p class="buttons">
										<a href="products"
											class="btn btn-template-transparent-primary">View</a> <a
											href="http://www.lg.com/us/twinwash"
											class="btn btn-template-transparent-primary">Website</a>
									</p>
								</div>
							</div>
							<!-- /.box-image -->
						</div>

						<div class="col-sm-4">
							<div class="box-image">
								<div class="image">
									<img src="<c:url value="/resources/img/portfolio-6.jpg"/>"
										alt="" class="img-responsive" />
								</div>
								<div class="bg"></div>
								<div class="name">
									<h3>
										<a href="products">Sony Alpha a7R II</a>
									</h3>
								</div>
								<div class="text">
									<p class="hidden-sm">The worlds first 35 mm full-frame
										image sensor with back-illuminated structure.</p>
									<p class="buttons">
										<a href="products"
											class="btn btn-template-transparent-primary">View</a> <a
											href="http://www.sony.com/electronics/interchangeable-lens-cameras/ilce-7rm2"
											class="btn btn-template-transparent-primary">Website</a>
									</p>
								</div>
							</div>
							<!-- /.box-image -->
						</div>



						<div class="see-more">
							<a href="products" class="btn btn-template-main">view all
								products</a>
						</div>

					</div>

				</div>
			</div>
	</section>


	<!-- /.bar -->

	<!-- *** BLOG HOMEPAGE END *** -->




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
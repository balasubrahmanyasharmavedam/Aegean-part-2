<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html SYSTEM "about:legacy-compat">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<div id="all">

	<header>
		<!-- *** TOP ***
_________________________________________________________ -->
		<div id="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-5 contact">
						<p class="hidden-sm hidden-xs">Contact us on 040 6646 9292 or
							www.niit.com</p>
						<p class="hidden-md hidden-lg">
							<a href="#" data-animate-hover="pulse"><i class="fa fa-phone"></i></a>
							<a href="#" data-animate-hover="pulse"><i
								class="fa fa-envelope"></i></a>
						</p>
					</div>
					<div class="col-xs-7">
						<div class="social">
							<a href="https://www.facebook.com/login/"
								class="external facebook" data-animate-hover="pulse"><i
								class="fa fa-facebook"></i></a> <a href="https://plus.google.com/"
								class="external gplus" data-animate-hover="pulse"><i
								class="fa fa-google-plus"></i></a> <a href="https://www.twitter.com"
								class="external twitter" data-animate-hover="pulse"><i
								class="fa fa-twitter"></i></a> <a href="https://www.gmail.com"
								class="email" data-animate-hover="pulse"><i
								class="fa fa-envelope"></i></a>
						</div>


						<c:if test="${loggedin!= true}">
							<div class="login">
								<a href="#" data-toggle="modal" data-target="#login-modal">
									<i class="fa fa-sign-in"></i> <span
									class="hidden-xs text-uppercase">Sign in</span>
								</a> <a href="<c:url value="register"/>"><i class="fa fa-user"></i>
									<span class="hidden-xs text-uppercase">Sign up</span></a>
							</div>
						</c:if>
						<c:if test="${loggedin==true}">
							<a href="<c:url value="logout"/>"><i class="fa fa-sign-out"></i>
								<span class="hidden-xs text-uppercase">logout</span></a>
						</c:if>

					</div>
				</div>
			</div>
		</div>
</div>

<!-- *** TOP END *** -->
<!-- *** NAVBAR ***
    _________________________________________________________ -->

<div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

	<div class="navbar navbar-default yamm" role="navigation" id="navbar">

		<div class="container">
			<div class="navbar-header">

				<a class="navbar-brand home" href="index"> <img
					src="<c:url value="/resources/img/logo.png"/>" alt="Universal logo"
					class="hidden-xs hidden-sm"> <img
					src="<c:url value="/resources/img/logo-small.png"/>"
					alt="Universal logo" class="visible-xs visible-sm"><span
					class="sr-only">aegean - go to homepage</span>
				</a>
				<div class="navbar-buttons">
					<button type="button" class="navbar-toggle btn-template-main"
						data-toggle="collapse" data-target="#navigation">
						<span class="sr-only">Toggle navigation</span> <i
							class="fa fa-align-justify"></i>
					</button>
				</div>
			</div>
			<!--/.navbar-header -->

			<div class="navbar-collapse collapse" id="navigation">

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown active"><a href="javascript: void(0)"
						class="dropdown-toggle" data-toggle="dropdown">Home <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="index"/>">AegeanHome</a></li>
							<li><a href="<c:url value="about"/>">AboutUs</a></li>

						</ul></li>


					<!-- ========== FULL WIDTH MEGAMENU ================== -->
					<li class="dropdown use-yamm yamm-fw"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200">Categories<b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<div class="yamm-content">
									<div class="row">
										<div class="col-sm-3">
											<h5>Categories</h5>
											<c:if test="${!empty categoryList}">
												<c:forEach items="${categoryList}" var="category">
													<ul>
														<li><a
															href="<c:url value='category/${category.id}' />">${category.name}</a></li>

													</ul>
												</c:forEach>
											</c:if>
											<div class="col-sm-3">
												<h5>
													<a href="<c:url value="products"/>">All products</a>
												</h5>
											</div>
										</div>
									</div>
									<!-- /.yamm-content -->
							</li>
						</ul></li>
					<!-- ========== FULL WIDTH MEGAMENU END ================== -->

					<li class="dropdown"><a href="javascript: void(0)"
						class="dropdown-toggle" data-toggle="dropdown">Contact Us<b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="contact"/>">Contact Us</a></li>


						</ul></li>
					<c:choose>
						<c:when test="${loggedin==true}">
							<li class="dropdown"><a href="javascript: void(0)"
								class="dropdown-toggle" data-toggle="dropdown">${user1.email}<b
									class="caret"></b>
							</a> <c:choose>
									<c:when test="${isuser==true}">
										<ul class="dropdown-menu">
											<li><a href="<c:url value="contact"/>">your orders</a></li>
											<li><a href="<c:url value="contact"/>">your profile</a></li>
										</ul>
									</c:when>
								</c:choose></li>

						</c:when>
					</c:choose>
			</div>
			<!--/.nav-collapse -->



			<div class="collapse clearfix" id="search">

				<form class="navbar-form" role="search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-btn">

							<button type="submit" class="btn btn-template-main">
								<i class="fa fa-search"></i>
							</button>

						</span>
					</div>
				</form>

			</div>
			<!--/.nav-collapse -->

		</div>


	</div>
	<!-- /#navbar -->

</div>

<!-- *** NAVBAR END *** -->
</header>

<!-- *** LOGIN MODAL ***
_________________________________________________________ -->

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
	aria-labelledby="Login" aria-hidden="true">
	<div class="modal-dialog modal-sm">

		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="Login">Customer login</h4>
			</div>
			<div class="modal-body">
				<form action="login" method="post">
					<div class="form-group">
						<input type="text" class="form-control" id="email_modal"
							name="email" placeholder="username">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="password_modal"
							name="password" placeholder="password">
					</div>

					<p class="text-center">
						<button class="btn btn-template-main">
							<i class="fa fa-sign-in"></i> Log in
						</button>
					</p>

				</form>

				<p class="text-center text-muted">Not registered yet?</p>
				<p class="text-center text-muted">
					<a href="<c:url value="register"/>"><strong>Register
							now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to
					special discounts and much more!
				</p>

			</div>
		</div>
	</div>
</div>


<!-- *** LOGIN MODAL END *** -->

</html>

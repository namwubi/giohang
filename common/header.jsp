<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +84
								08828480129</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i>
								namttps24025@fpt.edu.vn</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> GoVap
								HoChiMinh </a></li>
					</ul>
					<div class="header-links pull-right">
					
						<c:if test="${not empty user}">
                            	<li><a href="">${user.fullname}</a></li>
                            	<li><a href="/account/logout">Logout</a></li>
                            </c:if>
                            <c:if test="${user.admin}">
                            	<li><a href="/admin/product">Admin</a></li>
                            </c:if>
                            <c:if test="${empty user}">
                            	<li><a href="/sign-in"><i class="fa fa-user-o"></i> My Account</a></li>
                            </c:if>
						
					</div>
					
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo"> <img src="./img/logo.png" alt="">
								</a>
							</div>
						</div>
						<!-- /LOGO -->


						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<select class="input-select">
										<option value="0">All Categories</option>
										<option value="1">Category 01</option>
										<option value="1">Category 02</option>
									</select> <input class="input" placeholder="Search here">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="#"> <i class="fa fa-heart-o"></i> <span>Your
											Wishlist</span>
										<div class="qty">2</div>
									</a>
								</div>
								<div>
									<a href="/shop/cart"> <i class="fa fa-heart-o"></i> <span>Your Cart</span>
										<div class="qty">5</div>
									</a>
								</div>
								
								<!-- /Wishlist -->

								<!-- Cart -->
						<div class="dropdown">
									
									
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment</title>
	<!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap.min.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/font-awesome.min.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/elegant-icons.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/magnific-popup.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/nice-select.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/owl.carousel.min.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/slicknav.min.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/css/style.css" />" type="text/css">


  
<style type="text/css">
#breadcrumb {
  padding: 30px 0px;
  background: #FBFBFC;
  border-bottom: 1px solid #E4E7ED;
  margin-bottom: 30px;
}

#breadcrumb .breadcrumb-header {
  display: inline-block;
  margin-top: 0px;
  margin-bottom: 0px;
  margin-right: 15px;
  text-transform: uppercase;
}

#breadcrumb .breadcrumb-tree {
  display: inline-block;
}

#breadcrumb .breadcrumb-tree li {
  display: inline-block;
  font-size: 12px;
  font-weight: 500;
  text-transform: uppercase;
}

#breadcrumb .breadcrumb-tree li+li {
  margin-left: 10px;
}

#breadcrumb .breadcrumb-tree li+li:before {
  content: '/';
  display: inline-block;
  color: #8D99AE;
  margin-right: 10px;
}

#breadcrumb .breadcrumb-tree li a {
  color: #8D99AE;
}

#breadcrumb .breadcrumb-tree li a:hover {
  color: #D10024;
}

#top-header {
  padding-top: 10px;
  padding-bottom: 10px;
  background-color: #1E1F29;
}

.header-links li {
  display: inline-block;
  margin-right: 15px;
  font-size: 12px;
}

.header-links li:last-child {
  margin-right: 0px;
}

.header-links li a {
  color: #FFF;
}

.header-links li a:hover {
  color: #D10024;
}

.header-links li i {
  color: #D10024;
  margin-right: 5px;
}

/*----------------------------*\
	Logo
\*----------------------------*/

#header {
  padding-top: 15px;
  padding-bottom: 15px;
  background-color: #15161D;
}

.header-logo {
  float: left;
}

.header-logo .logo img {
  display: block;
}

/*----------------------------*\
	Search
\*----------------------------*/

.header-search {
  padding: 15px 0px;
}

.header-search form {
  position: relative;
}

.header-search form .input-select {
  margin-right: -4px;
  border-radius: 40px 0px 0px 40px;
}

.header-search form .input {
  width: calc(100% - 260px);
  margin-right: -4px;
}

.header-search form .search-btn {
  height: 40px;
  width: 100px;
  background: #D10024;
  color: #FFF;
  font-weight: 700;
  border: none;
  border-radius: 0px 40px 40px 0px;
}

/*----------------------------*\
	Cart
\*----------------------------*/

.header-ctn {
  float: right;
  padding: 15px 0px;
}

.header-ctn>div {
  display: inline-block;
}

.header-ctn>div+div {
  margin-left: 15px;
}

.header-ctn>div>a {
  display: block;
  position: relative;
  width: 90px;
  text-align: center;
  color: #FFF;
}

.header-ctn>div>a>i {
  display: block;
  font-size: 18px;
}

.header-ctn>div>a>span {
  font-size: 12px;
}

.header-ctn>div>a>.qty {
  position: absolute;
  right: 15px;
  top: -10px;
  width: 20px;
  height: 20px;
  line-height: 20px;
  text-align: center;
  border-radius: 50%;
  font-size: 10px;
  color: #FFF;
  background-color: #D10024;
}

.header-ctn .menu-toggle {
  display: none;
}
.input-select {
  padding: 0px 15px;
  background: #FFF;
  border: 1px solid #E4E7ED;
  height: 40px;
}
.input {
  height: 40px;
  padding: 0px 15px;
  border: 1px solid #E4E7ED;
  background-color: #FFF;
  width: 100%;
}

</style>
</head>
  
<body>
	<!-- Page Preloder -->
    <!--  <div id="preloder">
        <div class="loader"></div>
    </div>-->
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
                            	<li><a href="/">${user.fullname}</a></li>
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
								<a href="/shop/cart"> <i class="fa fa-shopping-cart"></i> <span>Your
											Your Cart</span>
										<div class="qty">3</div>
									</a></div>
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
		
			<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<ul class="breadcrumb-tree">
						<li><a href="/">Home</a></li>
						<li><a href="#">All Categories</a></li>
						<li><a href="#">Accessories</a></li>
						<li class="active">Headphones (227,490 Results)</li>
					</ul>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
    
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__search">
                            <form action="/shop" method="get">
                                <input type="text" name="name" value="${searchShop}" placeholder="Search...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                	<c:forEach items="${categories}" var="item">
                                                		<li><a href="/shop?category=${item.id}">${item.name}</a></li>
                                                	</c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">Filter Price</a>
                                    </div>
                                    <div id="collapseThree" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__price">
                                                <ul>
                                                    <li><a href="/shop?price=0">0.00 - 100.000</a></li>
                                                    <li><a href="/shop?price=1">100.000 - 200.000</a></li>
                                                    <li><a href="/shop?price=2">200.000+</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="shop__product__option">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__left">
                                    <p>Showing 1–12 of ${page.totalElements} results</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__right">
                                    <p>Sort by Price:</p>
                                    <select class="form-select border-0" id="sortSelect">
                                        <option value="true"><a href="/shop?sort=true">Low To High</a></option>
                                        <option value="false"><a href="/shop?sort=false">High To Low</a></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${products}" var="item">
                        	<div class="col-lg-4 col-md-6 col-sm-6">
	                            <div class="product__item">
	                                <div class="product__item__pic set-bg" onclick="detail(${item.key})" data-setbg="assets/img/product/${item.value[3][0]}">
	                                    <ul class="product__hover">
	                                        <li><a href="#"><img src="assets/img/icon/heart.png" alt=""></a></li>
	                                        <li><a href="#"><img src="assets/img/icon/compare.png" alt=""> <span>Compare</span></a>
	                                        </li>
	                                        <li><a href="#"><img src="assets/img/icon/search.png" alt=""></a></li>
	                                    </ul>
	                                </div>
	                                <div class="product__item__text">
	                                    <h6>${item.value[0]}</h6>
	                                    <div onclick="addToCartOne(${item.key})" class="add-cart">+ Add To Cart</div>
	                                    <div class="rating">
	                                        <i class="fa fa-star-o"></i>
	                                        <i class="fa fa-star-o"></i>
	                                        <i class="fa fa-star-o"></i>
	                                        <i class="fa fa-star-o"></i>
	                                        <i class="fa fa-star-o"></i>
	                                    </div>
	                                    <h5><fmt:formatNumber value="${item.value[1]}" pattern="#,###"/> &#8363;</h5>
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="div_page" class="product__pagination">
                            	
                            </div>
                        </div>
                    </div>
                    
                    <!--Page-->
                    <script type="text/javascript">
                    	if(${page.totalPages} > 1){
							for(var i=0;i<${page.totalPages};i++){
						        const box = document.getElementById('div_page');
								const el = document.createElement('a');
								if(i==${page.number}){
						        	el.classList.add('active');
								}
						        el.setAttribute('id', 'page'+i);
						        el.setAttribute('href', '?p='+i);
						        el.textContent = i+1;
						        box.appendChild(el);
							}
                        }
                    </script>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="assets/img/footer-logo.png" alt=""></a>
                        </div>
                        <p>The customer is at the heart of our unique business model, which includes design.</p>
                        <a href="#"><img src="assets/img/payment.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Shopping</h6>
                        <ul>
                            <li><a href="#">Clothing Store</a></li>
                            <li><a href="#">Trending Shoes</a></li>
                            <li><a href="#">Accessories</a></li>
                            <li><a href="#">Sale</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Shopping</h6>
                        <ul>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Payment Methods</a></li>
                            <li><a href="#">Delivary</a></li>
                            <li><a href="#">Return & Exchanges</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>NewLetter</h6>
                        <div class="footer__newslatter">
                            <p>Be the first to know about new arrivals, look books, sales & promos!</p>
                            <form action="#">
                                <input type="text" placeholder="Your email">
                                <button type="submit"><span class="icon_mail_alt"></span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>
                            All rights reserved | This template is made with <i class="fa fa-heart-o"
                            aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        </p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->
    
    <c:if test="${sortShop == true}">
    	<script type="text/javascript">
    		document.getElementById("sortSelect").value = true;
    	</script>
    </c:if>
    <c:if test="${sortShop == false}">
    	<script type="text/javascript">
    		document.getElementById("sortSelect").value = false;
    	</script>
    </c:if>
    
    <script type="text/javascript">
	    document.getElementById("sortSelect").addEventListener("change", function(){
	        location.assign("http://localhost:8080/shop?sort="+document.getElementById("sortSelect").value);
	    });

	    function detail(id) {
	    	location.assign("http://localhost:8080/shop/detail/"+id);
		}

	    async function addToCartOne(id) {
	    	if(${not empty user}){
	    	  const response = await fetch("http://localhost:8080/shop/cart/add?id="+id+"&qty=1");
			}
		    else {
	    	  location.assign("http://localhost:8080/sign-in");
			}
	    }
    </script>

    <!-- Js Plugins -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.nicescroll.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/jquery.slicknav.js"></script>
    <script src="assets/js/mixitup.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>
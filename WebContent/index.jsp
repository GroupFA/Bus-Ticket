<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="bootstrap/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<!------ Include the above in your HEAD tag ---------->
<title>Document</title>
<link rel="stylesheet" href="css/Cart.css">
</head>
<style>
section#body-content {
      margin-top: 45px;
}
.box-search table .btn-search {
    /* padding: 13px 44px 30px; */
    background: #e54443;
    color: #fff;
    font-size: 12px;
    text-decoration: none;
    text-transform: uppercase;
    border: 0;
    margin-right:-20px;}
.date{
width:280px
}
</style>
<body>
	<div id="sb-site">
		<div class="br-header">
			<div id="top-nav" class="hidden-xs">
				<div class="container">
					<ul class="clearfix">
						
						<li><a href="#"><i class="fa fa-truck" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-taxi" aria-hidden="true"></i></a></li>
						<li class="pull-right diff"><a
							href="${pageContext.request.contextPath}/AccountServlet"><span
								class="hidden-xs">Đăng nhập</span></a></li>
						<li class="pull-right"><a target="_blank"
							href="${pageContext.request.contextPath}/RegisterServlet">
								Đăng ký </a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="carousel">
			<div id="carousel-id" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carousel-id" data-slide-to="0" class=""></li>
					<li data-target="#carousel-id" data-slide-to="1" class=""></li>
					<li data-target="#carousel-id" data-slide-to="2" class="active"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item">
						<img class="images-carousel" src="images/6.jpg" alt="" srcset=""
							width="100%">
					</div>
					<div class="item">
						<img class="images-carousel" src="images/1.jpg" alt="" srcset=""
							width="100%">
					</div>
					<div class="item active">
						<img class="images-carousel" src="images/3.jpg" alt="" srcset=""
							width="100%">
					</div>
				</div>
			</div>
			<!--đóng carousel  -->
		</div>
		<!-- đóng col  -->
	</div>
	<div class="container">
		<div class="box-search">
			<form action="search" method="GET">
				<table width="100%" cellspacing="0" class="table-search">
					<tbody>
						<tr>
							<td><select class="form-control col-sm-12">
									<option value="Điểm đi" selected>Điểm đi</option>
									<option>Sài gòn</option>
							</select></td>
							<td><select class="form-control col-sm-12">
									<option value="Điểm đến" selected>Điểm đến</option>
									<option>Cà Mau</option>
							</select></td>
							<td class="date"><input class="form-control col-sm-12" type="date" >
							</td>
							<td><input type="submit" class="btn-search" value="Tìm vé"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	<section class="page-section cta">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 mx-auto">
					<div class="cta-inner text-center rounded">
						<section id="body-content">
							<div class="container">
								<div class="row">
									<h3 class="text-primary text-uppercase">Các tuyến đường
										phổ biến</h3>
									<div class="section-list" id="Star-sai-gon">
										<h3 class="text-uppercase text-success">
											<span class="sprite ico-drive"></span> Sài Gòn <i
												class="fa fa-exchange"></i>
										</h3>
										<div class="table-responsive">
											<table class="table ">
												<thead>
													<tr class="bg-light-green">
														<th>Mã tuyến</th>
														<th>Bến đi</th>
														<th>Bến đến</th>
														<th>Loại xe</th>
														<th>Quãng đường</th>
														<th>Thời gian</th>
														<th>Số chuyến</th>
														<th>Giá vé</th>
														<th>Giờ chạy</th>
														<th></th>
													</tr>
												</thead>
												<tbody>
													<tr class="route-row1375">
														<td>1</td>
														<td>Sài Gòn</td>
														<td>Đà Lạt</td>
														<td>Giường</td>
														<td>320 km</td>
														<td>08h00</td>
														<td>37 chuyến/ngày</td>
														<td>
															<p>
																<strong class="text-primary"> 240,000<sup>đ/vé</sup>
																</strong>
															</p>
														</td>
														<td></td>
														<td><a href="${pageContext.request.contextPath}/AccountServlet"
															class="btn br-btn-default btn-flat futa-book-ticket">
																<i
																class="fa fa-ticket icon-flat text-primary icon-bg-default"></i>Mua
																vé
														</a></td>
													</tr>
													<tr class="route-row1378">
														<td>2</td>
														<td>Sài Gòn</td>
														<td>Buôn Ma Thuột</td>
														<td>Giường</td>
														<td>435 km</td>
														<td>09h00</td>
														<td>5 chuyến/ngày</td>
														<td>
															<p>
																<strong class="text-primary"> 245,000<sup>đ/vé</sup>
																</strong>
															</p>
														</td>
														<td></td>
														<td><a href=""
															class="btn br-btn-default btn-flat futa-book-ticket">
																<i
																class="fa fa-ticket icon-flat text-primary icon-bg-default"></i>Mua
																vé
														</a></td>
													</tr>
													<tr class="route-row485">
														<td>3</td>
														<td>Sài Gòn</td>
														<td>Nha Trang</td>
														<td>Giường</td>
														<td>427 km</td>
														<td>12h00</td>
														<td>7 chuyến/ngày</td>
														<td>
															<p>
																<strong class="text-primary"> 225,000<sup>đ/vé</sup>
																</strong>
															</p>
														</td>
														<td></td>
														<td><a href="${pageContext.request.contextPath}/AccountServlet"
															class="btn br-btn-default btn-flat futa-book-ticket">
																<i
																class="fa fa-ticket icon-flat text-primary icon-bg-default"></i>Mua
																vé
														</a></td>
													</tr>
													<tr class="route-row827">
														<td>4</td>
														<td>Sài Gòn</td>
														<td>Phan Thiết</td>
														<td>Giường</td>
														<td>203 km</td>
														<td>06h00</td>
														<td>3 chuyến/ngày</td>
														<td>
															<p>
																<strong class="text-primary"> 140,000<sup>đ/vé</sup>
																</strong>
															</p>
														</td>
														<td></td>
														<td><a href="${pageContext.request.contextPath}/AccountServlet"
															class="btn br-btn-default btn-flat futa-book-ticket">
																<i
																class="fa fa-ticket icon-flat text-primary icon-bg-default"></i>Mua
																vé
														</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<script src="css/cart.js"></script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="model.AccountModel"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="Cart.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<!------ Include the above in your HEAD tag ---------->
<title>Document</title>
<link rel="stylesheet" href="css/Cart.css">
</head>

<body>


	<div id="sb-site">
		<div class="br-header">
			<div id="top-nav" class="hidden-xs">
				
					<div class="container">
						<ul class="clearfix">
							<li><a href="#"><i class="fa fa-bus" aria-hidden="true"></i>
									Trang chủ</a></li>
							<li><a href="#"><i class="fa fa-truck"
									aria-hidden="true"></i>Lịch trình xe chạy</a></li>
							<li><a href="#"><i class="fa fa-taxi" aria-hidden="true"></i>${userlogin.getFullName()}</a></li>
							<li class="pull-right diff"><a
								href="${pageContext.request.contextPath}/AccountServlet"><span
									class="hidden-xs">Hi, Custommer </span></a></li>
							<li class="pull-right"><a href="${pageContext.request.contextPath}/UpdateNdServlet?idUser=${userlogin.getIdUser()}">Cap nhat thong tin</a>
									 </a></li>
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
			<input type="hidden" class="currentDate" value="28/10/2019">
			<form action="search" method="GET">
				<input class="agencyType" type="hidden" name="agencyType" value="1">
				<table width="100%" cellspacing="0" class="table-search">
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="Điểm đi" autocomplete="off"></td>
							<td><input type="text" class="form-control"
								placeholder="Điểm đến" autocomplete="off"></td>
							<td><input type="text" class="form-control"
								placeholder="Ngày xuất bến"></td>
							<td><input type="text" class="form-control"
								placeholder="Giờ đi"></td>
							<td><input type="submit" class="btn-search" value="Tìm vé"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	<section id="body-content">
		<div class="container">
			<div class="row">
				<h3 class="text-primary text-uppercase">Các tuyến đường phổ
					biến</h3>
				<div class="section-list" id="Star-sai-gon">
					<h3 class="text-uppercase text-success">
						<span class="sprite ico-drive"></span> Sài Gòn <i
							class="fa fa-exchange"></i>
					</h3>
					<div class="table-responsive">
						<table class="table ">
							<thead>
								<tr class="text-white bg-light-green">
									<th>STT</th>
									<th data-toggle="true">Bến đi</th>
									<th>Bến đến</th>
									<th data-hide="phone">Loại xe</th>
									<th data-hide="phone">Quãng đường</th>
									<th data-hide="phone">Thời gian</th>
									<th data-hide="phone">Số chuyến</th>
									<th data-hide="phone">Giá vé</th>
									<th data-hide="phone">Giờ chạy</th>
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
									<td><a class="br-btn-flat br-watch-schedule"
										href="/vi-VN/tp-ho-chi-minh-di-da-lat-1375.html"> <i
											class="fa fa-clock-o icon-flat text-success"></i>
									</a></td>
									<td><a
										href="/vi-VN/mua-ve-xe-tp-ho-chi-minh-di-da-lat.html"
										data-obj="{&quot;id&quot;:&quot;24-10-2019-All-BX An Suong ⇒ Da Lat&quot;,&quot;name&quot;:&quot;All-BX An Suong ⇒ Da Lat&quot;,&quot;list&quot;:&quot;TP.Hồ Chí Minh - Đà Lạt&quot;,&quot;brand&quot;:&quot;Phương Trang&quot;,&quot;category&quot;:&quot;BX An Suong ⇒ Da Lat&quot;,&quot;variant&quot;:&quot;Giường&quot;,&quot;position&quot;:1,&quot;price&quot;:240000}"
										class="btn br-btn-default btn-flat futa-book-ticket"> <i
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
									<td><a class="br-btn-flat br-watch-schedule"
										href="/vi-VN/tp-ho-chi-minh-di-buon-ma-thuot-1378.html"> <i
											class="fa fa-clock-o icon-flat text-success"></i>
									</a></td>
									<td><a
										href="/vi-VN/mua-ve-xe-tp-ho-chi-minh-di-buon-ma-thuot.html"
										data-obj="{&quot;id&quot;:&quot;24-10-2019-All-BX Mien Dong ⇒ Buon Ma Thuot&quot;,&quot;name&quot;:&quot;All-BX Mien Dong ⇒ Buon Ma Thuot&quot;,&quot;list&quot;:&quot;TP.Hồ Chí Minh - Buôn Ma Thuột&quot;,&quot;brand&quot;:&quot;Phương Trang&quot;,&quot;category&quot;:&quot;BX Mien Dong ⇒ Buon Ma Thuot&quot;,&quot;variant&quot;:&quot;Giường&quot;,&quot;position&quot;:2,&quot;price&quot;:245000}"
										class="btn br-btn-default btn-flat futa-book-ticket"> <i
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
									<td><a class="br-btn-flat br-watch-schedule"
										href="/vi-VN/tp-ho-chi-minh-di-nha-trang-485.html"> <i
											class="fa fa-clock-o icon-flat text-success"></i>
									</a></td>
									<td><a
										href="/vi-VN/mua-ve-xe-tp-ho-chi-minh-di-nha-trang.html"
										data-obj="{&quot;id&quot;:&quot;24-10-2019-All-BX Mien Dong ⇒ BX Nha Trang&quot;,&quot;name&quot;:&quot;All-BX Mien Dong ⇒ BX Nha Trang&quot;,&quot;list&quot;:&quot;TP.Hồ Chí Minh - Nha Trang&quot;,&quot;brand&quot;:&quot;Phương Trang&quot;,&quot;category&quot;:&quot;BX Mien Dong ⇒ BX Nha Trang&quot;,&quot;variant&quot;:&quot;Giường&quot;,&quot;position&quot;:3,&quot;price&quot;:225000}"
										class="btn br-btn-default btn-flat futa-book-ticket"> <i
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
									<td><a class="br-btn-flat br-watch-schedule"
										href="/vi-VN/tp-ho-chi-minh-di-phan-thiet-827.html"> <i
											class="fa fa-clock-o icon-flat text-success"></i>
									</a></td>
									<td><a
										href="/vi-VN/mua-ve-xe-tp-ho-chi-minh-di-phan-thiet.html"
										data-obj="{&quot;id&quot;:&quot;24-10-2019-All-BX Mien Dong ⇒ BXB Phan Thiet&quot;,&quot;name&quot;:&quot;All-BX Mien Dong ⇒ BXB Phan Thiet&quot;,&quot;list&quot;:&quot;TP.Hồ Chí Minh - Phan Thiết&quot;,&quot;brand&quot;:&quot;Phương Trang&quot;,&quot;category&quot;:&quot;BX Mien Dong ⇒ BXB Phan Thiet&quot;,&quot;variant&quot;:&quot;Giường&quot;,&quot;position&quot;:4,&quot;price&quot;:140000}"
										class="btn br-btn-default btn-flat futa-book-ticket"> <i
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

</body>

</html>
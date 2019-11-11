<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="Cart.css">
<!-- Latest compiled and minified CSS -->
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
						<!-- <li><a href="#"><i class="fa fa-truck" aria-hidden="true"></i>Tạo người dùng</a></li>
            <li><a href="#"><i class="fa fa-taxi" aria-hidden="true"></i>Đặt vai trò</a></li> -->
						<li class="pull-right diff"><a href="#"><span
								class="hidden-xs"></span></a></li>
						<li class="pull-right"><a target="_blank" href="#"><i
								class="fa fa-facebook-square"></i>Chào Nhân viên</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- ngView:  -->
		<div class="container">
			<div class="search">
				<form>
					<table width="80%" cellspacing="0" class="table-search">
						<tbody>
							<tr>
								<td>
									<div class="shopee-searchbar">
										<div class="shopee-searchbar__main">
											<form role="search" class="form-control" autocomplete="off">
												<input aria-label="Tìm kiếm" class="form-control"
													maxlength="128" placeholder="Tìm kiếm" autocomplete="off"
													value="">
											</form>
										</div>
									</div>
								</td>
								<td><select class="form-control">
										<!-- <option value="-1" label="Chọn trạng thái" selected="selected">Chọn trạng thái</option> -->
										<option value="0" label="Chổ ngồi đã đặt">Chổ ngồi đã
											đặt</option>
										<option value="1" label="Tất cả chổ ngồi trống">Tất
											cả chổ ngồi trống</option>
								</select></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<table class="table-dsachve">
				<h3 class="text-primary text-uppercase">Tất cả vé đã đặt</h3>
				<thead>
					<tr>
						<th>Idbus</th>
						<th>Departure</th>
						<th>Destination</th>
						<th>Time</th>
						<th>Price</th>
						<th>Name</th>

						<th>Phone</th>
						<th></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="ticket" items="${ticket}">
						<tr>
							<td values="${ticket.getIdTicket()}">${ticket.getIdBus() }</td>
							<td>${ticket.getDeparture() }</td>
							<td>${ticket.getDestination() }</td>
							<td>${ticket.getTime() }</td>
							<td>${ticket.getPrice() }.VND</td>
							<td>John</td>

							<td>${ticket.getPhone() }</td>
							<td><a href="updateStatus?idTicket=${ticket.getIdTicket()}"
								value="update">Hủy vé</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<section class="page-section cta">
			<div class="container">
				<div class="row">
					<div class="col-xl-12 mx-auto">
						<div class="cta-inner text-center rounded">
							<section id="body-content">
								<div class="container">
									<div class="row">
										<h3 class="text-primary text-uppercase">Xem Ghế</h3>
										<div class="section-list" id="Star-sai-gon">
											<h3 class="text-uppercase text-success">
												<span class="sprite ico-drive"></span> Sài Gòn <i
													class="fa fa-exchange"></i>
											</h3>
											<div class="table-responsive">
												<table class="table ">
													<thead>
														<tr class="bg-light-green">
															<th>STT</th>
															<th data-toggle="true">Bến đi</th>
															<th>Bến đến</th>
															<th data-hide="phone">Số chuyến</th>
															<th data-hide="phone">Giá tiền</th>
															<th data-hide="phone">Chọn ngày</th>
															<th data-hide="phone">Xem ghế</th>
															<th></th>
														</tr>
													</thead>
													<tbody action="ShowAllBus" method="get">
														<c:forEach var="idBus" items="${idBus}">
															<form action="ShowAllBus2" method="post">
															<tr class="route-row1375"> 
															<input type="text" hidden="hidden" name ="idBusH"+ value = "${idBus.getIdBus()}">
																<td>${idBus.getIdBus()}</td>
																<td>${idBus.getDeparture()}</td>
																<td>${idBus.getDestination()}</td>
																<td>${idBus.getTrip()}chuyến/ngày</td>
																<td>
																	<p>
																		<strong class="text-primary">
																			${idBus.getPrice()}<sup>đ/vé</sup>
																		</strong>
																	</p>
																</td>

																<td><input type="date" name="seatDate"></td>
																<td>
																	<%-- <a href="${pageContext.request.contextPath}/ShowSeatServet?idBusH=${idBus.getIdBus()}&&date="
															class="btn br-btn-default btn-flat futa-book-ticket">
																<i
																class="fa fa-ticket icon-flat text-primary icon-bg-default"></i>Kiểm tra
														</a> --%>
																	<button   class="btn btn-success"
																		type="submit">Kiểm tra</button>
																</td>
															</tr>
															</form>
														</c:forEach>
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
	</div>
</body>

</html>
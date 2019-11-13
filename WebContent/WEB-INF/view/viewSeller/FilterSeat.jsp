<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
<style>
body {
	background: white;
	background-color: white !important;
}
.row {
    margin-left: 40px;
}
</style>
<body>
	<div id="sb-site">
		<div class="br-header">
			<div id="top-nav" class="hidden-xs">
				<div class="container">
					<ul class="clearfix">
						<li><a href="#"><i class="fa fa-bus" aria-hidden="true"></i>
								Trang chủ</a></li>
						<li><a href="${pageContext.request.contextPath}/ShowAllBus2"><i
								class="fa fa-bus" aria-hidden="true"></i> Tìm kiếm ghế</a></li>
						<li class="pull-right diff"><a href="#"><span
								class="hidden-xs"></span></a></li>
						<li class="pull-right"><a target="_blank" href="#"><i
								class="fa fa-facebook-square"></i>Chào Nhân viên</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="">
			<section>
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
																<th>Bến đi</th>
																<th>Bến đến</th>
																<th>Số chuyến</th>
																<th>Giá tiền</th>
																<th>Chọn ngày</th>
																<th>Xem ghế</th>
																<th></th>
															</tr>
														</thead>
														<tbody action="ShowAllBus" method="get">
															<c:forEach var="idBus" items="${idBus}">
																<form action="ShowAllBus2" method="post">
																	<tr class="route-row1375">
																		<input type="text" hidden="hidden" name="idBusH"
																			+ value="${idBus.getIdBus()}">
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

																		<td><input type="date" name="seatDate" class="form-control"></td>
																		<td>
																			<button class="btn btn-success" type="submit">Kiểm
																				tra</button>
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
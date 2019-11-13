<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Home - Brand</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="Cart.css">
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
<link rel="stylesheet"
	href="bootstrap/assets/bootstrap/css/bootstrap.min.css">

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
						<li><a href="#"><i class="fa fa-truck" aria-hidden="true"></i>Lịch
								trình xe chạy</a></li>
						<li><a href="#"><i class="fa fa-taxi" aria-hidden="true"></i>Mua
								vé</a></li>
						<li class="pull-right diff"><a href="#"><span
								class="hidden-xs">Đăng nhập</span></a></li>
						<li class="pull-right"><a target="_blank" href="#"> Đăng
								ký </a></li>
					</ul>
				</div>
			</div>
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
									<div class="table-responsive">
										<table class="table ">
											<thead>
												<tr class="text-white bg-light-green">

													<th data-toggle="true">Bến đi</th>
													<th>Bến đến</th>
													<th data-hide="phone">Số Xe</th>
													<th data-hide="phone">Giá Vé</th>
													<th data-hide="phone">Thời gian</th>

													<th data-hide="phone">Ngày đặt</th>
													<th data-hide="phone">Trạng Thái</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="pd" items="${ticket}">
													<tr>

														<td>${pd.getDeparture() }</td>
														<td>${pd.getDestination() }</td>
														<td>${pd.getIdBus() }</td>
														<td>${pd.getPrice() }.đ</td>
														<td>${pd.getTime() }</td>

														<td>${pd.getDate() }</td>
														<td><c:set var="salary" scope="session"
																value="${pd.getStatus()}" /> <c:if
																test="${salary ==1 }">
																<c:out value="Đã đặt" />
																<td><a
															href="updateStatusCustomer?idTicket=${pd.getIdTicket()}&&idUser=${idUser}"
															value="update">Hủy vé</a></td>

															</c:if> <c:set var="salary" scope="session"
																value="${pd.getStatus()}" /> <c:if
																test="${salary == 0 }">
																<c:out value="Đã Hủy" />
															</c:if>
															</td>
														
													</tr>
												</c:forEach>
											</tbody>


										</table>
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

</html>


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
<link rel="stylesheet"
	href="bootstrap/assets/bootstrap/css/bootstrap.min.css">
<!------ Include the above in your HEAD tag ---------->
<title>Document</title>
<link rel="stylesheet" href="css/Cart.css">
<style>
#top-nav ul li {
	margin-left: 45px;
	float: left;
	padding: 10px 20px;
	list-style: none;
}

th {
	width: 100px;
}

body {
	background: white;
	background-color: whitesmoke !important;
}

select.form-control {
	height: 34px;
}

img {
	margin-left: 180px;
	position: absolute;
	width: 250px;
	height: 50px;
	margin-top: -5px;
}
</style>
</head>

<body>
<div id="sb-site">
	
	<img src="./images/logo2.png">
		<div class="br-header">
			<div id="top-nav" class="hidden-xs">
				<div class="container">
					<ul class="clearfix">
						<li></li><li></li> 
						<li><a
							href="${pageContext.request.contextPath}/ShowAllBus2"><i
								class="fa fa-truck" aria-hidden="true"></i>Tìm kiếm ghế</a></li>
						<li class="pull-right diff"><a href="#"><span
								class="hidden-xs"></span></a></li>
						<li class="pull-right"><a target="_blank" href="#"><i
								class="fa fa-facebook-square"></i>Chào Admin</a></li>
					</ul>
				</div>
			</div>
		</div>
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
													name="keyFilter" maxlength="128" placeholder="Tìm kiếm"
													autocomplete="off" value="">
											</form>
										</div>
									</div>
								</td>
								<td><select class="form-control">
										<a><option value="1" label="Chổ ngồi đã đặt"
												name="keyFilter">1</option></a>
										<a><option value="0" name="keyFilter"
												label="Tất cả chổ ngồi trống">2</option> </a>

								</select></td>
								<td><a
									href="${pageContext.request.contextPath}/ShowAllTicket">
										<button type="submit" class="btn-search"
											value="Tìm kiếm người dùng">Tìm kiếm</button>
								</a></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<%-- <table class="table-dsachve">
				<h3 class="">Tất cả vé đã đặt</h3>
				<thead>
					<tr>
						<th>Idbus</th>
						<th>Departure</th>
						<th>Destination</th>
						<th>Time</th>
						<th>Price</th>
						<th>Name</th>
						<th>Phone</th>
						<th>Trạng thái</th>

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
							<td>${ticket.getFullname() }</td>
							<td>${ticket.getPhone() }</td>
							<td><c:set var="salary" scope="session"
									value="${ticket.getStatus()}" /> <c:if test="${salary ==1 }">
									<c:out value="Đã đặt" />

								</c:if> <c:set var="salary" scope="session"
									value="${ticket.getStatus()}" /> <c:if test="${salary == 0 }">
									<c:out value="Đã Hủy" />
								</c:if></td>
							<td><a href="updateStatus?idTicket=${ticket.getIdTicket()}"
								value="update">Hủy vé</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table> --%>
			<section class="page-section cta">
	<div class="container">
		<div class="row">
			<div class="col-xl-12 mx-auto">
				<div class="cta-inner text-center rounded">
					<section id="body-content">
						<div class="container">
							<div class="row">
							<h5 class="text-primary ">Lịch sử mua vé</h5>
								<div class="table-responsive">
									<table class="table ">
										<thead>
											<tr>
												<th>Idbus</th>
												<th>Departure</th>
												<th>Destination</th>
												<th>Time</th>
												<th>Price</th>
												<th>Name</th>
												<th>Phone</th>
												<th>Trạng thái</th>
						
											</tr>
										</thead>
										<tbody>
											<c:forEach var="ticket" items="${ticket}">
												<tr>
													<td values="${ticket.getIdTicket()}">${ticket.getIdBus()}</td>
													<td>${ticket.getDeparture() }</td>
													<td>${ticket.getDestination() }</td>
													<td>${ticket.getTime() }</td>
													<td>${ticket.getPrice() }.VND</td>
													<td>${ticket.getFullname() }</td>
													<td>${ticket.getPhone() }</td>
													<td><c:set var="salary" scope="session"
															value="${ticket.getStatus()}" /> <c:if test="${salary ==1 }">
															<c:out value="Đã đặt" />
						
														</c:if> <c:set var="salary" scope="session"
															value="${ticket.getStatus()}" /> <c:if test="${salary == 0 }">
															<c:out value="Đã Hủy" />
														</c:if></td>
													<td><a href="updateStatus?idTicket=${ticket.getIdTicket()}"
														value="update">Hủy vé</a></td>
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
		</div>
	</div>
</body>

</html>
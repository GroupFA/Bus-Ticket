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
						<li><a href="${pageContext.request.contextPath}/ShowAllBus2"><i
								class="fa fa-bus" aria-hidden="true">Lọc người dùng</i>

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
													name="keyFilter" maxlength="128" placeholder="Tìm kiếm"
													autocomplete="off" value="">
											</form>
										</div>
									</div>
								</td>
								<td><select class="form-control">
										<!-- <option value="-1" label="Chọn trạng thái" selected="selected">Chọn trạng thái</option> -->
										<a>
											<option value="1" label="Chổ ngồi đã đặt" name="keyFilter">1
											</option>
									</a>

										<a>
											<option value="0" name="keyFilter"
												label="Tất cả chổ ngồi trống">2</option>
									</a>

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
							<td>John</td>
							<td>${ticket.getPhone() }</td>					
							<td>
							
							<c:set var="salary" scope="session"
									value="${ticket.getStatus()}" /> <c:if test="${salary ==1 }">
								<c:out value="Đã đặt" />
									
								</c:if>
							
								<c:set var="salary" scope="session"
									value="${ticket.getStatus()}" /> <c:if test="${salary == 0 }">
									<c:out value="Đã Hủy" />
								</c:if>
							
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>
</body>

</html>
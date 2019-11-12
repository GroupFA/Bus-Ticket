<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="Cart.css">
<!-- Latest compiled and minified CSS -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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
.seat label {
  display: block;
  position: relative;
  width: 150px;
  text-align: center;
  font-size: 14px;
  font-weight: bold;
  line-height: 1.5rem;
  padding: 4px 0;
  background: #f42536;
  border-radius: 5px;
  animation-duration: 300ms;
  animation-fill-mode: both;
}
.seat3{
background-color: #bada55;
    /* color: #bada55; */
    height: 30px;
    width: 30px;
    margin-left: 20px;
}
label.trong{
    background-color: #f42536;
    width: 30px;
    height: 30px;
}
</style>
<body>

	<form action="BookingServlet" class="form-horizontal" method="post">

		<div id="sb-site">
			<div class="br-header">
				<div id="top-nav" class="hidden-xs">
					<div class="container">
						<ul class="clearfix">
							<li><a href="#"><i class="fa fa-bus" aria-hidden="true"></i>
									Trang chủ</a></li>
							<li class="pull-right diff"><a
								href="${pageContext.request.contextPath}/AccountServlet"><span
									class="hidden-xs">Hi, ${userlogin.getFullName()}</span></a></li>
							<li class="pull-right"><a
								href="${pageContext.request.contextPath}/UpdateNdServlet?idUser=${userlogin.getIdUser()}">Cập
									nhật thông tin</a></li>
						</ul>
					</div>
				</div>
			</div>
			<section id="body-content">
				<div id="steps" class="container">
					<ul class="list-step clearfix">
						<li>Chọn tuyến <span></span>
						</li>
						<li class="active first">Chọn ghế <span></span></li>
						<li>Thông tin khách hàng <span></span></li>
						<li>Thanh toán <span></span></li>
					</ul>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-sm-4 col-xs-12 col-ms-12">
							<div class="panel">
								<p class="text-center text-primary text-uppercase">${bus.getDeparture()}

									- ${bus.getDestination()} <span>${date}</span>
								</p>
								<fieldset>
									<div class="row">
										<div class="col-lg-12">
											<div class="form-group">
												<div class="controls">
													<label for="">Tuyến xe</label>
													<p class="">
														<input class="form-control input-sm" id="departure"
															name="departure" type="text"
															value="${bus.getDeparture()}">
													</p>
												</div>
												<div class="controls">
													<p class="">
														<input class="form-control input-sm" id="destination"
															name="destination" type="text"
															value="${bus.getDestination()}">
													</p>
												</div>
											</div>
											<div class="form-group">
												<div class="controls">
													<label for="">Giờ khởi hành</label> <input
														class="form-control input-sm" id="destination"
														name="price" type="text" value="${bus.getTime()}">
												</div>
											</div>
											<div class="form-group">
												<div class="controls">
													<label for="">Giá</label> <input
														class="form-control input-sm" id="destination"
														name="price" type="text" value="${bus.getPrice()}">
												</div>
											</div>
											<div class="form-group">
												<div class="controls">
													<label for="">kilomet</label> <input
														class="form-control input-sm" id="destination"
														name="kilomet" type="text" value="${bus.getKilomet()}">
												</div>
											</div>
											<div class="form-group">

												<div class="controls">
													<label for="">Mã tuyến</label> <input
														class="form-control input-sm" id="destination"
														name="idBus" type="text" value="${bus.getIdBus()}">
												</div>
											</div>
											<div class="form-group">
												<div class="controls">
													<label for="">Ngày</label> <input
														class="form-control input-sm" id="destination" name="date"
														type="text" value="${date}">
												</div>
											</div>

											<div class="form-section">
												<div
													class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ms-12">
													<a class="btn btn-primary btn-flat"> Quay lại</a>
													<button type="submit" class="btn btn-success btn-flat">Tiếp
														tục</button>
												</div>
											</div>
										</div>
									</div>
								</fieldset>
							</div>
						
					</div>
					<div class="col-sm-8 col-xs-12 col-ms-12">
						<div class="panel">
							<table class="table">
								<tbody>
									<tr>
										<td><strong class="text-uppercase">Số ghế:</strong> <span>
										</span><span>Chưa chọn ghế</span></td>
										<td class="text-right"><strong class="text-uppercase">Tổng
												tiền:</strong> (<span class="text-primary" style="font-weight: 600;">0<sup>₫</sup></span>)</td>
									</tr>
								</tbody>
							</table>

							<div class="row">
								<c:forEach var="seat" items="${listseat}">
									<div class="col-xs-4 col-sm-4">
										<div class="plane">
											<ol class="cabin fuselage">
												<li class="row">
													<ol class="seats" type="A">
														<li class="seat"
															<c:if test="${seat.isStatus() == true}"></c:if>>
															<input name="n" type="checkbox"
															value="${seat.getIdSeat()}" id="${seat.getIdSeat()}" />
															<label for="${seat.getIdSeat()}">${seat.getIdSeat()}</label>
														</li>
													</ol>
												</li>
											</ol>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="row">
							<ol>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ms-12">
									<span>Đang chọn</span>
									<li class="seat1"><label class="dchon"></label></li>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ms-12">
									<span>Đã đặt</span>
									<li class="seat2"><label class="dat"></label></li>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ms-12">
									<span>Còn trống</span>
									<li class="seat3"><label class="trong"></label></li>
								</div>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</form>
</body>

</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
img {
	margin-left: 180px;
	position: absolute;
	width: 250px;
	height: 50px;
	margin-top: -8px;
}
#top-nav ul li {
    margin-left: 45px;
    float: left;
    padding: 10px 20px;
    list-style: none;
}
body {
    background-color: white !important;
}
select.form-control {
    height: 38px;
}
button.btn.btn-success.btn-flat {
    margin-left: 900px;
    margin-top: -39px;
}
a.btn.btn-primary.btn-flat {
    margin-left: 800px;
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
							href="${pageContext.request.contextPath}/InsertUserServlet"><i
								class="fa fa-truck" aria-hidden="true"></i>Tạo người dùng</a></li>
						<li class="pull-right diff"><a href="#"><span
								class="hidden-xs"></span></a></li>
						<li class="pull-right"><a target="_blank" href="#"><i
								class="fa fa-facebook-square"></i>Chào Admin</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- ngView:  -->
		<div>
			<section id="body-content">
				<div id="step" class="container">
					<p class="text-center text-primary text-uppercase">
						<strong>Update thông tin người dùng</strong>
					</p>
					<form action="UpdateUserServlet" method="post">
						<fieldset>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
									<div class="form-group clearfix">
										<div class="controls no-icon">
											<label for="">Tên đăng nhập <span
												class="text-primary">*</span></label> <input type="text"
												class="form-control" name="username" readonly="readonly"
												required="" ng-maxlength="80" value="${user.getUsername()}">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
									<div class="form-group clearfix">
										<div class="controls no-icon">
											<label for="">Di động <span class="text-primary">*</span></label>
											<input type="text" class="form-control" name="phoneNum"
												placeholder="Số di động" required="" ng-maxlength="30"
												vietnam-phone="" value="${user.getPhoneNum()}">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
									<div class="form-group clearfix">
										<div class="controls no-icon">
											<label for="">Họ và tên <span class="text-primary">*</span></label>
											<input type="text" class="form-control" name="fullname"
												required="" ng-maxlength="80" value="${user.getFullName()}">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
									<div class="form-group clearfix">
										<div class="controls no-icon">
											<label for="">Địa chỉ <span class="text-primary">*</span></label>
											<input type="text" class="form-control" name="address"
												required="" ng-maxlength="80" value="${user.getAddress()}">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
									<div class="form-group clearfix">
										<div class="controls no-icon">
											<label for="">Mật khẩu <span class="text-primary">*</span></label>
											<input type="text" class="form-control" name="password"
												required="" ng-maxlength="80" value="${user.getPassword()}">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
									<div class="form-group clearfix">
										<div class="controls no-icon">
											<label for="">Email <span class="text-primary">*</span></label>
											<input class="form-control" type="email" name="email"
												placeholder="Địa chỉ email" required=""
												value="${user.getEmail()}">
										</div>
									</div>
								</div>
							</div>
							<div class="row">


								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
									<div class="form-group clearfix">
										<div class="controls no-icon">
											<label for="">Chức vụ <span class="text-primary">*</span></label>
											<select name="role" id="" class="form-control"
												value="${user.getRole()}">

												<option name="role" value="Admin">Admin</option>
												<option name="role" value="Customer">Customer</option>
												<option name="role" value="Seller">Seller</option>
											</select>
											<%-- <input type="text" class="form-control" name="role"
												required="" ng-maxlength="80" value="${user.getRole()}"> --%>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
									<div class="form-group clearfix">
										<div class="controls no-icon">
											<label for="">ID User <span class="text-primary">*</span></label>
											<input type="text" class="form-control" name="idUser"
												readonly="readonly" required="" ng-maxlength="80"
												value="${user.getIdUser()}">
										</div>
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
									<div class="form-group clearfix">
										<div class="controls no-icon">
											<label for="">Giới tính <span class="text-primary">*</span></label>
											<div class="input-group" value="${user.getGender()}">
												<div class="p-t-10">
													<label class="radio-container m-r-45">Nam <input
														type="radio" checked="checked" name="gender" value="Nam">
														<span class="checkmark"></span>
													</label> <label class="radio-container">Nữ <input
														type="radio" name="gender" value="Nữ"> <span
														class="checkmark"></span>
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
											<button type="submit" class="btn btn-success  btn-flat">
												<i class="fa fa-arrow-right icon-flat bg-success"></i>Tiếp
												tục
											</button>
										</a>
									</div>
								</div>
						</fieldset>
					</form>
				</div>
			</section>
		</div>
	</div>
</body>

</html>
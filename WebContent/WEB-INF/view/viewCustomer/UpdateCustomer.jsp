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

		<div>
			<section id="body-content">
				<div id="user-infomations" class="container">
					<form action="UpdateNdServlet" class="form-horizontal"
						method="post">
						<input name="__RequestVerificationToken" type="hidden"
							value="7FbmdXF5ZJggXa89psEoGMafXyYcTv94H28ge51LsqxRUw0P-SpnBL1FVzHjRn1D2Sh45bJp2Kl20q3-EMZnQXG2QYo1">
						<div class="row">
							<div class=" col-lg-6 col-md-6 col-sm-12 col-sm-12 col-xs-12">
								<h3 class="text-uppercase bg-success">Thông tin cá nhân</h3>
								<table class="table form-info">
									<tbody>
										<tr>
											<td>UserName:<span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="FullName"
												name="username" type="text" value="${user.getUsername()}">
												<span class="field-validation-valid"
												data-valmsg-for="FullName" data-valmsg-replace="true"></span>
											</td>
										</tr>

										<tr>
											<td>FullName:<span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="FullName"
												name="fullname" type="text" value="${user.getFullName()}">
												<span class="field-validation-valid"
												data-valmsg-for="FullName" data-valmsg-replace="true"></span>
											</td>
										</tr>
										<tr>
											<td>Password:<span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="FullName"
												name="password" type="text" value="${user.getPassword()}">
												<span class="field-validation-valid"
												data-valmsg-for="FullName" data-valmsg-replace="true"></span>
											</td>
										</tr>
										<tr>
											<td>Role:<span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm"
												readonly="readlonly" id="FullName" name="role" type="text"
												value="${user.getRole()}"> <span
												class="field-validation-valid" data-valmsg-for="FullName"
												data-valmsg-replace="true"></span></td>
										</tr>
										<tr>
											<td>Gender:<span style="color: red;">(*)</span></td>
											<td>
												<div class="input-group" value="${user.getGender()}">
													<div class="p-t-10">
														<label class="radio-container m-r-45">Male <input
															type="radio" checked="checked" name="gender" value="Nam">
															<span class="checkmark"></span>
														</label> <label class="radio-container">Female <input
															type="radio" name="gender" value="Nữ"> <span
															class="checkmark"></span>
														</label>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class=" col-lg-6 col-md-6 col-sm-12 col-sm-12 col-xs-12">
								<h3 class="text-uppercase bg-success">Thông tin địa chỉ</h3>
								<table class="table form-info">
									<tbody>
										<tr>
											<td>Điện thoại <span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="Phone"
												name="phoneNum" type="text" value="${user.getPhoneNum()}"><span
												class="field-validation-valid" data-valmsg-for="Phone"
												data-valmsg-replace="true"></span></td>
										</tr>
										<tr>
											<td>Địa chỉ</td>
											<td><input class="form-control input-sm" id="Address"
												name="address" type="text" value="${user.getAddress()}">
											</td>
										</tr>
										<tr>
											<td>Email <span style="color: red;">(*)</span></td>
											<td><input class="form-control input-sm" id="Email"
												name="email" type="text"> <span
												class="field-validation-valid" data-valmsg-for="Email"
												data-valmsg-replace="true"></span></td>
										</tr>
										<tr>
										<tr>
											<td>ID User:</td>
											<td><input readonly="readlonly"
												class="form-control input-sm" id="Address" name="idUser"
												type="text" value="${user.getIdUser()}"></td>
										</tr>
										<tr>
											<td colspan="2" class="text-right">
												<button type="submit" class="btn btn-primary">Cập
													nhật</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</form>
				</div>
			</section>
		</div>

</body>

</html>
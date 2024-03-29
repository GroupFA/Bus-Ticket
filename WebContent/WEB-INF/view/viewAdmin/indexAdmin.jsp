
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
<link rel="stylesheet"
	href="bootstrap/assets/bootstrap/css/bootstrap.min.css">
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
						<li><a
							href="${pageContext.request.contextPath}/InsertUserServlet"><i
								class="fa fa-truck" aria-hidden="true"></i>Tạo người dùng</a></li>
						<li><a href="#"><i class="fa fa-taxi" aria-hidden="true"></i>Đặt
								vai trò</a></li>
						<li class="pull-right diff"><a href="#"><span
								class="hidden-xs"></span></a></li>
						<li class="pull-right"><a target="_blank" href="#"><i
								class="fa fa-facebook-square"></i>Chào Admin</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- ngView:  -->


		<div class="container">
			<div class="search">
				<form action="showAllUser" method="get">
					<table width="100%" cellspacing="0" class="table-search">
						<tbody>
							<tr>
								<td><input type="text" class="form-control"
									placeholder="Tìm kiếm " autocomplete="off" name="keySearch"></td>
								<td><a
									href="${pageContext.request.contextPath}/showAllUser">
										<button type="submit" class="btn-search"
											value="Tìm kiếm người dùng">Tìm kiếm</button>
								</a></td>
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

										<table class="table-dsach">
											<h3 class="text-primary text-uppercase">Danh sách người
												dùng</h3>
											<thead>
												<tr>
													<th style="text-align: left; padding-right: 35;">Username</th>
													<th style="text-align: left; padding-right: 35;">Password</th>
													<th style="text-align: left; padding-right: 35;">Fullname</th>
													<th style="text-align: left; padding-right: 35;">gender</th>
													<th class="wrapper"
														style="text-align: left; padding-right: 35;">address</th>
													<th style="text-align: left; padding-right: 35;">phoneNumber</th>
													<th style="text-align: left; padding-right: 35;">role</th>
													<th style="text-align: left; padding-right: 35;">Email</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="user" items="${user}">
													<tr>

														<td>${user.getUsername()}</td>
														<td>${user.getPassword()}</td>
														<td>${user.getFullName()}</td>
														<td>${user.getGender()}</td>
														<td class="wrapper">${user.getAddress()}</td>
														<td>${user.getPhoneNum()}</td>
														<td>${user.getRole()}</td>
														<td>${user.getEmail()}</td>
														<td><a
															href="${pageContext.request.contextPath}/UpdateUserServlet?idUser=${user.getIdUser()}">Update</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
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
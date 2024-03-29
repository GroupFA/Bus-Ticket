<!DOCTYPE html>

<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Au Register Forms by Colorlib</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link rel="stylesheet" href="css/Cart.css">
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/resgister.css" rel="stylesheet" media="all">
</head>

<body>
	<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
		<div class="wrapper wrapper--w680">
			<div class="card card-4">
				<div class="login100-form-title"
					style="background-image: url(images/bg-02.jpg);">
					<span class="login100-form-title-1"> Sign Up </span>
				</div>
				<div class="card-body">

					<form enctype="multipart/form-data"
						action="RegisterServlet?yeucau=insert" method="post">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Full name</label> <input
										class="input--style-4" type="text" name="fullName">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Username</label> <input
										class="input--style-4" type="text" name="usersName">
								</div>
							</div>

						</div>

						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Password</label> <input
										class="input--style-4" type="password" name="passWord">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Confirm password</label> <input
										class="input--style-4" type="password" name="repassword">
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Gender</label>
									<div class="p-t-10">
										<label class="radio-container m-r-45">Male <input
											type="radio" checked="checked" name="gender"> <span
											class="checkmark"></span>
										</label> <label class="radio-container">Female <input
											type="radio" name="gender"> <span class="checkmark"></span>
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Email</label> <input
										class="input--style-4" type="email" name="Email">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Phone Number</label> <input
										class="input--style-4" type="text" name="phoneNum">
								</div>
							</div>
						</div>
						<div class="row row-space">

							<label class="label">Address</label> <input
								class="input--style-4" type="text" name="address">

						</div>

						<div class="p-t-15">
							<a href="${pageContext.request.contextPath}/AccountServlet">
								<button class="btn btn--radius-2 login100-form-btn "
									type="submit">Submit</button>
							</a>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->

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


<link href='https://fonts.googleapis.com/css?family=Lato:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="jQuery-Seat-Charts/jquery.seat-charts.css">
<!-- <link rel="stylesheet" type="text/css" href="jQuery-Seat-Charts/style.css"> -->
<script src="jQuery-Seat-Charts/jquery-1.11.0.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<title>Document</title>
<link rel="stylesheet" href="css/Cart.css">
</head>
<style>
ul.seatCharts-legendList {
	width: 10px;
}

div.seatCharts-space {
	padding: 25px;
	background-color: whitesmoke;
}

div.seatCharts-row {
	height: 60px;
	width: 400px;
}

div.seatCharts-seat {
	height: 50px;
	width: 55px;
}

div#seat-map {
	width: 300px;
}

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

.seat3 {
	background-color: #bada55;
	/* color: #bada55; */
	height: 30px;
	width: 30px;
	margin-left: 20px;
}

label.trong {
	background-color: #f42536;
	width: 30px;
	height: 30px;
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
					<form action="${pageContext.request.contextPath}/BookingServlet"
									method="post">
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
														name="time" type="text" value="${bus.getTime()}">
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
													<label for="">Mã xe</label> <input
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
											</span><span id="counter">Chưa chọn ghế</span></td>
											<td class="text-right"><strong class="text-uppercase">Tổng
													tiền:</strong> (<span class="text-primary" style="font-weight: 600;"
												id="total">0<sup>₫</sup></span>)</td>
										</tr>
									</tbody>
								</table>

								
									<div class="">
										<input name="listSeat" id="listsbooking" hidden="hidden"/> 
										<%-- 	<input name="idBus" value="<%=request.getParameter("idBus")%>" /> 
											
											<input value="<%=request.getParameter("date")%>" name="date" /> --%>
										<div class="row">

											<div class="col-sm-8 col-xs-12 col-ms-12">
												<div id="seat-map">
												<!-- 	<div class="front-indicator">Front</div> -->
												</div>
											</div>
											<div class="col-sm-4 col-xs-12 col-ms-12">
												<div class="booking-details">

													<div id="legend"></div>
												</div>
											</div>
										</div>
									</div>
								</form>


								<%-- <div class="row">
									<c:forEach var="seat" items="${listseat}">
										<div class="col-xs-4 col-sm-4">
											<div class="plane">
												<ol class="cabin fuselage">
													<li class="row">
														<ol class="seats" type="A">
															<li class="seat"
																<c:if test="${seat.isStatus() == true}"></c:if>><input
																name="n" type="checkbox" value="${seat.getIdSeat()}"
																id="${seat.getIdSeat()}" /> <label
																for="${seat.getIdSeat()}">${seat.getIdSeat()}</label></li>
														</ol>
													</li>
												</ol>
											</div>
										</div>
									</c:forEach>

								</div> --%>

							</div>
						</div>
					</div>
			</section>
		</div>

	<script src="jQuery-Seat-Charts/jquery-1.11.0.min.js"></script>
	<script src="jQuery-Seat-Charts/jquery.seat-charts.js"></script>

	<script>
			var firstSeatLabel = 1; 
			$(document).ready(function() {
				var cartAdd = new Map();
				var $cart = $('#selected-seats'),
					$counter = $('#counter'), 
					$total = $('#total'),
					sc = $('#seat-map').seatCharts({
					map: [
						'ee_ee',
						'ee_ee',
						'ee_ee',
						'ee_ee',
						'ee_ee',
						'ee_ee',
						'ee_ee',
						'ee_ee',
						'eeeee',
					],
					seats: {
						f: {
							price   : 100,
							classes : 'first-class', //your custom CSS class
							category: 'Number'
						},
						e: {
							price   : ${bus.getPrice()},
							classes : 'economy-class', //your custom CSS class
							category: 'Number'
						}					 
					},
					naming : {
						top : false,
						getLabel : function (character, row, column) {
							return firstSeatLabel++;
						},
					},
					legend : {
						node : $('#legend'),
					    items : [
						
							[ 'e', 'available',   'Available Seat'],
							[ 'f', 'unavailable', 'Already Booked']
					    ]					
					},
					click: function () {
						var key='';
						var value = ''; 
						if (this.status() == 'available') {
							//let's create a new <li> which we'll add to the cart items
							$('<li>'+this.data().category+' Seat # '+this.settings.label+': <b>$'+this.data().price+'</b> <a href="#" class="cancel-cart-item">[cancel]</a></li>')
								.attr('id', 'cart-item-'+this.settings.id)
								.data('seatId', this.settings.id)
								.appendTo($cart);
							
							/*
							 * Lets update the counter and total
							 *
							 * .find function will not find the current seat, because it will change its stauts only after return
							 * 'selected'. This is why we have to add 1 to the length and the current seat price to the total.
							 */
							$counter.text(sc.find('selected').length+1);
							$total.text(recalculateTotal(sc)+this.data().price);
							cartAdd.set(this.settings.id,this.data().price);
							
							for(var i of cartAdd.keys()){
								key+=' '+i;					
							} 
							console.log(cartAdd);
							document.getElementById("listsbooking").value=key;
							return 'selected';
						} else if (this.status() == 'selected') {
							//update the counter
							$counter.text(sc.find('selected').length-1);
							//and total
							$total.text(recalculateTotal(sc)-this.data().price);
						
							//remove the item from our cart
							$('#cart-item-'+this.settings.id).remove(); 
							//seat has been vacated
							cartAdd.delete(this.settings.id);

							for(var i of cartAdd.keys()){
								key+=' '+i;					
							} 
							console.log(cartAdd);
							document.getElementById("listsbooking").value=key;
							return 'available';
						} else if (this.status() == 'unavailable') {
							//seat has been already booked
							return 'unavailable';
						} else {
							return this.style();
						}
					}
				});

				//this will handle "[cancel]" link clicks
				$('#selected-seats').on('click', '.cancel-cart-item', function () {
					//let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
					sc.get($(this).parents('li:first').data('seatId')).click();
				});

				//let's pretend some seats have already been booked
						var booked = new Array();
						  <c:forEach items="${ListSeat}" var="a" >
						  booked.push("${a.getIdSeat()}");
				        </c:forEach>    
					sc.get(booked).status('unavailable'); 
		}); 
		function recalculateTotal(sc) {
			var total = 0;
		
			//basically find every selected seat and sum its price
			sc.find('selected').each(function () {
				total += this.data().price;
			});
			
			return total;
		}
		
		</script>
</body>

</html>
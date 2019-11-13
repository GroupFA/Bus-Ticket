
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href='https://fonts.googleapis.com/css?family=Lato:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="jQuery-Seat-Charts/jquery.seat-charts.css">
<link rel="stylesheet" type="text/css"
	href="jQuery-Seat-Charts/style.css">
<script src="jQuery-Seat-Charts/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" href="css/Cart.css">
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
<!-- <link rel="stylesheet"
	href="bootstrap/assets/bootstrap/css/bootstrap.min.css"> -->
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
img {
	margin-left: 180px;
	position: absolute;
	width: 250px;
	height: 50px;
	margin-top: -5px;
}
span.seatCharts-legendDescription {
    margin-left: 80px;
    float: left;
    width: 150px;
    line-height: 30px;
    margin-top: -40px;
}
strong.thongtin {
margin-top:30px;
    color: chocolate;
    font-size: 20px;
}
div.seatCharts-seat.selected {
	background-color: #f0ad4e;
}

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

.panel {
	background-color: white !important;
}

body {
	background-color: white;
}

.seatCharts-cell.seatCharts-space {
	background-color: white !important;
	color: white;
}
div.seatCharts-container {
    border-right: 0px dotted #adadad;
}
.text-uppercase {
    margin-left: 400px;
    margin-top: 50px !important;
    width: 250px;
}
div#seat-map {
    margin-left: 250px;
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
		
			<div class="wrapper">
			<p class="text-center text-primary text-uppercase">
						<strong class="thongtin">Danh sách ghế</strong>
					</p>
				<form action="${pageContext.request.contextPath}/CheckOutServlet"
					method="post">
					<div class="container">
						<input name="listSeat" id="listsbooking" hidden="hidden" /> <input name="idBus"
							value="<%=request.getParameter("idBusH")%>" hidden="hidden" /> <input
							name="departure" value="TPHCM" hidden="hidden"/> <input name="time"
							value="6:00" hidden="hidden"/> <input name="departure" value="TPHCM" hidden="hidden" /> <input
							name="price" value="150000" hidden="hidden"/> <input name="phone"
							value="012345678" hidden="hidden" /> <input
							value="<%=request.getParameter("date")%>" name="date" hidden="hidden" />

						<div class="row">
							<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 col-ms-12">
								<div id="seat-map">
									<!-- <div class="front-indicator">Front</div> -->
								</div>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 col-ms-12">
								<div class="booking-details">
									<div id="legend"></div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
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
							price   : 40,
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
						
							[ 'e', 'available',   'Ghế trống'],
							[ 'f', 'unavailable', 'Ghế đặt']
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
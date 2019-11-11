<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="jQuery-Seat-Charts/jquery.seat-charts.css">
		<link rel="stylesheet" type="text/css" href="jQuery-Seat-Charts/style.css">
			<script src="jQuery-Seat-Charts/jquery-1.11.0.min.js"></script>
</head>
<body>
	<div class="wrapper">
	<form action="${pageContext.request.contextPath}/CheckOutServlet" method="post">
			<div class="container">
			 <input name="listSeat" id="listsbooking"/>
			 <input name="idBus" value="<%= request.getParameter("idBusH") %>"/>
			 <input name="departure" value="TPHCM"/>
			  <input name="time" value="6:00"/>
			   <input name="departure" value="TPHCM"/>
			 <input name="price" value="150000"/>
			  <input name="phone" value="012345678"/>
			 	<input value="<%= request.getParameter("date")%>" name="date"/>
				<div id="seat-map">
					<div class="front-indicator">Front</div>  
				</div>
				<div class="booking-details">
					<h2>Booking Details</h2>
					<h3 id="clickSeat" hidden></h3>
					<h3> Selected Seats (<span id="counter">0</span>):</h3>
					<ul id="selected-seats"></ul> 
					Total: <b>$<span id="total">0</span></b> 
					 
					<button type="submit" class="checkout-button">Checkout &raquo;</button> 
					<div id="legend"></div>
				</div>
			</div>
			</form>
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
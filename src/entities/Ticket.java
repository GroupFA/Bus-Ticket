package entities;

public class Ticket {
int idTicket,  idBus, idSeat, idUser;
String date,departure, destination, Phone, time, trip,price;
public Ticket(int idTicket, int idBus, int idSeat, int idUser, String date, String departure, String destination,
		String phone, String time, String trip, String price) {
	super();
	this.idTicket = idTicket;
	this.idBus = idBus;
	this.idSeat = idSeat;
	this.idUser = idUser;
	this.date = date;
	this.departure = departure;
	this.destination = destination;
	Phone = phone;
	this.time = time;
	this.trip = trip;
	this.price = price;
}
public int getIdTicket() {
	return idTicket;
}
public void setIdTicket(int idTicket) {
	this.idTicket = idTicket;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public int getIdBus() {
	return idBus;
}
public void setIdBus(int idBus) {
	this.idBus = idBus;
}
public int getIdSeat() {
	return idSeat;
}
public void setIdSeat(int idSeat) {
	this.idSeat = idSeat;
}
public int getIdUser() {
	return idUser;
}
public void setIdUser(int idUser) {
	this.idUser = idUser;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getDeparture() {
	return departure;
}
public void setDeparture(String departure) {
	this.departure = departure;
}
public String getDestination() {
	return destination;
}
public void setDestination(String destination) {
	this.destination = destination;
}
public String getPhone() {
	return Phone;
}
public void setPhone(String phone) {
	Phone = phone;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getTrip() {
	return trip;
}
public void setTrip(String trip) {
	this.trip = trip;
}

}

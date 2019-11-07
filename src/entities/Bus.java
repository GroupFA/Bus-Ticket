package entities;

public class Bus {
	
	String departure, destination, category, kilomet, time, trip, price,date;
	int idBus;
	public Bus(String departure, String destination, String category, String kilomet, String time, String trip,
			String price, int idBus) {
	
		this.departure = departure;
		this.destination = destination;
		this.category = category;
		this.kilomet = kilomet;
		this.time = time;
		this.trip = trip;
		this.price = price;
		this.idBus = idBus;
	}
	public Bus(String departure, String destination, String category, String kilomet, String time, String trip,
			String price, String date, int idBus) {

		this.departure = departure;
		this.destination = destination;
		this.category = category;
		this.kilomet = kilomet;
		this.time = time;
		this.trip = trip;
		this.price = price;
		this.date = date;
		this.idBus = idBus;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public int getIdBus() {
		return idBus;
	}
	public void setIdBus(int idBus) {
		this.idBus = idBus;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getKilomet() {
		return kilomet;
	}
	public void setKilomet(String kilomet) {
		this.kilomet = kilomet;
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}

	
	

	
	
	
}

package entities;

public class Bus {
	
	String departure, destination, category, kilomet, time, trip, price;
	int idBus;
	
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

	public Bus(int idBus, String departure, String destination, String category, String kilomet, String time,
			String trip, String price) {
		super();
		this.idBus = idBus;
		this.departure = departure;
		this.destination = destination;
		this.category = category;
		this.kilomet = kilomet;
		this.time = time;
		this.trip = trip;
		this.price = price;
	}
	

	
	
	
}

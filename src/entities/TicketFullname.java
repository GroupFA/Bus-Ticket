package entities;

public class TicketFullname {
	private int idTicket;
	private int idBus;
	private String departure;
	private String destination;
	private String fullname;
	private String phone;
	private String time;
	private String price;
	private String idSeat;
	private String date;
	private String status;
	public TicketFullname(int idTicket, int idBus, String departure, String destination, String fullname, String phone,
			String time, String price, String idSeat, String date, String status) {
		super();
		this.idTicket = idTicket;
		this.idBus = idBus;
		this.departure = departure;
		this.destination = destination;
		this.fullname = fullname;
		this.phone = phone;
		this.time = time;
		this.price = price;
		this.idSeat = idSeat;
		this.date = date;
		this.status = status;
	}
	public int getIdTicket() {
		return idTicket;
	}
	public void setIdTicket(int idTicket) {
		this.idTicket = idTicket;
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
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getIdSeat() {
		return idSeat;
	}
	public void setIdSeat(String idSeat) {
		this.idSeat = idSeat;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	



	
	
	
}

package entities;

public class Ticket {
	
		int idTicket , idBus, idSeat , idUser ;
		String departure , destination , Phone ,time , trip, price  , date  ,status;
		
		public Ticket(int idTicket, int idBus, int idSeat, int idUser, String departure, String destination,
				String phone, String time, String trip, String price, String date, String status) {
			super();
			this.idTicket = idTicket;
			this.idBus = idBus;
			this.idSeat = idSeat;
			this.idUser = idUser;
			this.departure = departure;
			this.destination = destination;
			Phone = phone;
			this.time = time;
			this.trip = trip;
			this.price = price;
			this.date = date;
			this.status = status;
		}
		
		
		
		public Ticket(int idTicket, int idBus, int idSeat, int idUser, String departure, String destination,
				String time, String trip, String price, String date, String status) {
			super();
			this.idTicket = idTicket;
			this.idBus = idBus;
			this.idSeat = idSeat;
			this.idUser = idUser;
			this.departure = departure;
			this.destination = destination;
			this.time = time;
			this.trip = trip;
			this.price = price;
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
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
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


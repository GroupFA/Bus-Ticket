package entities;

public class Seat {
	String idSeat;
	String seatName;
	
	
	
	
	public Seat(String idSeat, String seatName) {
		super();
		this.idSeat = idSeat;
		this.seatName = seatName;
	}




	public Seat() {
		 
	}




	public String getIdSeat() {
		return idSeat;
	}




	public void setIdSeat(String idSeat) {
		this.idSeat = idSeat;
	}




	public String getSeatName() {
		return seatName;
	}




	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}
	
	
	

}

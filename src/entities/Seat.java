package entities;

public class Seat {
	int idBus;
	String idSeat;
	String seatName;
	
	public Seat(String idSeat, String seatName) {
		super();
		this.idSeat = idSeat;
		this.seatName = seatName;
	}



	public String getIdSeat() {
		return idSeat;
	}


	public void setIdSeat(String idSeat) {
		this.idSeat = idSeat;
	}


	boolean status;
	
	public Seat() {}

	public boolean isStatus() {
		return status;
	}
	
	public Seat(String idSeat) {
		this.idSeat = idSeat;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getIdBus() {
		return idBus;
	}

	public void setIdBus(int idBus) {
		this.idBus = idBus;
	}


	




	public String getSeatName() {
		return seatName;
	}




	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}
	
	
	

}

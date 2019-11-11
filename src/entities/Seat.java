package entities;

public class Seat{
	int idBus;
	String idSeat;
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


	
}

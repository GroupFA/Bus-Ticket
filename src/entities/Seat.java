package entities;

public class Seat{
	int idBus,idSeat;
	boolean status;
	
	public Seat() {}

	public boolean isStatus() {
		return status;
	}
	
	public Seat(int idSeat) {
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

	public int getIdSeat() {
		return idSeat;
	}

	public void setIdSeat(int idSeat) {
		this.idSeat = idSeat;
	}
	
}

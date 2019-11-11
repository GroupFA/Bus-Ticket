package entities;

public class SeatWithStatus {
	private int idSeat;
	private int idBus;
	private int status;

	public SeatWithStatus(int idSeat, int idBus, int status) {
		this.idSeat = idSeat;
		this.idBus = idBus;
		this.status = status;
	}

	public int getIdSeat() {
		return idSeat;
	}

	public void setIdSeat(int idSeat) {
		this.idSeat = idSeat;
	}

	public int getIdBus() {
		return idBus;
	}

	public void setIdBus(int idBus) {
		this.idBus = idBus;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}

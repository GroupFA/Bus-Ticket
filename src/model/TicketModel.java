package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import entities.Bus;
import entities.Seat;
import entities.Ticket;

public class TicketModel {
	public static ArrayList getAllIdBus() {
		ArrayList<Ticket>listicket = new ArrayList<Ticket>();
		Ticket ticket = null;
		try {
			String sql = "select * from ticket";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
				int idTicket = rs.getInt(1);
				int idBus = rs.getInt(8);	
				int idUser = rs.getInt(10);
				int idSeat = rs.getInt(9);
				String date1 = rs.getString(11);
				String departure = rs.getString(2);
				String destination = rs.getString(3);
				String phone = rs.getString(4);
				String time = rs.getString(5);
				String trip = rs.getString(6);
				String price = rs.getString(7);
				ticket = new Ticket(idTicket, idBus, idSeat, idUser, date1, departure, destination, phone, time, trip, price);
				listicket.add(ticket);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listicket;
	}
	public static boolean checkIdSeatAndDate(int idSeatInput,String dateInput) {
		Ticket ticket = null;
		try {
			String sql = "select * from ticket where idSeat = ? and date = ?";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
			pr.setInt(1, idSeatInput);
			pr.setString(2, dateInput);
			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
				return true;
			}else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public static ArrayList<Seat> getOccupiedSeat(int idBus,String dateInput) {
		ArrayList<Seat> list = new ArrayList<Seat>();
		try {
			String sql = "select idSeat from ticket where idBus = ? and date = ?";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
			pr.setInt(1, idBus);
			pr.setString(2, dateInput);
			ResultSet rs = pr.executeQuery();

			while (rs.next()) {
				Seat seat = new Seat(rs.getInt(1));
				list.add(seat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static ArrayList<Seat> getBookedSeat(int idBus,String dateInput, int idUser) {
		ArrayList<Seat> list = new ArrayList<Seat>();
		try {
			String sql = "select idSeat from ticket where idBus = ? and date = ? and idUser = ?";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
			pr.setInt(1, idBus);
			pr.setString(2, dateInput);
			pr.setInt(3, idUser);
			ResultSet rs = pr.executeQuery();

			while (rs.next()) {
				Seat seat = new Seat(rs.getInt(1));
				list.add(seat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}

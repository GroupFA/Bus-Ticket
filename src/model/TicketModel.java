package model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.sun.org.apache.xml.internal.serializer.utils.StringToIntTable;

import entities.Seat;
import entities.Ticket;

public class TicketModel {

	public static ArrayList<Ticket> getListTicket() {
		ArrayList<Ticket> list = new ArrayList<Ticket>();
		try {
			String sql = "SELECT * FROM ticket";
			Statement statement = JDBCConnection.getJDBCConnection().createStatement();
			ResultSet rs = statement.executeQuery(sql);
			

			while (rs.next()) {
	
				int idTicket = rs.getInt("idTicket");
				int idBus = rs.getInt("idBus");
				String idSeat = rs.getString("idSeat");
				int idUser = rs.getInt("idUser");
				String price = rs.getString("price");
				String date = rs.getString("date");
				String departure = rs.getString("departure");
				String destination = rs.getString("destination");
				String phone = rs.getString("phone");
				String time = rs.getString("time");
				String trip = rs.getString("trip");

				String status = rs.getString("status");
		Ticket ticket = new Ticket(idUser, idUser, idUser, status, status, status, status, status, status, status, status, status);
				list.add(ticket); 
			} 
			
		} catch (Exception e) {
			// TODO: handle exception
		}
			
		
			
		return list;

	}
	public static boolean updateStatus(String idTicket, String status) {
		try { 
			String sqlString = "update ticket SET status =? WHERE idTicket=?";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sqlString);
			System.out.println(idTicket+"id sql");
			System.out.println(status+"status");
			pr.setString(1,status);
			pr.setString(2,idTicket ); 
			 pr.executeUpdate();

		} catch (Exception e) {
	System.out.println(e);
		} 
		return false; 
	}
	
	
	public Ticket getOneTicket (int idTicket) {
		
		Connection cnConnection  = new JDBCConnection().getJDBCConnection();
		Ticket tk1 = null ;
		try {
			String sql = "SELECT * FROM ticket where idTicket=?";
			
			PreparedStatement statement = cnConnection.prepareStatement(sql);
				statement.setInt(1, idTicket);
				ResultSet rsResultSet = statement.executeQuery();
				if (rsResultSet.next()) {
					tk1 =new Ticket(rsResultSet.getInt(1), rsResultSet.getInt(2), rsResultSet.getInt(3), rsResultSet.getString(4), 
							rsResultSet.getString(5), rsResultSet.getString(6), rsResultSet.getString(7), rsResultSet.getString(8), 
							rsResultSet.getString(9), rsResultSet.getString(10), rsResultSet.getString(11), rsResultSet.getString(12)) ;
					
					statement.close();
					cnConnection.close();
	
				} 
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return tk1;
		

	}
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
				String idSeat = rs.getString(9);
				String date = rs.getString(11);
				String departure = rs.getString(2);
				String destination = rs.getString(3);
				String phone = rs.getString(4);
				String time = rs.getString(5);
				String trip = rs.getString(6);
				String price = rs.getString(7);
						String status = rs.getString(12);
						
				ticket = new Ticket(idTicket, idBus, idUser, idSeat, departure, destination, phone, time, trip, price, date, status);
				listicket.add(ticket);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listicket;
	}
	public static boolean checkIdSeatAndDate(String idSeatInput,String dateInput) {
		Ticket ticket = null;
		try {
			String sql = "select * from ticket where idSeat = ? and date = ?";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
			pr.setString(1, idSeatInput);
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
				Seat seat = new Seat(rs.getString(1));
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
				Seat seat = new Seat(rs.getString(1));
				list.add(seat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
}
}

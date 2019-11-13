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
import entities.TicketFullname;
import entities.Users;

public class TicketModel {

	public static ArrayList<TicketFullname> getListTicket() {
		ArrayList<TicketFullname> list = new ArrayList<>();
		try {
			String sql = "select idTicket, idBus, departure, destination, user.fullName, phone, time, price,  idSeat, date, status from ticket, user where ticket.idUser = user.idUser;";
			Statement statement = JDBCConnection.getJDBCConnection().createStatement();
			ResultSet rs = statement.executeQuery(sql);

			while (rs.next()) {
				
				int idTicket = rs.getInt("idTicket");
				int idBus = rs.getInt("idBus");
				String departure = rs.getString("departure");
				String destination = rs.getString("destination");
				String fullname = rs.getString("fullName");
				String phone = rs.getString("phone");
				String time = rs.getString("time");
				String price = rs.getString("price");
				
				String idSeat = rs.getString("idSeat");
				String date = rs.getString("date");
				String status = rs.getString("status");
				TicketFullname ticket = new TicketFullname(idTicket, idBus, departure, destination, fullname, phone, time, price, idSeat,
						date, status);
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
	
	
	public static ArrayList<Ticket> getOneUserListTickets(int idUser) {
		ArrayList<Ticket> list1 = new ArrayList<Ticket>();
		try {
			String sql = "SELECT * FROM ticket WHERE idUser=?";
			 
			Connection connection = new JDBCConnection().getJDBCConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, idUser);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int idTicket = rs.getInt("idTicket");
				int idBus = rs.getInt("idBus");
				String idSeat = rs.getString("idSeat");
				 idUser = rs.getInt("idUser");
				String price = rs.getString("price");
				String date = rs.getString("date");
				String departure = rs.getString("departure");
				String destination = rs.getString("destination");
				String phone = rs.getString("phone");
				String time = rs.getString("time");
				String trip = rs.getString("trip");
				String status = rs.getString("status");
				Ticket ticket1= new Ticket(idTicket, idBus, idUser, departure, destination, phone, time, trip, price, date, status, idSeat);
				
				list1.add(ticket1);
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list1;
		
		
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


	public static ArrayList<TicketFullname> filterTicket( String keyFilter) {
		ArrayList<TicketFullname> list = new ArrayList<>();
		try {
			String sql ="select idTicket, idBus, departure, destination, user.fullName, phone, time, price,  idSeat, date, status from ticket, user where ticket.idUser = user.idUser and status =?; ";
			
			Connection connection = new JDBCConnection().getJDBCConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, keyFilter);
			ResultSet rs = statement.executeQuery();
			

			while (rs.next()) {
				int idTicket = rs.getInt("idTicket");
				int idBus = rs.getInt("idBus");
				String departure = rs.getString("departure");
				String destination = rs.getString("destination");
				String fullname = rs.getString("fullName");
				String phone = rs.getString("phone");
				String time = rs.getString("time");
				String price = rs.getString("price");
				
				String idSeat = rs.getString("idSeat");
				String date = rs.getString("date");
				String status = rs.getString("status");
				TicketFullname ticket = new TicketFullname(idTicket, idBus, departure, destination, fullname, phone, time, price, idSeat, date, status);
				list.add(ticket);
			}
			System.out.println(list+"aaaaa44");
		} catch (Exception e) {
			System.out.println(e);
		}

		return list;

	}
	public static ArrayList<TicketFullname> searchTicket( String keySearch) {
		ArrayList<TicketFullname> list = new ArrayList<>();
		try {
			String sql ="select idTicket, idBus, departure, destination, user.fullName, phone, time, price,  idSeat, date, status from ticket,"
					+ " user where ticket.idUser = user.idUser and fullName LIKE '%" + keySearch + "%'  or destination LIKE '%" + keySearch + "%'  or phone LIKE '%" + keySearch + "%' ; ";

			Connection connection = new JDBCConnection().getJDBCConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, keySearch);
			ResultSet rs = statement.executeQuery();
			

			while (rs.next()) {
				int idTicket = rs.getInt("idTicket");
				int idBus = rs.getInt("idBus");
				String departure = rs.getString("departure");
				String destination = rs.getString("destination");
				String fullname = rs.getString("fullName");
				String phone = rs.getString("phone");
				String time = rs.getString("time");
				String price = rs.getString("price");
				
				String idSeat = rs.getString("idSeat");
				String date = rs.getString("date");
				String status = rs.getString("status");
				TicketFullname ticket = new TicketFullname(idTicket, idBus, departure, destination, fullname, phone, time, price, idSeat, date, status);
				list.add(ticket);
			}
			System.out.println(list+"aaaaa44");
		} catch (Exception e) {
			System.out.println(e);
		}

		return list;

	}
	
		
	
	
}

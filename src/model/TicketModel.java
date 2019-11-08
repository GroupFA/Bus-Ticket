package model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.sun.org.apache.xml.internal.serializer.utils.StringToIntTable;


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
				int idSeat = rs.getInt("idSeat");
				int idUser = rs.getInt("idUser");
				String price = rs.getString("price");
				String date = rs.getString("date");
				String departure = rs.getString("departure");
				String destination = rs.getString("destination");
				String phone = rs.getString("phone");
				String time = rs.getString("time");
				String trip = rs.getString("trip");

				String status = rs.getString("status");
		Ticket ticket = new Ticket(idTicket, idBus, idSeat, idUser, departure, destination, phone, time, trip, price, date, status);
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
					tk1 =new Ticket(rsResultSet.getInt(1), rsResultSet.getInt(2), rsResultSet.getInt(3), rsResultSet.getInt(4), 
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
}

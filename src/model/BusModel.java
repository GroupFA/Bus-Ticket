package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import entities.Bus;
import entities.Seat;
import entities.SeatWithStatus;
import entities.Users;

public class BusModel {
	public static ArrayList<Bus> getListBus() {
		
		ArrayList<Bus> listBus =new ArrayList<>();
		try {
			String sql="SELECT * FROM `bus`";
			Statement statement = JDBCConnection.getJDBCConnection().createStatement();
			ResultSet rs = statement.executeQuery(sql);
			System.out.println(rs.next());
			while (rs.next()) {
				
				String departure = rs.getString(2);
				String destination = rs.getString(3);
				String category = rs.getString(4);
				String kilomet = rs.getString(5);
				String  time = rs.getString(6);
				String trip = rs.getString(7);
				String price = rs.getString(8);
				
				int idBus = rs.getInt(1);
				Bus bus =new Bus( departure, destination, category, kilomet, time, trip, price,idBus);
				
				System.out.println(listBus.size()+ bus.toString());
				listBus.add(bus);
				

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return listBus;
		
	}

	public static Bus getIdBus(int idBus) {
		Bus bus = null;
		try {
			String sql = "select * from bus where idBus = ?";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);

			pr.setInt(1, idBus);

			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
				
				String departure = rs.getString(2);
				String destination = rs.getString(3);
				String category = rs.getString(4);
				String kilomet = rs.getString(5);
				String  time = rs.getString(6);
				String trip = rs.getString(7);
				String price = rs.getString(8);
				idBus = rs.getInt(1);
				bus = new Bus(departure, destination, category, kilomet, time, trip, price,idBus);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return bus;
	}
	public static boolean booking( String departure,String n, String destination,
			String time, String price,String date, int idBus, int idUser) {

		try {

			String sql = "INSERT INTO `ticket`( `departure`,`destination`,`time`,`price`, `idBus`,`idUser`,`date`,`idSeat`) VALUES (?,?,?,?,?,?,?,?)";


			
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
			
			pr.setString(1, departure);
			pr.setString(2, destination);
			pr.setString(3, time);
			pr.setString(4,  price);
			pr.setInt(5,  idBus);
			pr.setInt(6,  idUser);
			pr.setString(7,date);
			pr.setString(8,n);
			pr.executeUpdate();


		} catch (Exception e) {

			e.printStackTrace();
		}
		return false;



	}
public static ArrayList<Seat> getListBusSeat(int id) {
		
		ArrayList<Seat> listSeat =new ArrayList<>();
		try {
			String sql="SELECT * FROM `seat` where idBus = "+id;
			Statement statement = JDBCConnection.getJDBCConnection().createStatement();
			ResultSet rs = statement.executeQuery(sql);
			System.out.println(rs.next());
			while (rs.next()) {
				int idSeat = rs.getInt(1);
				
				int idBus = rs.getInt(2);
				Seat seat = new Seat();
				seat.setIdSeat(idSeat);
				seat.setIdBus(idBus);
				
				listSeat.add(seat);
				

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return listSeat;
		
	}

public static ArrayList<SeatWithStatus> getListSeatWithStatus(int id) {
	
	ArrayList<SeatWithStatus> listSeat =new ArrayList<>();
	try {
		String sql="SELECT * FROM `seat` where idBus = "+id;
		Statement statement = JDBCConnection.getJDBCConnection().createStatement();
		ResultSet rs = statement.executeQuery(sql);
		System.out.println(rs.next());
		while (rs.next()) {
			int idSeat = rs.getInt(1);
			
			int idBus = rs.getInt(2);
			SeatWithStatus seat = new SeatWithStatus(idSeat, idBus, 0);
			listSeat.add(seat);
		}

	} catch (Exception e) {
		// TODO: handle exception
	}
	return listSeat;
	
}

}

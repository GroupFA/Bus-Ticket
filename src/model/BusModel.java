package model;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import entities.Bus;
import entities.Users;

public class BusModel {
	public static ArrayList<Bus> getListBus() {
		
		ArrayList<Bus> listBus =new ArrayList<>();
		
		try {
			String sql="SELECT * FROM `bus`";
			Statement statement = JDBCConnection.getJDBCConnection().createStatement();
			ResultSet rs = statement.executeQuery(sql);
			
			while (rs.next()) {// Di chuyển con trỏ xuống bản ghi kế tiếp.
				String departure = rs.getString(2);
				String destination = rs.getString(3);
				String category = rs.getString(4);
				String kilomet = rs.getString(5);
				String  time = rs.getString(6);
				String trip = rs.getString(7);
				String price = rs.getString(8);
				
				int idBus = rs.getInt(1);
				Bus bus =new Bus(idBus, departure, destination, category, kilomet, time, trip, price);
				listBus.add(bus);
				System.out.println(listBus + "aaaaaaa");

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return listBus;
		
	}
}

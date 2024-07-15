package com.patient;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PatientDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
public static boolean validate(String userName,String password){
		
		//ArrayList<Patient> pat = new ArrayList<>();
		
		//create database connection
//		String url = "jdbc:mysql://localhost:3306/e-dochub";
//		String user = "root";
//		String pass = "uchith123";
		
		//validate
		
		try {
			//Class.forName("com.mysql.jdbc.Driver");
//			
//			Connection con = DriverManager.getConnection(url, user, pass);
//			Statement stmt = con.createStatement();
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from patient where username='"+userName+"'and password='"+password+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			//ResultSet rs = stmt.executeQuery(sql);
			
		
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
//-------------------------------------------------------------------------------------------------------------------
	
	public static List<Patient> getPatient(String userName,String password){
		
		ArrayList<Patient> patient = new ArrayList<>();
		
		//create database connection
//		String url = "jdbc:mysql://localhost:3306/e-dochub";
//		String user = "root";
//		String pass = "uchith123";
		
		//validate
		
		try {
			//Class.forName("com.mysql.jdbc.Driver");
//			
//			Connection con = DriverManager.getConnection(url, user, pass);
//			Statement stmt = con.createStatement();
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from patient where username='"+userName+"'";
			
			rs = stmt.executeQuery(sql);
			
			//ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String age = rs.getString(4);
				String phone = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);
			      
				Patient p = new Patient( id,name,email,age,phone,userU,passU);
				patient.add(p);
			
			}
			
		}
		catch(Exception e) {
			
		}
		
		return patient;
	}
	
	public static boolean insertuser(String name,String email,String age,String phone,String userU,String passU) {
		
		boolean isSuccess = false;
		
		//insert database connection
		
//		String url = "jdbc:mysql://localhost:3306/e-dochub";
//		String user = "root";
//		String pass = "uchith123";
		
		try {
            Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DBconnect.getConnection();
			Statement stmt = con.createStatement();
			
			String sql = "insert into patient values (0,'"+name+"','"+email+"','"+age+"','"+phone+"','"+userU+"','"+passU+"')";
			int rs = stmt.executeUpdate(sql); 
			
			if(rs > 0) {
				isSuccess = true;
             }else {
            	 isSuccess = false;
             }
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	    
	    
		
		return isSuccess;
	}
	
	//update user datails
	
	public static boolean updatepatient(String id,String name,String email,String age,String phone,String username,String password) {
		
		
		try {
			
			// Class.forName("com.mysql.jdbc.Driver");
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "update patient set name='"+name+"',email='"+email+"',age='"+age+"',phone='"+phone+"' where id='"+id+"'";
			
			int rs=stmt.executeUpdate(sql);
			
			//check the upadate secuss or unseccess
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			System.out.println("Error " + e);
		}
		
		
		
		return isSuccess;
	}
	
	public static List<Patient> getPatientDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Patient> pat = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from patient where id='"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			//next methord is return the boolean values 0 or 1
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String age = rs.getString(4);
				String phone = rs.getString(5);
				String username = rs.getString(6);
				String password = rs.getString(7);
				
				Patient p = new Patient(id,name,email,age,phone,username,password);
				pat.add(p);
				
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pat;
	  }
	
	public static boolean deletePatirnt(String id) {
		
		//intiger value convert to the String value use the rapper class
		
		int convID =Integer.parseInt(id);
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from patient where id='"+convID+"'";
			
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	

}

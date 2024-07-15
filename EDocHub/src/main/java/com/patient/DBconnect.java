package com.patient;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/e-dochub";
	private static String user = "root";
	private static String pass = "uchith123";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			//datacase connection eka hadanna use karana class eka wenne meka
			 Class.forName("com.mysql.jdbc.Driver");
			 
			 con = DriverManager.getConnection(url,user,pass);
			
		}
		catch(Exception e) {
			System.out.println("Database Connection is not success!!!");
		}
		return con;
	}

}

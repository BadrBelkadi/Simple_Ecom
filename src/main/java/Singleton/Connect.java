package Singleton;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
	private static Connection con;
	static {
		try {
			/*************Oracle DB*********************/
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//		    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system","0000");
//		    System.out.println("Working oracle");
			
			/************MYSQL DB***********************/
			Class.forName("com.mysql.cj.jdbc.Driver");		
			con=DriverManager.getConnection("jdbc:mysql://localhost/micro_projet","root","");
//			System.out.println("Working mysql");
			
		}catch(ClassNotFoundException e) {
			System.out.println("Probléme au niveau du pilote");
			
		}
		catch(SQLException e) {
			System.out.println("Probléme au niveau de base au accès au données");
		}
	}
	
	public static Connection getCon() {
		return con;
	}
	public static void main(String[] args) {
		System.out.println(getCon());
	}
}

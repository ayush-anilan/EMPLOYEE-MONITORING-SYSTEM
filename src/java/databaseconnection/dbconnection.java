package databaseconnection;


import java.sql.*;

public class dbconnection
{
	static Connection con;
	public static Connection getConnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","");
                        System.out.println("connected rin");
		}
		catch(Exception e)
		{
			System.out.println("class error");
		}
		return con;
	}
	
}

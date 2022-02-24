package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Commonconnection {
public Connection getConnection(){
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=(Connection) DriverManager.getConnection("jbdc:oracle:thin:@localhost:1521:orcl","testproject","testproject");
		return con;
		
}
catch(Exception e){
	System.out.println(e);
}
	return null;
}
}
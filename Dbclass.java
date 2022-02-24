package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public class Dbclass {
public static void main(String args[]){
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=(Connection) DriverManager.getConnection("jbdc:oracle:thin:@localhost:1521:orcl","testproject","testproject");
		Statement st=con.createStatement();
		String sql="SELECT * FROM REGISTER";
		ResultSet rs =st.executeQuery(sql);
		 while (rs.next()) {
			 
             int id = rs.getInt("id");
             String name = rs.getString("name");
             String email = rs.getString("email");
             System.out.println(id + " \t" + name
                                + " \t" + email);
         }
	}
	catch(Exception e){
		System.out.println(e);
	}
}

}

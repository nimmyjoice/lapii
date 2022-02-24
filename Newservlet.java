package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Newservlet
 */
@WebServlet("/Newservlet")
public class Newservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Newservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		String n=request.getParameter("custname");
		String p=request.getParameter("email");
		String e=request.getParameter("issue");
		String c=request.getParameter("country");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=(Connection) DriverManager.getConnection("jbdc:oracle:thin:@localhost:1521:orcl","testproject","testproject");
			PreparedStatement ps= ((java.sql.Connection) con).prepareStatement("insert into Customers values (?,?,?,?,?)");
			ps.setInt(1, 1);
			ps.setString(2, n);
			ps.setString(3, p);
			ps.setString(4, e);
			ps.setString(5, c);
			int i=ps.executeUpdate();
			if(i>0)
				out.print("you are sucessfully registered");
			
		}catch(Exception e1){
			System.out.println(e1);
		
		}
		out.close();
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.net.www.content.text.plain;

/**
 * Servlet implementation class Customer1
 */
@WebServlet("/Customer1")
public class Customer1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Customer1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		String c=request.getParameter("customer_id");
		String f=request.getParameter("fname");

		String l=request.getParameter("lname");
		String p=request.getParameter("phone");
		String e=request.getParameter("email");
		ResultSet rs=snow(f);
		request.setAttribute("data", rs);
		RequestDispatcher rd=request.getRequestDispatcher("customer1jsp2.jsp");
		rd.forward(request, response);
		
		
		try{
			Commonconnection con=new Commonconnection();
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			Connection con=DriverManager.getConnection("jbdc:oracle:thin:@localhost:1521:orcl","testproject","testproject");
			PreparedStatement ps=con.getConnection().prepareStatement("insert into customer1 values(?,?,?,?,?)");
			ps.setString(1, c);
			ps.setString(2, f);
			ps.setString(3, l);
			ps.setString(4, p);
			ps.setString(5, e);
			int i=ps.executeUpdate();
			if(i>0){
				out.print("registerd");
				
			}
			
			}
		catch(Exception e1){
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
	public ResultSet snow(String n) {
		ResultSet rs=null;
		try{
			Commonconnection con=new Commonconnection();
			String sql="Select * from customer1 where firstname='"+n+"'";
			rs=con.getConnection().createStatement().executeQuery(sql);
			
			
	}catch(Exception e1){
		System.out.println(e1);
	}
		return rs;
		
	}

}

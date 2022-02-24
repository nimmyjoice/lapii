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



/**
 * Servlet implementation class Example01
 */
@WebServlet("/Example01")
public class Example01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Example01() {
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
		String c=request.getParameter("cname");
		String m= request.getParameter("mobno");
		String g=request.getParameter("Gender");
		String co=request.getParameter("country");
		System.out.println("output......."+c+" "+m+" "+g+" "+co);
		ResultSet rs=show(co);
		request.setAttribute("data", rs);
		RequestDispatcher rd=request.getRequestDispatcher("NewFile5.jsp");
		rd.forward(request, response);
		
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","testproject","testproject");
			PreparedStatement ps= con.prepareStatement("INSERT INTO EXAMPLE VALUES(?,?,?,?)");
			ps.setString(1, c);
			ps.setString(2, m);
		ps.setString(3,g);
		ps.setString(4, co);
		int i=ps.executeUpdate();
		if(i>0){
			out.print("successfully registered");
		}
		}
		catch(Exception e){
			System.out.println("e");
			
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
public ResultSet show(String st){
	ResultSet rs=null;
	try{
		Commonconnection con=new Commonconnection();
		String sql="SELECT * FROM EXAMPLE WHERE country='"+st+"'";
		rs=con.getConnection().createStatement().executeQuery(sql);
		
	}catch(Exception e){
		System.out.println(e);
		
	}
	return rs;
}
}

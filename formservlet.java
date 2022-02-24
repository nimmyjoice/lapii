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
 * Servlet implementation class formservlet
 */
@WebServlet("/formservlet")
public class formservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public formservlet() {
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
		String f=request.getParameter("fname");
		String l=request.getParameter("lname");
		String m=request.getParameter("mobno");
		String e=request.getParameter("email");
		String d=request.getParameter("dob");
		String c=request.getParameter("country");
		System.out.println("............."+c);
		ResultSet rs=showtable(c);
		request.setAttribute("datalist",rs);
		RequestDispatcher rd=request.getRequestDispatcher("formcreate2.jsp");
		rd.forward(request, response);
		
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=(Connection) DriverManager.getConnection("jbdc:oracle:thin:@localhost:1521:orcl","testproject","testproject");
		PreparedStatement ps= ((java.sql.Connection) con).prepareStatement("insert into registerform values (?,?,?,?,?,?)");
		
		ps.setString(1,f );
		ps.setString(2, l);
		ps.setString(3, m);
		ps.setString(4, e);
		ps.setString(5, d);
		ps.setString(6, c);
		
		int i=ps.executeUpdate();
		if(i>0)
			out.print("you are sucessfully registered");
		
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
	public ResultSet showtable(String str){
		ResultSet rs=null;
		try{
			Commonconnection con=new Commonconnection();
			String sql="SELECT * FROM REGISTERFORM WHERE country='"+str+"'";
			rs=con.getConnection().createStatement().executeQuery(sql);
			System.out.println(rs);
		}
		catch(Exception e){
			System.out.println(e);
		}
		return rs;
}}

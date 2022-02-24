package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Combo
 */
@WebServlet("/Combo")
public class lap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lap() {
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
		String n=request.getParameter("laptopname");
		System.out.println("............."+n);
		ResultSet rs=showtable(n);
		request.setAttribute("datalist",rs);
		RequestDispatcher rd=request.getRequestDispatcher("laptop.jsp");
		rd.forward(request, response);
		
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
	String sql="SELECT price FROM registerform WHERE laptopname='"+str+"'";
	rs=con.getConnection().createStatement().executeQuery(sql);
	
}
catch(Exception e){
	System.out.println(e);
}
return rs;

}

}

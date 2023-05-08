package survey;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class loginVal extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","charan");
		PreparedStatement st=con.prepareStatement("SELECT COUNT(*) FROM survey_esd1 WHERE username=? AND password=?");
		HttpSession session=req.getSession();
		session.setAttribute("username", username);
		st.setString(1, username);
		st.setString(2, password);
		ResultSet rs=st.executeQuery();
		if(rs.next() && rs.getInt(1)>0)
		{
			HttpSession s = req.getSession();
			s.setAttribute("username",username);
			res.sendRedirect("userhomepage.jsp");
		}
		else
		{
			req.setAttribute("error1", "Invalid UserName Or Password");
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.include(req, res);
		}
		
		rs.close();
		st.close();
		con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}
}


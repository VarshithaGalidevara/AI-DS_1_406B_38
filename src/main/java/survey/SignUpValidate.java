package survey;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SignUpValidate extends HttpServlet

{	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String email =req.getParameter("email");
		
		boolean isUsernameAvailable = true;
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","charan");
		System.out.println("db connected");
		Statement st1=con.createStatement();
		ResultSet rs=st1.executeQuery("select * from survey_esd1");
		 while (rs.next()) {
	         String existingUsername = rs.getString("username");
	         if (existingUsername.equals(username)) {
	             isUsernameAvailable = false;
	             break;
	         }
	     }
		 
		 if (isUsernameAvailable) {
			PreparedStatement st=con.prepareStatement("INSERT INTO survey_esd1(Username,Password,Email) VALUES (?, ?, ?)");
			st.setString(1,username);
			st.setString(2,password);
			st.setString(3,email);
				
				
			st.executeUpdate();
			res.sendRedirect("login.jsp");
	     }
		 else 
	     {
			req.setAttribute("error","Username already exists");
			RequestDispatcher rd=req.getRequestDispatcher("SignUp.jsp");
			rd.include(req,res);
			System.out.println("user already exists");
			
	     }
		
		}
		catch(Exception e){
			System.out.println(e);
		}
	}

}

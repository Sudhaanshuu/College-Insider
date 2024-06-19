import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddStudyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String personName = request.getParameter("person_name");
    	String personEmail = request.getParameter("person_email");
    	String subject = request.getParameter("subject");

    	try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            PreparedStatement ps = con.prepareStatement("INSERT INTO group_study_posts (name, email, subject) VALUES (?, ?, ?)");
    	    ps.setString(1, personName);
    	    ps.setString(2, personEmail);
    	    ps.setString(3, subject);
    	    ps.executeUpdate();
    	} catch (Exception e) {
    	    e.printStackTrace();
    	}



        // Redirect to the lostAndFound.jsp page to display the updated list of items
        response.sendRedirect("groupStudy.jsp");
    }
}

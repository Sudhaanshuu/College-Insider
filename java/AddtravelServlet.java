import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddtravelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String personName = request.getParameter("person_name");
        String personEmail = request.getParameter("person_email");
        String medium = request.getParameter("medium");
        String source = request.getParameter("source");
        String destination = request.getParameter("destination");
        String explanation = request.getParameter("explanation");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            PreparedStatement ps = con.prepareStatement("INSERT INTO common_travel_posts (name, email, medium, source, destination, explanation) VALUES (?, ?, ?, ?, ?, ?)");
            ps.setString(1, personName);
            ps.setString(2, personEmail);
            ps.setString(3, medium);
            ps.setString(4, source);
            ps.setString(5, destination);
            ps.setString(6, explanation);
            ps.executeUpdate();
            con.close();
    	} catch (Exception e) {
    	    e.printStackTrace();
    	}



        // Redirect to the lostAndFound.jsp page to display the updated list of items
        response.sendRedirect("commonTravel.jsp");
    }
}

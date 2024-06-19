import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddroomfinderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String personName = request.getParameter("person_name");
        String personEmail = request.getParameter("person_email");
        String preferredLocation = request.getParameter("preferred_location");
        int roommatesNeeded = Integer.parseInt(request.getParameter("roommates_needed"));
        BigDecimal budget = new BigDecimal(request.getParameter("budget"));

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            PreparedStatement ps = con.prepareStatement("INSERT INTO roommate_finder_posts (name, email, preferred_location, roommates_needed, budget) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, personName);
            ps.setString(2, personEmail);
            ps.setString(3, preferredLocation);
            ps.setInt(4, roommatesNeeded);
            ps.setBigDecimal(5, budget);
            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }



        // Redirect to the lostAndFound.jsp page to display the updated list of items
        response.sendRedirect("roommateFinder.jsp");
    }
}

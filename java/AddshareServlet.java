import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddshareServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String userName = request.getParameter("user_name");
        String userEmail = request.getParameter("user_email");
        String accessoryName = request.getParameter("accessory_name");
        String accessoryDescription = request.getParameter("accessory_description");
        String accessoryCategory = request.getParameter("accessory_category");
        String location = request.getParameter("location");
        String availability = request.getParameter("availability");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            PreparedStatement ps = con.prepareStatement("INSERT INTO share_accessory_posts (user_name, user_email, accessory_name, accessory_description, accessory_category, location, availability) VALUES (?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, userName);
            ps.setString(2, userEmail);
            ps.setString(3, accessoryName);
            ps.setString(4, accessoryDescription);
            ps.setString(5, accessoryCategory);
            ps.setString(6, location);
            ps.setString(7, availability);
            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }



        // Redirect to the lostAndFound.jsp page to display the updated list of items
        response.sendRedirect("shareAccessory.jsp");
    }
}

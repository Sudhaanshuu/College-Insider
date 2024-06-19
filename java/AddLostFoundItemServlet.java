import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddLostFoundItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        String itemName = request.getParameter("item_name");
        String details = request.getParameter("details");
        String email=request.getParameter("person_email");
        String name= request.getParameter("person_name");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            PreparedStatement ps = con.prepareStatement("INSERT INTO lost_found (type, item_name, details,person_email,person_name) VALUES (?, ?, ?,?,?)");
            ps.setString(1, type);
            ps.setString(2, itemName);
            ps.setString(3, details);
            ps.setString(4, email);
            ps.setString(5, name);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect to the lostAndFound.jsp page to display the updated list of items
        response.sendRedirect("lostAndFound.jsp");
    }
}

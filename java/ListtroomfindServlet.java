import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ListtroomfindServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM roommate_finder_posts");

            while (rs.next()) {
                out.println("<div>");
                out.println("<h2>Roommate Finder Details</h2>");
                out.println("<p>Name: " + rs.getString("name") + "</p>");
                out.println("<p>Email: " + rs.getString("email") + "</p>");
                out.println("<p>Preferred Location: " + rs.getString("preferred_location") + "</p>");
                out.println("<p>Roommates Needed: " + rs.getInt("roommates_needed") + "</p>");
                out.println("<p>Budget: $" + rs.getBigDecimal("budget") + "</p>");
                out.println("</div>");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        out.close();
    }
}

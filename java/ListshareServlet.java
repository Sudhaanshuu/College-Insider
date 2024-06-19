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

public class ListshareServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM share_accessory_posts");

            while (rs.next()) {
                out.println("<div>");
                out.println("<h2>Accessory Details</h2>");
                out.println("<p>Name: " + rs.getString("user_name") + "</p>");
                out.println("<p>Email: " + rs.getString("user_email") + "</p>");
                out.println("<p>Accessory Name: " + rs.getString("accessory_name") + "</p>");
                out.println("<p>Description: " + rs.getString("accessory_description") + "</p>");
                out.println("<p>Category: " + rs.getString("accessory_category") + "</p>");
                out.println("<p>Location: " + rs.getString("location") + "</p>");
                out.println("<p>Availability: " + rs.getString("availability") + "</p>");
                out.println("</div>");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        out.close();
    }
}

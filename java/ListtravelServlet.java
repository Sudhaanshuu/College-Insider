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

public class ListtravelServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM common_travel_posts");

            while (rs.next()) {
                out.println("<div>");
                out.println("<h2>Travel Details</h2>");
                out.println("<p>Name: " + rs.getString("name") + "</p>");
                out.println("<p>Email: " + rs.getString("email") + "</p>");
                out.println("<p>Medium: " + rs.getString("medium") + "</p>");
                out.println("<p>Source: " + rs.getString("source") + "</p>");
                out.println("<p>Destination: " + rs.getString("destination") + "</p>");
                out.println("<p>Explanation: " + rs.getString("explanation") + "</p>");
                out.println("</div>");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        out.close();
    }
}

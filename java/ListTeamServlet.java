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

public class ListTeamServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM team_mate_requirement");

            while (rs.next()) {
                out.println("<div>");
                out.println("<h2>" + rs.getString("event_name") + "</h2>");
                out.println("<p>Posted By: " + rs.getString("person_name") + "</p>");
                out.println("<p>Contact Email: " + rs.getString("person_email") + "</p>");
                out.println("<p>Description: " + rs.getString("description") + "</p>");
                out.println("<p>Skills Required: " + rs.getString("skills_required") + "</p>");
                out.println("<p>Preferred Qualifications: " + rs.getString("preferred_qualifications") + "</p>");
                out.println("<p>Contact Information: " + rs.getString("contact_information") + "</p>");
                out.println("</div>");
            }

            
        } catch (Exception e) {
            e.printStackTrace();
        }

        out.close();
    }
}

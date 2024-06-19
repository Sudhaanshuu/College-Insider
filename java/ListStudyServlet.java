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

public class ListStudyServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            try {
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM group_study_posts");

                while (rs.next()) {
                    out.println("<div>");
                    out.println("<h2>" + rs.getString("subject") + "</h2>");
                    out.println("<p>Posted By: " + rs.getString("name") + "</p>");
                    out.println("<p>Contact Email: " + rs.getString("email") + "</p>");
                    out.println("</div>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }


            
        } catch (Exception e) {
            e.printStackTrace();
        }

        out.close();
    }
}

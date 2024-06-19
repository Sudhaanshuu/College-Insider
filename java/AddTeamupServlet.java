import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddTeamupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String personName = request.getParameter("person_name");
    	String personEmail = request.getParameter("person_email");
    	String eventName = request.getParameter("event_name");
    	String description = request.getParameter("description");
    	String skillsRequired = request.getParameter("skills_required");
    	String preferredQualifications = request.getParameter("preferred_qualifications");
    	String contactInformation = request.getParameter("contact_information");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");
            PreparedStatement ps = con.prepareStatement("INSERT INTO team_mate_requirement (person_name, person_email, event_name, description, skills_required, preferred_qualifications, contact_information) VALUES (?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, personName);
            ps.setString(2, personEmail);
            ps.setString(3, eventName);
            ps.setString(4, description);
            ps.setString(5, skillsRequired);
            ps.setString(6, preferredQualifications);
            ps.setString(7, contactInformation);
            ps.executeUpdate();
        }
catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect to the lostAndFound.jsp page to display the updated list of items
        response.sendRedirect("teamUp.jsp");
    }
}

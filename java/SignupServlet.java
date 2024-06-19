import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SignupServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Check if the passwords match
        if (!password.equals(confirmPassword)) {
            // Redirect back to the signup page if passwords do not match
            response.sendRedirect("signup.jsp?error=Passwords do not match");
            return;
        }

        // Database connection and insert statement
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/college_insider", "root", "418667");

            String query = "INSERT INTO users (name, age, email, password) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, age);
            ps.setString(3, email);
            ps.setString(4, password);

            int result = ps.executeUpdate();
            if (result > 0) {
                // Redirect to the login page after successful registration
                response.sendRedirect("login.jsp");
            } else {
                // Redirect back to the signup page if the registration fails
                response.sendRedirect("signup.jsp?error=Registration failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

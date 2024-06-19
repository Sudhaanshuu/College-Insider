import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 3438048488439629217L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        boolean loggedIn = false;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next() && password.equals(rs.getString("password"))) {
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                session.setAttribute("isLoggedIn", true);
                loggedIn = true;
            }
            
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        if (loggedIn) {
            response.sendRedirect("index.jsp");
        } else {
        
            request.setAttribute("loginError", "Invalid email or password");
           
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}

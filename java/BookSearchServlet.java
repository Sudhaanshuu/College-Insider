import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BookSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookName = request.getParameter("bookName");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_insider", "root", "418667");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM books WHERE name = ?");
            ps.setString(1, bookName);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String bookDetails = "Book Name: " + rs.getString("name") +
                                     "<br>Author Name: " + rs.getString("author") +
                                     "<br>Edition: " + rs.getString("edition") +
                                     "<br>Available Copies: " + rs.getInt("copies");
                response.getWriter().write(bookDetails);
            } else {
                response.getWriter().write("This book is not in the library.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

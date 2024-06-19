<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Boolean isLoggedIn = (Boolean) session.getAttribute("isLoggedIn");
    if (isLoggedIn == null || !isLoggedIn) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Share Accessory | College Insider</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

<link href="assets/icofont/icofont.min.css" rel="stylesheet">

<style type="text/css">
.container3 {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}

.left-col,
.right-col {
    flex: 0 0 48%; /* Adjust as needed */
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.left-col h2,
.right-col h2 {
    margin-bottom: 15px;
    font-size: 20px;
}

form label {
    font-weight: bold;
}

form input[type="text"],
form textarea,
form select {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

form input[type="submit"] {
    background-color: #eb5d1e;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
}

form input[type="submit"]:hover {
    background-color: #ff7f4d;
}

.card {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 15px;
    margin-bottom: 15px;
}

.card h3 {
    margin-top: 0;
}

.card p {
    margin-bottom: 5px;
}

.section-title p {
    padding-bottom: 15px;
    margin-bottom: 15px;
    position: relative;
    font-size: 32px;
    font-weight: 700;
    color: #4e4039;
}

.section-title p::after {
    content: '';
    position: absolute;
    display: block;
    width: 60px;
    height: 2px;
    background: #eb5d1e;
    bottom: 0;
    left: calc(50% - 30px);
}</style>

</head>
<body>
<!-- Navbar -->

<div id="navbar">
    <a href="index.jsp">Home</a>
    <a href="visitorPass.jsp">Visitor Pass</a>
    <a href="lostAndFound.jsp">Lost and Found</a>
    <a href="teamUp.jsp">Team Up</a>
    <a href="groupStudy.jsp">Group Study</a>
    <a href="commonTravel.jsp">Common Travel</a>
    <a href="roommateFinder.jsp">Roomate Finder</a>
    <a href="bookSearch.jsp">Book Search</a>
    <a href="shareAccessory.jsp">Share Accessory</a>
</div>

<!-- Intro -->
<div class="intro">
<div class="section-title" style="margin-top: 70px; ">
        <h2>Share Accessory</h2>
        <p>Borrow Accessory</p>
    </div>
<div class="container1" style="padding-left:40px">
    <div class="image-container1">
    <img src="assets/school.jpg" alt="Intro Image" style="height: 300px;">
</div>
    <div class="text-container">
        <h2>Share Accessory</h2>
        The "Share Accessory" feature on College Insider facilitates the exchange of various items among students. Users can post details about accessories they are willing to share, including their name, email, accessory name, description, category, location, and availability. This feature promotes collaboration and resource sharing within the student community, allowing individuals to lend or borrow accessories as needed. It enhances convenience and fosters a sense of community by providing a platform for students to easily connect and share items, thereby reducing the need for purchasing new ones and promoting sustainable practices.
</div>
</div>
<body>
<div class="section-title">


        <p>See Posts</p>
        
    </div>
    <div class="container3" style="padding:40px">
    
        <div class="left-col">
        <div class="section-title">
            <h2>Post Yours</h2>
            <p>Adding New</p>
            </div>
            <form action="AddshareServlet" method="post">
    <label for="user_name">Your Name:</label><br>
    <input type="text" id="user_name" name="user_name"><br>

    <label for="user_email">Your Email:</label><br>
    <input type="text" id="user_email" name="user_email"><br>

    <label for="accessory_name">Accessory Name:</label><br>
    <input type="text" id="accessory_name" name="accessory_name"><br>

    <label for="accessory_description">Accessory Description:</label><br>
    <textarea id="accessory_description" name="accessory_description"></textarea><br>

    <label for="accessory_category">Accessory Category:</label><br>
    <input type="text" id="accessory_category" name="accessory_category"><br>

    <label for="location">Location:</label><br>
    <input type="text" id="location" name="location"><br>

    <label for="availability">Availability:</label><br>
    <input type="text" id="availability" name="availability"><br>

    <input type="submit" value="Submit">
</form>



        </div>
        <div class="right-col">
        <div class="section-title">
            <h2>Display Query</h2>
            <p>Other Accessory Need</p>
            </div>
            
   <div id="posts">
   
    <jsp:include page="ListshareServlet" /> 
                
                </div>
            
        </div>
    </div>
<footer id="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6 footer-contact">
                        <h3>College Insider</h3>
                        <p>
                            Bidhyanagar <br> Mahura, Bhubaneswar<br> Odisha <br><br>
                            <strong>Phone:</strong> +91 8252228793<br>
                            <strong>Email:</strong> sudhaanshuu@gmail.com<br>
                        </p>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Useful Links</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="index.jsp">Home</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="index.jsp">About us</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#features">Services</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Our Services</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="visitorPass.jsp">Visitor Pass</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="bookSearch.jsp">Library Inventory</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="lostAndFound.jsp">Lost And Found</a></li>
                        </ul>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Team Members</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Aman Ujwal Toppo</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Arpita Mangaraj</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Subhasmita Nayak</a></li>
                        </ul>
                    </div>

                    

                </div>
            </div>
        </div>

        <div class="container py-4">
            <div class="copyright">
                &copy; Copyright <strong><span>Sudhanshu</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                Designed by <a href="https://sudhanshuuu.netlify.app/">Sudhanshu</a>
            </div>
        </div>
    </footer>
    
</body>
</html>


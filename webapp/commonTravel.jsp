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
<title>Travling | College Insider</title>
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
        <h2>Common Travling</h2>
        <p>Find friends for travling</p>
    </div>
<div class="container1" style="padding-left:40px">
    <div class="image-container1">
    <img src="assets/travel.jpg" alt="Intro Image" style="height: 300px;">
</div>
    <div class="text-container">
        <h2>Travling together</h2>
The common traveling feature facilitates collaboration among travelers by providing a platform to coordinate journeys. It allows users to share travel plans, seek companions, and split expenses for a more cost-effective and sociable experience. Through this feature, individuals can connect with like-minded travelers, whether for leisure or commuting purposes, enhancing safety and companionship. By offering a centralized hub for arranging shared transportation, such as flights, trains, or buses, it optimizes resource utilization and reduces environmental impact. Additionally, travelers can exchange insights, tips, and local knowledge, enriching their travel experiences and fostering a sense of community among participants, thereby promoting a more sustainable and enjoyable travel culture.
</div>
</div>
<body>
<div class="section-title">


        <p>See Travling plans</p>
        
    </div>
    <div class="container3" style="padding:40px">
    
        <div class="left-col">
        <div class="section-title">
            <h2>Post Yours</h2>
            <p>Adding New</p>
            </div>
            <form action="AddtravelServlet" method="post">
    
    <label for="person_name">Your Name:</label><br>
    <input type="text" id="person_name" name="person_name"><br>

    <label for="person_email">Your Email:</label><br>
    <input type="text" id="person_email" name="person_email"><br>

    <label for="medium">Medium:</label><br>
    <input type="text" id="medium" name="medium"><br>

    <label for="source">Source:</label><br>
    <input type="text" id="source" name="source"><br>

    <label for="destination">Destination:</label><br>
    <input type="text" id="destination" name="destination"><br>

    <label for="explanation">Explanation:</label><br>
    <textarea id="explanation" name="explanation"></textarea><br>

    <input type="submit" value="Submit">
</form>

        </div>
        <div class="right-col">
        <div class="section-title">
            <h2>Display Query</h2>
            <p>Travling Plans</p>
            </div>
            
   <div id="posts">
   
    <jsp:include page="ListtravelServlet" /> 
                
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


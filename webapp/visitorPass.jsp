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
<title>Visitor Pass | College Insider</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

<link href="assets/icofont/icofont.min.css" rel="stylesheet">

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
    <a href="roommateFinder.jsp">Roommate Finder</a>
    <a href="bookSearch.jsp">Book Search</a>
    <a href="shareAccessory.jsp">Share Accessory</a>
</div>

<!-- Intro -->
<div class="intro">
<div class="section-title" style="margin-top: 70px; ">
        <h2>Visitor Pass</h2>
        <p>Explore College Cummunity</p>
    </div>
<div class="container1" style="padding-left:40px">
    <div class="image-container1">
    <img src="assets/Vist.jpg" alt="Intro Image" style="height: 300px;">
</div>
    <div class="text-container">
        <h2>Visitor Pass</h2>
        <p>Visitor pass is a feature aimed at providing students with hassle-free access to any college campus. It essentially allows students to obtain passes that enable them to explore the culture and facilities of various campuses without encountering any administrative hurdles. This feature not only facilitates student visits but also encourages them to immerse themselves in the unique atmosphere of different educational institutions. By offering this service, College Insider aims to enhance students' experiences by giving them the opportunity to broaden their horizons and gain valuable insights into diverse campus environments.In a bustling academic environment where students are constantly seeking opportunities for growth and enrichment, the visitor pass feature serves as a valuable tool for fostering exploration and learning. By removing barriers to campus access, College Insider empowers students to engage with different educational settings, interact with peers from various backgrounds.</p>
    </div>
</div>
</div>

<!-- Apply -->

<section id="visitor-pass" class="visitor-pass section-bg">
    <div class="container">
        <div class="section-title" data-aos="fade-up">
            <h2>Visitor Pass Request</h2>
            <p>Apply for a Visitor Pass</p>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <form action="https://formspree.io/f/xqkrzged" method="post" role="form" class="php-email-form">
                    <div class="form-group">
                        <label for="name">Your Name</label>
                        <input type="text" name="name" class="form-control" id="name" required>
                    </div>
                    <div class="form-group">
                        <label for="regNumber">Registration Number</label>
                        <input type="text" class="form-control" name="regNumber" id="regNumber" required>
                    </div>
                    <div class="form-group">
                        <label for="college">College Visiting Pass</label>
                        <input type="text" class="form-control" name="college" id="college" required>
                    </div>
                    <div class="form-group">
                        <label for="collegeName">Your College Name</label>
                        <input type="text" class="form-control" name="collegeName" id="collegeName" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Your Email</label>
                        <input type="email" class="form-control" name="email" id="email" required>
                    </div>
                    <div class="text-center"><button type="submit">Submit</button></div>
                </form>
            </div>
        </div>
    </div>
</section>


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

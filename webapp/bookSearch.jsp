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
<title>Book Search | College Insider</title>
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
        <h2>Book Seearch</h2>
        <p>Explore College Libray</p>
    </div>
<div class="container1" style="padding-left:40px">
    <div class="image-container1">
    <img src="assets/book.jpg" alt="Intro Image" style="height: 300px;">
</div>
    <div class="text-container">
        <h2>Book Search</h2>
    <p>The book feature on College Insider simplifies the arduous task of locating specific books within the library. It allows students to effortlessly search for the availability of a particular book, eliminating the need for fruitless searches and saving valuable time. By providing instant access to the library's book inventory, this feature streamlines the process of finding required reading materials, ensuring that students can efficiently locate the resources they need to support their academic endeavors.Furthermore, the book feature enhances students' academic experiences by offering a comprehensive database of available books. With just a few clicks, students can ascertain whether a desired book is in stock, enabling them to plan their library visits more effectively. 
    </p></div>
</div>
</div>

<!-- Apply -->

<section id="book-search" class="book-search section-bg">
    <div class="container">
        <div class="section-title">
        <h2>Book Search</h2>
        <p>Search for a book in the library</p>
    </div>

        <div class="row">
            <div class="col-lg-12">
                <form id="book-search-form" action="BookSearchServlet" method="post" role="form">
                    <div class="form-group">
                        <label for="bookName">Book Name</label>
                        <input type="text" name="bookName" class="form-control" id="bookName" required>
                    </div>
                    <div class="text-center"><button type="submit">Search</button></div>
                </form>
                <div id="book-details"></div>
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
     <script>
    document.getElementById('book-search-form').addEventListener('submit', function(event) {
    event.preventDefault();

    var bookName = document.getElementById('bookName').value;

    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'BookSearchServlet', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send('bookName=' + encodeURIComponent(bookName));

    xhr.onload = function() {
        if (this.status == 200) {
            // Update the book-details div with the response
            var bookDetailsDiv = document.getElementById('book-details');
            bookDetailsDiv.innerHTML = this.responseText;

            // Add some CSS for styling
            bookDetailsDiv.style.border = '1px solid black';
            bookDetailsDiv.style.padding = '10px';
            bookDetailsDiv.style.marginTop = '10px';
        }
    };
});
    </script>

</body>
</html>

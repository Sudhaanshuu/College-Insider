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
<title>Home || College Insider</title>
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
        <h2>Introduction</h2>
        <p>College Insider Help Form</p>
    </div>
<div class="container1" style="padding-left:40px">
    <div class="image-container1">
    <img src="assets/intro.jpg" alt="Intro Image" style="height: 300px;">
</div>
    <div class="text-container">
        <h2>College Insider</h2>
        <p>College Insider is a comprehensive platform designed to cater to the myriad challenges students face throughout their academic journey. From booking visitor passes to locating lost items, teaming up for collaborative projects to forming study groups, planning common travel to finding compatible roommates, searching for essential books to sharing accessories, our platform offers a wide array of features to streamline the student experience.
Imagine a bustling campus where students are constantly juggling numerous responsibilities and tasks.</p>
    </div>
</div>
</div>

<!-- Some Images  -->
<div class="photos">
    <div class="section-title">
        <h2>Images</h2>
        <p>Explore the Community</p>
    </div>
    <div class="slider-container">
        <div class="image-slider">
            <div class="slide"><img src="assets/img1.jpg" alt="Image 1"></div>
            <div class="slide"><img src="assets/img2.jpg" alt="Image 2"></div>
            <div class="slide"><img src="assets/img3.jpg" alt="Image 3"></div>
        </div>
        <div class="dots">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>
    </div>
</div>


<!-- Features -->

<section id="features" class="features section-bg">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>Features</h2>
            <p>Explore Important Features</p>
        </div>

        <div class="row">
            <div class="col-md-3" data-aos="zoom-in" data-aos-delay="100">
                <div class="icon-box">
                    <div class="icon"><i class="bx bxl-dribbble"></i></div>
                    <h4 class="title"><a href="visitorPass.jsp">Visitor Pass</a></h4>
                    <p class="description">We try to make any college visitor pass show that students can explore the community.</p>
                </div>
            </div>

            <div class="col-md-3" data-aos="zoom-in" data-aos-delay="200">
                <div class="icon-box">
                    <div class="icon"><i class="bx bx-file"></i></div>
                    <h4 class="title"><a href="lostAndFound.jsp">Lost and Found</a></h4>
                    <p class="description">Lost something? Found something? You can ask and write about that in this community.</p>
                </div>
            </div>

            <div class="col-md-3" data-aos="zoom-in" data-aos-delay="300">
                <div class="icon-box">
                    <div class="icon"><i class="bx bx-tachometer"></i></div>
                    <h4 class="title"><a href="bookSearch.jsp">Library Book Inventory</a></h4>
                    <p class="description">Provides features like a database of all books so that no one suffers.</p>
                </div>
            </div>

            <div class="col-md-3" data-aos="zoom-in" data-aos-delay="400">
                <div class="icon-box">
                    <div class="icon"><i class="bx bx-share-alt"></i></div>
                    <h4 class="title"><a href="shareAccessory.jsp">Share Accessory</a></h4>
                    <p class="description"> Share accessories like any hardware equipment, such as Arduino Uno, DHT11, Sensors etc.</p>
                </div>
            </div>
        </div>

    </div>
</section>


<!-- Team -->
<div class="team" >
<div class="section-title">
        <h2>Team Members</h2>
        <p>Our team is always here to help</p>
    </div>
    <div class="image-row">
    <div class="image-container">
        <img src="assets/Sudhanshu.png" alt="Image 1">
        <div class="overlay">
            <div class="text">Sudhanshu Kumar<br>Student & Coder</div>
        </div>
    </div>
    <div class="image-container">
        <img src="assets/Ujwal.png" alt="Image 1">
        <div class="overlay">
            <div class="text">Aman Ujwal<br>Student & Coder</div>
        </div>
    </div>
    <div class="image-container">
        <img src="assets/Arpita.png" alt="Image 1">
        <div class="overlay">
            <div class="text">Arpita Migaranj Cse Student.</div>
        </div>
    </div>
    <div class="image-container">
        <img src="assets/Subh.png" alt="Image 1">
        <div class="overlay">
            <div class="text">Subhasmita Nayak <br>Cse Student.</div>
        </div>
    </div>
   
</div>
    
</div>

<!-- Contract Us -->

<section id="contact" class="contact">
            <div class="container">

                <div class="section-title">
                    <h2>Contact Me</h2>
                    <p>Contact me to get started</p>
                </div>

                <div class="row">

                    <div class="col-lg-5">
                        <div class="info">
                            <div class="address">
                                <i class="icofont-google-map"></i>
                                <h4>Location:</h4>
                                <p>Mahura, Bhubaneswar, Odisha</p>
                            </div>

                            <div class="email">
                                <i class="icofont-envelope"></i>
                                <h4>Email:</h4>
                                <p>sudhaanshuu@gmail.com</p>
                            </div>

                            <div class="phone">
                                <i class="icofont-phone"></i>
                                <h4>Call:</h4>
                                <p>+91 8252228793</p>
                                
                            </div>

                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3743.953084387632!2d85.7332178734962!3d20.21927051509216!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a19a8fa59ac3c81%3A0xc81fc475faa77274!2sC.%20V.%20Raman%20Global%20University!5e0!3m2!1sen!2sin!4v1703240034278!5m2!1sen!2sin"
                                frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
                        </div>

                    </div>

                    <div class="col-lg-7 mt-5 mt-lg-0">
                        <form action="https://formspree.io/f/xqkrzged" method="post" role="form" class="php-email-form">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="name">Your Name</label>
                                    <input type="text" name="name" class="form-control" id="name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validate"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="name">Your Email</label>
                                    <input type="email" class="form-control" name="email" id="email" data-rule="email" data-msg="Please enter a valid email" />
                                    <div class="validate"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name">Subject</label>
                                <input type="text" class="form-control" name="subject" id="subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                <div class="validate"></div>
                            </div>
                            <div class="form-group">
                                <label for="name">Message</label>
                                 
                                  
                                <textarea class="form-control" name="message" rows="10" data-rule="required" data-msg="Please write something for us"></textarea>
                                <div class="validate"></div>
                            </div>
                            <div class="mb-3">
                                <div class="loading">Loading</div>
                                <div class="error-message"></div>
                                <div class="sent-message">Your message has been sent. Thank you!</div>
                            </div>
                           
                            <div class="text-center"><button type="submit">Send Message</button></div>
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
       
 <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

<script src="js/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = $(".slide");
            var dots = $(".dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 5000); 
        }

        $(".dot").on("click", function() {
            var index = $(this).index();
            slideIndex = index + 1;
            showSlides();
        });
    });
</script>


</body>
</html>

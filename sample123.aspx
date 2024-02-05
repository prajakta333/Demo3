<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sample123.aspx.cs" Inherits="Demo3.sample123" %>


<!DOCTYPE html>
<html lang="en">
 
<head>

 
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,
            initial-scale=1, shrink-to-fit=no">
 
    <link rel="stylesheet" href="samp1.css">
 
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href=
"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity=
"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
 

     <link href="navbar123.css" rel="stylesheet" type="text/css"  />

<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Restaurant Website</title>
</head>
 
<body>


    <nav class="navbar">
        <div class="navbar-container container">
            <input type="checkbox" name="" id="">
            <div class="hamburger-lines">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </div>
            <ul class="menu-items">
                <li><a href="sample123.aspx">Home</a></li>
<%--                <li><a href="sample123.aspx">About</a></li>--%>
                <li><a href="Contact.aspx">Student</a></li>
                <li><a href="AdminLogin.aspx">Admin</a></li>
<%--                <li><a href="#">Testimonial</a></li>--%>
<%--                <li><a href="#">Contact</a></li>--%>
            </ul>
            <h1 class="logo" style="color:black">Abeda's Kitchen</h1>
        </div>
    </nav>

 
<%--    <!-- navbar  -->
    <nav>
        <ul class="nav-flex-row">
            
            <li><a href="Default.aspx">Home</a></li>
  <li><a href="sample123.aspx">About</a></li>
  <li class="dropdown">
    <a href="" class="dropbtn">Student</a>
    <div class="dropdown-content">
      <a href="temp.aspx">Registration</a>
      <a href="Contact.aspx">Login</a>
          <li class="dropdown">

         <a href="" class="dropbtn">Admin</a>
    <div class="dropdown-content">
      <a href="AdminRegistration.aspx">Registration</a>
      <a href="AdminLogin.aspx">Login</a>
<%--      <li><a href="Feedback.aspx">Contact Us</a></li>--%>
            </div>
<%--                <li><a href="Feedback.aspx">Feedback</a></li>--%>

        </ul>

    </nav>

    <section class="section-intro">
       
  
        <header>
                      

            <h1> Welcome To Abeda's
                Kitchen</h1>
            
        </header>
        <marquee> <i><h2 style ="color:#ffffff"> Have a Coffee with a smile at our peaceful place...!!!</h2><br>  </i>  </marquee>

        <div class="link-to-book-wrapper">
            <a class="link-to-book"
                href="https://www.abedainamdarcollege.org.in/" >Visit Our College</a>
        </div>
    </section>
 
    <section class="about-section">
        <article>
            <h3>
         <%--       Section for the text why your
                restaurant is the best.--%>
            </h3>
 
             
<p>
                The main aim of any mess is to provide clean and fresh food to the students/employees of the organization. In many messes,
there is no facility to see the menu and then mark their attendance according to their choice. Here we are providing features
Such as marking attendance and also to see today’s menu. It would be possible to reduce the food wastage in mess by marking
attendance and without using much efforts and manpower if, there existed a software for the same. Thus, there arises a need
to create a system for the same. Such software would make the entire Mess related management an automated system. The system
is not only restricted to food attendance and see future menu but also have feature to vote for future menu in mess.
            </p>
 
        </article>
    </section>
 
    <!-- carousel section -->
    <div id="carouselExampleControls"
        class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="pictures/Screenshot 2022-11-01 131448.png"
                    class="d-block w-100" alt="food">
            </div>
            <div class="carousel-item">
                <img src="pictures/snip1.png"
                    class="d-block w-100" alt="food">
            </div>
            <div class="carousel-item">
                <img src="pictures/snip3.png"
                    class="d-block w-100" alt="food">
            </div>
            <div class="carousel-item">
                <img src="pictures/Screenshot 2022-11-01 131448.png"
                    class="d-block w-100" alt="food">
            </div>
            <div class="carousel-item">
                <img src="pictures/snip4.png"
                    class="d-block w-100" alt="food">
            </div>
        </div>
        <a class="carousel-control-prev"
            href="#carouselExampleControls"
            role="button" data-slide="prev">
            <span class="carousel-control-prev-icon"
                aria-hidden="true">
            </span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next"
            href="#carouselExampleControls"
            role="button" data-slide="next">
            <span class="carousel-control-next-icon"
                aria-hidden="true">
            </span>
            <span class="sr-only">Next</span>
        </a>
    </div>
 
    <div class="container">
        <div class="row-flex">
            <div class="flex-column-form">
               <%-- <h3>
                    Make a booking
                </h3>
                <form class="media-centered">
                    <div class="form-group">
                         
<p>
                            Please leave your number we will
                            call to make a reservation
                        </p>
 
                         
                        <input type="name" class="form-control"
                            id="exampleInputName1"
                            aria-describedby="nameHelp"
                            placeholder="Enter your name">
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control"
                            id="exampleInputphoneNumber1"
                            placeholder="Enter your phone number">
                    </div>
                    <button type="submit" class="btn btn-primary">
                        Submit
                    </button>
                </form>--%>
            </div>
            <div class="opening-time">
               <%-- <h3>
                    Opening times
                </h3>
                 
<p>
                    <span>Monday—Thursday: 08:00 — 22:00</span>
                    <span>Friday—Saturday: 09:00 — 23:00 </span>
                    <span>Sunday: 10:00 — 17:00</span>
                </p>--%>
 
            </div>
            <div class="contact-address">
                <h3>
                    Address
                </h3>
                 
<p>
<%--                    <span>410-602-8008</span>--%>
                    <span>15 Avenue Street</span>
                    <span>Pune, 1111 MH</span>
                </p>
 
            </div>
            <div class="contact-address">
                <h3>
                    Contact Us
                </h3>
                 
<p>
                    <span>Email Us at : abedainamdarmess@gmail.com</span>
                    <span>Contact No : 020-451457989</span>
<%--                    <span>pune, 1111 mh</span>--%>
                </p>
 
            </div>
        </div>
    </div>
 
 
 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
 
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity=
"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous">
    </script>
     
    <script src=
"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity=
"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous">
    </script>
     
    <script src=
"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity=
"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous">
    </script>
</body>
 
</html>
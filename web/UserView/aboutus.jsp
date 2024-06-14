<%-- 
    Document   : aboutus
    Created on : 28-Nov-2023, 12:25:33 pm
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/myprofile.css">
    <title>Home</title>
    <style>
    </style>
</head>
<body>
 <header class="sticky">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
        <a class="navbar-brand" href="#">
            <!-- Your Logo Here -->
           <a href="Home.jsp" id="logo">Shashwat <sub>Never stop learning</sub></a>
        </a>
        <!-- Add data-toggle and data-target attributes for the button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <form class="form-inline mx-auto d-flex justify-content-center d-lg-inline">
            <div class="input-group">
                <input id="searchbar" class="form-control" type="search" placeholder="Search" aria-label="Search">
               <button type="submit" id="searchbtn"><i class="fa fa-search"></i></button>
            </div>
        </form>
        <div class="dropdown d-none d-lg-block">
            <a href="myprofile/subscription.jsp" id="review" >Get Premium</a>
        </div>
     <!-- ------------------------- -->
    

     <!-- ------------------------- -->
        
    </div>

    </div>
    </nav>
</header>

  <header class="sticky">
    <nav id="menu" class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <!-- Add the collapse navbar-collapse class and id -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto w-100">
                    
                    <li class="nav-item active">
                        <a class="nav-link" href="Home.jsp"><i class="fa fa-home"></i> Home</a>
                    </li>
            
                    
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-book"></i> My Book
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                          <a class="dropdown-item" href="mybook/currentreading.jsp">Current Reading</a>
                        <a class="dropdown-item" href="mybook/wanttoread.jsp" onclick="">Want to Read</a>
                        <!-- call servlet for logout user -->
                    </div>
                  </li>

                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fa fa-list-alt"></i> Category
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="catgory.jsp" >Novel</a>
                      <a class="dropdown-item" href="catgory.jsp" >Science fiction</a>
                      <a class="dropdown-item" href="catgory.jsp" >Mystery</a>
                      <a class="dropdown-item" href="catgory.jsp" >Thriller</a>
                      <a class="dropdown-item" href="catgory.jsp" >Adventure</a>
                      <a class="dropdown-item" href="catgory.jsp" >Self-help</a>
                      <a class="dropdown-item" href="catgory.jsp" >Horror</a>
                      <a class="dropdown-item" href="catgory.jsp" >Text-Books</a>
                        <!-- call servlet for logout user -->
                    </div>
                </li>

                    <li class="nav-item dropdown">
                      <a  class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" href=""><i class="fa fa-book"></i> Blog</a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="blog.jsp" >Novel</a>
                      <a class="dropdown-item" href="blog.jsp" >Science fiction</a>
                      <a class="dropdown-item" href="blog.jsp" >Mystery</a>
                      <a class="dropdown-item" href="blog.jsp" >Thriller</a>
                      <a class="dropdown-item" href="blog.jsp" >Adventure</a>
                      <a class="dropdown-item" href="blog.jsp" >Self-help</a>
                      <a class="dropdown-item" href="blog.jsp" >Horror</a>
                      <a class="dropdown-item" href="blog.jsp" >Text-Books</a>
                        <!-- call servlet for logout user -->
                    </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="podcast.jsp"><i class="fa fa-microphone"></i> Podcast</a>
                    </li>

                   
                    <li class="nav-item">
                      <a class="nav-link" href="audiobook.jsp"><i class="fa fa-headphones"></i> Audio Books</a>
                  </li>

                    <li class="nav-item">
                        <a class="nav-link" href="tutorial.jsp"><i class="fa fa-graduation-cap"></i> Tutorials</a>
                    </li>

                    <li class="nav-item ">
                        <a href="myprofile/profile.jsp"><img src="images/user.png" alt="" class="user-pic" onclick="toggleMenu()"></a>
<!--                      <div class="sub-menu-wrap" id="subMenu">
                        <div class="sub-menu">
                            <div class="user-info">
                                <img src="images/user.png" alt="">
                                <h3>Mohan maali</h3>
                            </div>
                            <hr>
                            
                              <a href="myprofile/subscription2.jsp" class="sub-menu-link">
                                <img src="images/profile.png" alt="">
                                <p>My Account</p>
                                <span>&#11166;</span>
                            </a>
                            
                            <a href="myprofile/subscription2.jsp" class="sub-menu-link">
                                <img src="" alt="">
                                <p>Get Premium</p>
                                <span>&#11166;</span>
                            </a>
            
                            <a href="myprofile/editprofile.jsp" class="sub-menu-link">
                                <img src="images/setting.png" alt="">
                                <p>Settings & Privacy</p>
                                <span>&#11166;</span>
                            </a>
            
                            <a href="#" class="sub-menu-link">
                                <img src="images/logout.png" alt="">
                                <p>Logout</p>
                                <span>&#11166;</span>
                            </a>
                        </div>
                    </div>
                    <script>
                      let sunMenu = document.getElementById("subMenu");
              
                      function toggleMenu()
                      {
                          subMenu.classList.toggle("open-menu");
                      }
                  </script>-->
                  </li>
              
              
                    <!-- ------------------------------- -->
                </ul>
            </div>
        </div>
    </nav>
</header>
<!-- ------------------------------------------------------ -->


<!-- ------------------------------------------------------ -->
 <!-- book catlog section end  -->
 
    <footer class="bgfooter text-light">
      <div class="container">
          <div class="row">
              <!-- Quick Links Section -->
              <div class="col-md-4">
                  <center><h5>Quick Links</h5></center>
                  <center>
                    <ul class="list-unstyled">
                      <li><a href="home.html">Home</a></li>
                      <li><a href="catgory.html">catgory</a></li>
                      <li><a href="blog.html">Blogs</a></li>
                      <li><a href="podcast.html">Podcast</a></li>
                      <li><a href="audiobook.html">Audio Books</a></li>
                      <li><a href="tutorial.html">Tutorials</a></li>
                      <li><a href="#">About Us</a></li>
                      <li><a href="#">Contact</a></li>
                  </ul>
                  </center>
              </div>
              
              <!-- Social Handles Section -->
              <div class="col-md-4">
                  <center><h5>Social Handles</h5></center>
                 <center> <ul class="list-unstyled">
                  <li><a href="#">Facebook</a></li>
                  <li><a href="#">Twitter</a></li>
                  <li><a href="#">Instagram</a></li>
                  <li><a href="#">LinkedIn</a></li>
              </ul></center>
              </div>
              
              <!-- Feedback Form Section -->
              <div class="col-md-4">
                  <center><h5>Feedback</h5></center>
                  <form>
                      <div class="form-group">
                          <input type="text" class="form-control" placeholder="Your Name">
                      </div>
                      <div class="form-group">
                          <input type="email" class="form-control" placeholder="Your Email">
                      </div>
                      <div class="form-group">
                          <textarea class="form-control" rows="3" placeholder="Your Feedback"></textarea>
                      </div>
                      <button type="submit" class="btn btn-primary">Submit</button>
                  </form>
              </div>
          </div>
      </div>
  </footer>
  <!-- footer  -->
<div style="height: 40px; padding:5px; font-weight: 500;">
  <center>All Rights &  &#169; Reserved by Tech-Phoenix</center>
</div>
 <!-- footer -->
</body>
</html>>





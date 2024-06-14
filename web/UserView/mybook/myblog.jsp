<%-- 
    Document   : myblog
    Created on : 28-Nov-2023, 12:41:04 pm
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
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/blog.css">
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
           <a href="home.html" id="logo">Shashwat <sub>Never stop learning</sub></a>
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
            <a href="#" id="review">Review and Rating</a>
        </div>
    </div>
    </nav>
</header>

  <header>
    <nav id="menu" class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <!-- Add the collapse navbar-collapse class and id -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto w-100">
                    
                    <li class="nav-item active">
                        <a class="nav-link" href="../userHomepages/home.html"><i class="fa fa-home"></i> Home</a>
                    </li>
            
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-book"></i> My Book
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                          <a class="dropdown-item" href="currentread.html">Current Reading</a>
                          <a class="dropdown-item" href="wanttoread.html" onclick="">Want to Read</a>
                          <a class="dropdown-item" href="myblogs.html">My Blogs</a>
                          <!-- call servlet for logout user -->
                      </div>
                  </li>

                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fa fa-list-alt"></i> Category
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="../userHomepages/category/novel.html">Novel</a>
                        <a class="dropdown-item" href="../userHomepages/category/Sciencefiction.html">Science fiction</a>
                        <a class="dropdown-item" href="../userHomepages/category/Mystery.html">Mystery</a>
                        <a class="dropdown-item" href="../userHomepages/category/Thriller.html">Thriller</a>
                        <a class="dropdown-item" href="../userHomepages/category/adventure.html">Adventure</a>
                        <a class="dropdown-item" href="../userHomepages/category/Selfhelp.html">Self-help</a>
                        <a class="dropdown-item" href="../userHomepages/category/horror.html">Horror</a>
                        <a class="dropdown-item" href="../userHomepages/category/Textbooks.html">Text-Books</a>
                        <!-- call servlet for logout user -->
                    </div>
                </li>

                    <li class="nav-item">
                      <a class="nav-link" href="../userHomepages/blog.html"><i class="fa fa-book"></i> Blog</a>
                  </li>

                    <li class="nav-item">
                        <a class="nav-link" href="../userHomepages/podcast.html"><i class="fa fa-microphone"></i> Podcast</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="../userHomepages/audiobook.html"fa fa-headphones"></i> Audio Books</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="../userHomepages/audiobook.html"><i class="fa fa-graduation-cap"></i> Tutorials</a>
                    </li>

                    <li class="nav-item ">
                        <img src="../images/user.png" alt="" class="user-pic" onclick="toggleMenu()">
                        <div class="sub-menu-wrap" id="subMenu">
                          <div class="sub-menu">
                              <div class="user-info">
                                  <img src="../images/user.png" alt="">
                                  <h3>Mohan maali</h3>
                              </div>
                              <hr>
              
                              <a href="../myprofile/subscription2.html" class="sub-menu-link">
                                  <img src="../images/profile.png" alt="">
                                  <p>Get Premium</p>
                                  <span>&#11166;</span>
                              </a>
              
                              <a href="../myprofile/editprofile.html" class="sub-menu-link">
                                  <img src="../images/setting.png" alt="">
                                  <p>Settings & Privacy</p>
                                  <span>&#11166;</span>
                              </a>
              
                              <a href="#" class="sub-menu-link">
                                  <img src="../images/  alt="">
                                  <p>My Blog</p>
                                  <span>&#11166;</span>
                              </a>
              
                              <a href="#" class="sub-menu-link">
                                  <img src="../images/logout.png" alt="">
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
                    </script>
                    </li>
                
                      <!-- ------------------------------- -->
                  </ul>
                    <!-- Add your other menu items here -->
                </ul>
            </div>
        </div>
    </nav>
</header>
<!-- ----------------------------------------------------- -->
<section>


    <div class="background">
        <div class="centering">
            <div class="articles">
                <article>
                    <figure>
                        <img
                            src="https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=900&t=st=1687123388~exp=1687123988~hmac=f3410d0a5c2f20aec66c7d763c789bf0aae9c5026366fe41ae7d18e05e7e406b"
                            alt="Preview"
                        >
                    </figure>
                    <div class="article-preview">
                        <h2>My Blog</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Praesent in mauris eu tortor porttitor accumsan. 
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Praesent in mauris eu tortor porttitor accumsan. 
                            <a href="#" class="read-more" title="Read More">
                                Read more
                            </a><br>
                            <button class="btn btn-outline-primary float-end">Delete</button><br>
                        </p>
                    </div>
                </article>
                <article>            
                    <figure>
                        <img
                            src="https://img.freepik.com/free-photo/beautiful-aerial-shot-fronalpstock-mountains-switzerland-beautiful-pink-blue-sky_181624-9315.jpg?w=900&t=st=1687123407~exp=1687124007~hmac=15a1b5a4d3a5af66dfba67bdcd577f769f813bf06fc8b5e50f32f6503099bbd8"
                            alt="Preview"
                        >
                    </figure>
                    <div class="article-preview">
                        <h2>My Blog</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Praesent in mauris eu tortor porttitor accumsan. 
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Praesent in mauris eu tortor porttitor accumsan. 
                            <a href="#" class="read-more" title="Read More">
                                Read more
                            </a><br>
                            <button class="btn btn-outline-primary float-end">Delete</button><br>
                        </p>
                    </div>
                </article>
                <article>
                    <figure>
                        <img
                            src="https://img.freepik.com/free-photo/tropical-beach_74190-188.jpg?w=1800&t=st=1687169672~exp=1687170272~hmac=b66f9b9c1e344cbfe6fe2e5f65e94ebb8d418dad2e2af2b892ad9ac60e9eb79c"
                            alt="Preview"
                        >
                    </figure>
                    <div class="article-preview">
                        <h2>My Blog</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent in mauris eu tortor porttitor accumsan. 
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent in mauris eu tortor porttitor accumsan. 

                            <a href="#" class="read-more">
                                Read more
                            </a>
                            <br>
                            <button class="btn btn-outline-primary float-end">Delete</button><br>
                        </p>
                    </div>
                </article>
            </div>
        </div>
    </div>



</section>




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
                      <li><a href="#">Home</a></li>
                      <li><a href="#">About Us</a></li>
                      <li><a href="#">Services</a></li>
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
</html>

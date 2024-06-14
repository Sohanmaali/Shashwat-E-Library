<%-- 
    Document   : Home
    Created on : 27-Nov-2023, 9:26:36 pm
    Author     : Mohan_Maali
--%>

<!--mohan maal---------------------i-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shashwat.model.manager.*"%>
<%@page import="java.util.ArrayList"%>

<%
      
    ArrayList<BookDAO> bookdao = (ArrayList<BookDAO>) session.getAttribute("bookdao");

      ArrayList<BookDAO> genredao = (ArrayList<BookDAO>) session.getAttribute("genredao");
    System.out.println("=============mmmmmmmmmmmmmmmmmmmmm=====================");
    System.out.println(bookdao);
%>




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
                                    <i class="fa fa-list-alt"></i> Genre
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

                                    <%for(BookDAO gdao : genredao){%>
                                    <a style="text-transform:capitalize" class="dropdown-item genre"  href="../GetCategoryBook?category=<%=gdao.getGenre()%>" ><%=gdao.getGenre()%></a>
                                    <%}%>
                                    <!-- call servlet for logout user -->
                                </div>
                            </li>

                            <li class="nav-item dropdown">
                                <a  class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" href=""><i class="fa fa-book"></i> Blog</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="/SHASHWAT/GetBlog?category=novel" >Novel</a>
                                    <a class="dropdown-item" href="blog.jsp" >Science fiction</a>
                                    <a class="dropdown-item" href="blog.jsp" >Mystery</a>
                                    <a class="dropdown-item" href="blog.jsp" >Thriller</a>
                                    <a class="dropdown-item" href="blog.jsp" >Adventure</a>
                                    <a class="dropdown-item" href="blog.jsp" >Self-help</a>
                                    <a class="dropdown-item" href="/SHASHWAT/GetBlog?category=whether" >Horror</a>
                                    <a class="dropdown-item" href="/SHASHWAT/GetBlog?category=technology" >Technology</a>
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
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>


        <!--Slide bar started  -->
        <div id="demo" class="carousel slide" data-bs-ride="carousel">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
            </div>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/willsaxpier.png" alt="quote" class="d-block" style="width:100%"; >
                </div>
                <div class="carousel-item">
                    <img src="img/ravindranath.png" alt="quote" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="img/swamijie.png" alt="quote" class="d-block" style="width:100%">
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
        <!-- banner slidbar end ----------------------- -->
        <!-- book catlog end ------------------------------------------------------------ -->
        <div class="container">
            <br>
            <center><h3>Trending</h3></center>
            <br>
            <div class="row row-cols-lg-5 row-cols-md-3">
                <%
                        for(BookDAO bdao : bookdao){
                %>

                <div class="col mb-4">
                    <div class="card">
                        <a href="ShowPDF.jsp?pdf=<%=bdao.getPdf()%>"data-toggle="modal" data-target="#bookinfo"><img class="book" src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>" class="card-img-top" alt="Book 1" ></a>                       
                        <div class="card-body">
                            <a  class="btn btn-success" href="ShowPDF.jsp?pdf=<%=bdao.getPdf()%>">Borrrow</a><button class="btn btn-secondary ml-3"  data-toggle="modal" data-id="<%=bdao.getBookId()%>"   data-target="#ex<%=bdao.getBookId()%>">More</button>
                        </div>
                    </div>
                </div>
                <!--------bookinfo-------------->     


                <div id="ex<%=bdao.getBookId()%>" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        Modal content
                        <div class="modal-content">

                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>" class="img-fluid rounded-start" alt="...">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title"><%=bdao.getBookName()%></h5>
                                            <h6><%=bdao.getBookName()%></h6>
                                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                            <p><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star-empty p-1"></i><i class="fa fa-star-half-o"></i></p>
                                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> 
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Reading Status
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=1">Want to Read</a>
                                                    <a class="dropdown-item" href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=2">CurrentLy Reading</a>
                                                    <a class="dropdown-item" href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=3">Already Read</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>   </div>   </div>  
                        <%
                    }
                        %>

            </div>
        </div>

        <!-- ------------------------------------------------------------------------------ -->


        <!--Slide bar started  -->
        <div id="bookbanner" class="carousel slide" data-bs-ride="carousel">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#bookbanner" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#bookbanner" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#bookbanner" data-bs-slide-to="2"></button>
                <button type="button" data-bs-target="#bookbanner" data-bs-slide-to="3"></button>
            </div>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/booksimg/booksbanner3.jpg" alt="quote" class="d-block" style="width:100%"; >

                </div>
                <div class="carousel-item">
                    <img src="img/booksimg/booksbanner2.jpg" alt="quote" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="img/booksimg/booksbanner1.jpg" alt="quote" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="img/booksimg/banner4.jpg" alt="quote" class="d-block" style="width:100%">
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#bookbanner" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#bookbanner" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
        <!-- banner slidbar end ----------------------- -->

        <!-- ----------------------------------------------------- -->

        <div class="container">
            <center><h3>Free Books</h3></center>

            <div class=" row row-cols-lg-5 row-cols-md-3">


                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>


                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-success">Read</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
                                <li><a href="Home.jsp">Home</a></li>
                                <li><a href="catgory.jsp">catgory</a></li>
                                <li><a href="blog.jsp">Blogs</a></li>
                                <li><a href="podcast.jsp">Podcast</a></li>
                                <li><a href="audiobook.jsp">Audio Books</a></li>
                                <li><a href="tutorial.jsp">Tutorials</a></li>
                                <li><a href="aboutus.jsp">About Us</a></li>
                                <li><a href="contactus.jsp">Contact</a></li>
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



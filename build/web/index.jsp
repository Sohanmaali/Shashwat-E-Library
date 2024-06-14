<%-- 
    Document   : index.jsp
    Created on : 28-Nov-2023, 11:03:17 am
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="UserView/css/style.css">
        <link rel="stylesheet" href="UserView/css/login.css">
        <title>Shashwat</title>
        <style>
        </style>
    </head>
    <body>
        <header >
            <nav class="navbar navbar-expand-lg navbar-light custom-navbar ">
                <div class="container">
                    <a class="navbar-brand" href="#">
                        <!-- Your Logo Here -->
                        <a href="index.jsp" id="logo">Shashwat <sub>Never stop learning</sub></a>
                    </a>
                    <!-- Add data-toggle and data-target attributes for the button -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <form class="form-inline mx-auto d-flex justify-content-center d-lg-inline" action="" method="post">
                        <div class="input-group">
                            <input id="searchbar" class="form-control" type="search" placeholder="Search" aria-label="Search">
                            <button type="submit" id="searchbtn"><i class="fa fa-search fa-shake"></i></button>
                        </div>
                    </form>
                    <div class="dropdown d-none d-lg-block">
                        <!-- <a href="#" id="review">Review and Rating</a> -->
                    </div>
                </div>
            </nav>
        </header>

        <header class="sticky">
            <nav id="menu" class="navbar navbar-expand-lg navbar-light navbgcolor">
                <div class="container">
                    <!-- Add the collapse navbar-collapse class and id -->
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto w-100">

                            <li class="nav-item active">
                                <a class="nav-link" href="index.jsp"><i class="fa fa-home fa-shake"></i> Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link"  href="#loginmodal" data-toggle="modal" data-target="#loginmodal" ><i class="fa fa-book"></i> My Book</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-list-alt"></i> Category
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="#loginmodal" data-toggle="modal" data-target="#loginmodal">Novel</a>
                                    <a class="dropdown-item" href="#loginmodal" data-toggle="modal" data-target="#loginmodal">Science fiction</a>
                                    <a class="dropdown-item" href="#loginmodal" data-toggle="modal" data-target="#loginmodal">Mystery</a>
                                    <a class="dropdown-item" href="#loginmodal" data-toggle="modal" data-target="#loginmodal">Thriller</a>
                                    <a class="dropdown-item" href="#loginmodal" data-toggle="modal" data-target="#loginmodal">Adventure</a>
                                    <a class="dropdown-item" href="#loginmodal" data-toggle="modal" data-target="#loginmodal">Self-help</a>
                                    <a class="dropdown-item" href="#loginmodal" data-toggle="modal" data-target="#loginmodal">Horror</a>
                                    <a class="dropdown-item" href="#loginmodal" data-toggle="modal" data-target="#loginmodal">Text-Books</a>
                                    <!-- call servlet for logout user -->
                                </div>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><i class="fa fa-book"></i> Blog</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><i class="fa fa-microphone"></i> Podcast</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><i class="fa fa-headphones"></i> Audio Books</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><i class="fa fa-graduation-cap"></i> Tutorials</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#loginmodal" data-toggle="modal" data-target="#loginmodal" data-toggle="modal" data-target="#loginmodal"><i class="fa fa-user"></i>Login</a>
                            </li>
                            <!-- Add your other menu items here -->
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <!-- category ----------------------------end -->

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
                    <img src="UserView/img/willsaxpier.png" alt="quote" class="d-block" style="width:100%"; >
                </div>
                <div class="carousel-item">
                    <img src="UserView/img/ravindranath.png" alt="quote" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="UserView/img/swamijie.png" alt="quote" class="d-block" style="width:100%">
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
            <center><h3>New Books</h3></center>

            <div class="row row-cols-lg-5 row-cols-md-3">
                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Borrow</button><button class="btn btn-secondary ml-3"  data-toggle="modal" data-target="#bookinfo">More</button>
                        </div>
                    </div>
                </div>

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
                    <img src="UserView/img/booksimg/booksbanner3.jpg" alt="quote" class="d-block" style="width:100%"; >
                </div>
                <div class="carousel-item">
                    <img src="UserView/img/booksimg/booksbanner2.jpg" alt="quote" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="UserView/img/booksimg/booksbanner1.jpg" alt="quote" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="UserView/img/booksimg/banner4.jpg" alt="quote" class="d-block" style="width:100%">
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
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

                        </div>
                    </div>
                </div>


                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

                        </div>
                    </div>
                </div>

                <div class="col mb-4">
                    <div class="card">
                        <a href="#loginmodal" data-toggle="modal" data-target="#loginmodal"><img class="book" src="UserView/img/robinsharma.jpg" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <button class="btn btn-primary">Read</button><button class="btn btn-secondary ml-1" data-toggle="modal" data-target="#bookinfo">More</button>

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
                                <li><a href="index.html">Home</a></li>
                                <li><a href="#">My Book</a></li>
                                <li><a href="#">Podcast</a></li>
                                <li><a href="#">Tutorials</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">AudioBook</a></li>
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
        <!-- login modal -------------------------------------------------------start -->
        <section>
            <!-- Modal -->
            <div id="loginmodal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                        </div>
                        <div class="modal-body" id="modebody">
                            <div class="container">
                                <div class="login-wrapper">
                                    <div class="login-side">

                                        <div class="my-form__wrapper">
                                            <div class="login-welcome-row">
                                                <h3>Welcome back in Shashwat&#x1F44F;</h3>
                                                <p>Please enter your details!</p>
                                            </div>
                                            <form action="Login" class="my-form">
                                                <!-- <div class="socials-row">
                                                    <a
                                                        href="#"
                                                        title="Use Google"
                                                    >
                                                        <img src="assets/google.png" alt="Google">
                                                        Log in with Google
                                                    </a>
                                                    <a
                                                        href="#"
                                                        title="Use Apple"
                                                    >
                                                        <img src="assets/apple.png" alt="Apple">
                                                        Log in with Apple
                                                    </a>
                                                </div> -->
                                                <!-- <div class="divider">
                                                    <div class="divider-line"></div>
                                                    Or
                                                    <div class="divider-line"></div>
                                                </div> -->
                                                <div class="text-field">
                                                    <label for="username">UserName:</label>
                                                    <input
                                                        type="text"
                                                        id="username"
                                                        name="username"
                                                        placeholder="Your User Name"
                                                        required
                                                        >
                                                    <img
                                                        alt="Email Icon"
                                                        title="Email Icon"
                                                        src="UserView/assets/email.svg"
                                                        >
                                                </div>
                                                <div class="text-field">
                                                    <label for="password">Password:</label>
                                                    <input
                                                        id="password"
                                                        type="password"
                                                        name="password"
                                                        placeholder="Your Password"
                                                        title="Minimum 6 characters at 
                                                        least 1 Alphabet and 1 Number"
                                                        pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$"
                                                        required
                                                        >
                                                    <img
                                                        alt="Password Icon"
                                                        title="Password Icon"
                                                        src="UserView//assets/password.svg"
                                                        >
                                                </div>
                                                <input type="submit" class="my-form__button" value="Login">
                                                <div class="my-form__actions">
                                                    <div class="my-form__row">
                                                        <span>Did you forget your password?</span>
                                                        <a href="forgotpassword.jsp" title="Reset Password">
                                                            Forgate Password
                                                        </a>
                                                    </div>
                                                    <div class="my-form__signup">
                                                        <a href="UserView/Registration.jsp" title="Create Account">
                                                            Create Account
                                                        </a>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <script src="./js/login.js"></script>
                                <!--                                </form>-->
                            </div>

                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>
    <!-- login modal -------------------------------------------------------end-->
    <!-- footer  -->

    <div style="height: 40px; padding:5px; font-weight: 500;">
        <center>All Rights &  &#169; Reserved by Tech-Phoenix</center>
    </div>


    <!-- footer -->

</body>
</html>
<!-- Modal -->
<div id="bookinfo" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">

            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="img/booksimg/book3.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Book Title</h5>
                            <h6>Author Name</h6>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <p><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star-empty p-1"></i><i class="fa fa-star-half-o"></i></p>
                            <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
                            <button class="btn btn-outline-primary" href="#loginmodal" data-toggle="modal" data-target="#loginmodal">Reading Status</button>
                        </div>
                    </div>
                </div>
            </div>


        </div>


<%-- 
    Document   : AddBook
    Created on : 28-Nov-2023, 5:19:36 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.shashwat.model.manager.BookDTO" %>
<%@ page import="com.shashwat.model.manager.BookDAO" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - MANAGER</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="AddBook.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./css/AddBook.css">
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Manager</a>

            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <!-- <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div> -->
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading"> <a href=""><img src="manager.png" style="width:100px; height: 100px; border-radius: 50%; margin-top: 10px"> </div>
                                    <a class="nav-link" href="index.html">
                                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                        Dashboard
                                    </a>
                                    <!-- <div class="sb-sidenav-menu-heading">Interface</div> -->
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                        User Information
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="UserInfo.html">All Users</a> 
                                            <a class="nav-link" href="Subscription1.html">Subscription</a>

                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                        Book
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                                Book Information
                                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                            </a>
                                            <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                                <nav class="sb-sidenav-menu-nested nav">

                                                    <a class="nav-link" href="BookinfoTable1.html">All Book  </a>

                                                    <a class="nav-link" href="BorrowedBook.html">Borrowed Book</a>
                                                    <a class="nav-link" href="AddBooktable1.html">AddBook</a>
                                                </nav>
                                            </div>



                                    </div>
                                    <!-- <div class="sb-sidenav-menu-heading">Addons</div> -->
                                    <a class="nav-link" href="charts.html">
                                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                        Charts
                                    </a>
                                    <a class="nav-link" href="tables.html">
                                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                        Tables
                                    </a>
                            </div>
                        </div>
                        <div class="sb-sidenav-footer">
                            <div class="small">Logged in as:</div>
                            Manager
                        </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <!--<main>-->
                <div class="container-fluid px-4">

                    <div class="row">

                        <div class="container mt-5">
                            <center><h2>Add Book</h2></center>
                            <form  action="../AddBook" id="bookForm"> 
                                <!--<a href="../AddBook">clik here</a>-->
                                <!-- Author's Name -->
                                <div class="form-group">
                                    <label for="author">Author's Name</label>
                                    <input type="text" list="authorName" class="form-control" id="author" placeholder="Enter author's name" name="authorName" required>
                                    <%
                                        BookDTO dto = new BookDTO();
                                        ArrayList<BookDAO> al = dto.getAuthor();

                                    %>

                                    <datalist id="authorName">
                                        <%                                            for (int i = 0; i < al.size(); i++) {

                                        %>
                                        <option value="<%=al.get(i).getAuthorName()%>">
                                            <%
                                                }%>

                                            <!-- Add more options as needed -->
                                    </datalist>
                                </div>

                                <!-- Genre -->
                                <div class="form-group">
                                    <label for="gen">Genre</label>
                                    <input type="text" class="form-control" id="gen" placeholder="Enter genre" name="genre" list="genre" required>
                                    <%
                                       BookDTO dto1 = new BookDTO();
                                       ArrayList<BookDAO> gen = dto1.getGenre();

                                    %>
                                    <datalist id="genre">
                                        <%                                            for (int i = 0; i < gen.size(); i++) {

                                        %>
                                        <option value="<%=gen.get(i).getGenre()%>">
                                            <%
                                                }%>
                                            <!-- Add more options as needed -->
                                    </datalist>
                                </div>

                                <!-- Book Name -->
                                <div class="form-group">
                                    <label for="bookName">Book Name</label>
                                    <input type="text" class="form-control" id="bookName" placeholder="Enter book name" name="bookName" required>
                                </div>

                                <!-- Publishing Year -->
                                <div class="form-group">
                                    <label for="publishingYear">Publishing Year</label>
                                    <input type="number" class="form-control" id="publishingYear" placeholder="Enter publishing year" name="py" required>
                                </div>
                                <div class="form-group">
                                    <label for="pg">Page No</label>
                                    <input type="number" class="form-control" id="pg" placeholder="Enter no.of pages" name="pg" required>
                                </div>

                                <!-- PDF Link -->
                                <div class="form-group">
                                    <label for="pdfLink">Upload PDF</label>
                                    <br>
                                    <!--<form action="/action_page.php">-->
                                    <input type="file" id="myFile" name="pdf">
                                    <!--</form><br>--> 
                                </div>

                                <!-- Book Image -->
                                <div class="form-group">
                                    <label for="imgLink">Upload BookImage</label>
                                    <br>
                                    <!--<form action="/action_page.php">-->
                                    <input type="file" id="myFile" name="bookImg">
                                    <!-- <input type="submit"> -->
                                    <!--</form>-->
                                    <br>
                                </div>

                                <!-- Submit Button -->
                                <button type="submit" class="btn btn-primary btnsubmit">Submit</button>
                            </form>
                            <!-------------form------------->
                        </div>

                    </div>

                    <!-- JavaScript Validation -->
                    <script>
                        document.getElementById("bookForm").addEventListener("submit", function (event) {
                            const author = document.getElementById("author").value;
                            const genre = document.getElementById("genre").value;
                            const bookName = document.getElementById("bookName").value;
                            const publishingYear = document.getElementById("publishingYear").value;
                            const addingDate = document.getElementById("addingDate").value;
                            const pdfLink = document.getElementById("pdfLink").value;
                            const bookImage = document.getElementById("bookImage").value;

                            if (!author || !genre || !bookName || !publishingYear || !addingDate || !pdfLink || !bookImage) {
                                event.preventDefault();
                                alert("Please fill out all required fields.");
                            }
                        });
                    </script>



                </div>



                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
                <script src="js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
                <script src="assets/demo/chart-area-demo.js"></script>
                <script src="assets/demo/chart-bar-demo.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
                <script src="js/datatables-simple-demo.js"></script>
                </body>
                </html>


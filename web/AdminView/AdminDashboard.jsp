<%-- 
    Document   : AdminDashboard
    Created on : 28-Nov-2023, 10:27:43 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="css/AdminDashboard.css" />
    <title>Bootstap 5 Responsive Admin Dashboard</title>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link
      rel="stylesheet"
      href="../contrast-bootstrap-pro/css/bootstrap.min.css" />
    <link
      rel="stylesheet"
      href="../contrast-bootstrap-pro/css/cdb.css" />
    <script
      src="../contrast-bootstrap-pro/js/cdb.js"></script>
    <script
      src="../contrast-bootstrap-pro/js/bootstrap.min.js"></script>
    <script
      src="https://kit.fontawesome.com/9d1d9a82d2.js"
      crossorigin="anonymous"></script>
  
    <title>How to create bootstrap charts using bootstrap 5</title>
  </head>
  <style>
    .chart-container {
      width: 50%;
      height: 50%;
      margin: auto;
    }
  </style>
<body>
    <div class="d-flex " id="wrapper">
        <!-- Sidebar -->
        <div class="bg-white" id="sidebar-wrapper" >
            <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
                    class="fas fa-user-secret me-2"></i>Admin </div>
            <div class="list-group list-group-flush my-3">
                <a href="AdminDashboard.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                        class="fas fa-tachometer-alt me-2"></i>Dashboard</a>
                <a href="UserInfo.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                  <i class="fa fa-user" aria-hidden="true"></i>&nbsp;&nbsp;
                  <i></i>User info</a>
                  <a href="SubscribeUser.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                    <i class="fas fa-user-tag"></i>&nbsp;&nbsp;
                    <i></i>Subscribed User</a>
                  
                <a href="BookInfo.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                  <i class="fa fa-book" aria-hidden="true"></i>&nbsp;&nbsp;
                  <i></i>Book info</a>
                  <a href="PodcastInfo.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                    <i class="fa fa-podcast" aria-hidden="true"></i>&nbsp;&nbsp;
                    <i></i>Podcast info</a>
                    <a href="BlogInfo.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                      <i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;&nbsp;
                      <i></i>Blogs info</a>
                      <a href="AudioBook.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                        <i class="fa fa-headphones" aria-hidden="true"></i>&nbsp;&nbsp;
                        <i></i>Audio Book</a>
                <a href="ManagerInfo.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                  <i class="fa fa-user-o" aria-hidden="true"></i>&nbsp;&nbsp;
                  <i></i>Manager info</a>
                
                
                
                
                 <a href="staticBackdrop" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i
                        ></i>Add Manager </a>
                
                
                
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        ></i>Send Request </a>
                
            </div>
            
        </div>

        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left primary-text bg-dark fs-4 me-3" id="menu-toggle"></i>
                    <h2 class="fs-2 m-0 text-dark">Shashwat</h2>
                </div>


                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown ">
                            <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-user me-2"></i>Mehra 
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Profile</a></li>
                                <li><a class="dropdown-item" href="AdminLogin.jsp">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
<!-- ------------------------------------------------------------------------------------------------------ -->



<!-- -------------------------------------------------------------------------------------- -->
            <div class="container-fluid px-4">
                <div class="row g-3 my-2">
                    <div class="col-md-4">
                        <div class="p-4 bg-primary shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <p class="fs-5 ">New User</p>
                                <h3 class="fs-2">720</h3>
                                
                            </div>
                            <i class="fa fa-user fs-1 primary-text border rounded-full bg-dark p-3" aria-hidden="true"></i>
                            <!-- <i class="fas fa-gift fs-1 primary-text border rounded-full secondary-bg p-3"></i> -->
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="p-4 bg-warning shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <p class="fs-5">Total user activity</p>
                                <h3 class="fs-2">4920</h3>
                                
                            </div>
                            <i class="fa fa-user fs-1 primary-text border rounded-full bg-dark p-3" aria-hidden="true"></i>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="p-4 bg-danger shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <p class="fs-5">Subscribed User</p>
                                <h3 class="fs-2">3899</h3>
                               
                            </div>
                            <i class="fa fa-user fs-1 primary-text border rounded-full bg-dark p-3" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
     <!-- --------------------------------------------------------------------------------------------            -->

                                <div class="card chart-container p-1 w-75 my-3 mt-5 ">
                                    <h3 class="text-dark">Total User activity</h3>
                                    <canvas id="chart"></canvas>
                                  </div>
                        

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
<!-- ------------------------------------------------------------------------------------- -->
</body>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js">
</script>

    <script src="js/AdminDashboard.js"><!-- comment --></script >

</html>


<!-- -------------------------------------Add Manager Modal-------------------------------------------------------------------------------- -->

  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="input-box">
                    <header ><h2 class="">Add Manager</h2></header>
                    <form action="/SHASHWAT/AddManager">
                    <div class="input-field">
                        <input type="text" class="input" id="name" name="name" >
                        <label for="Name">Name</label>
                    </div>
                    <div class="input-field">
                      <input type="text" class="input" id="email" name="email"  >
                      <label for="Email">Email</label>
                  </div>
                  <div class="input-field">
                    <input type="text" class="input" id="mobile" name="mobile" >
                    <label for="Phone_number">Phone Number</label>
                  </div>
                  
                  
                  <!-- <div class="input-field">
                  <input type="text" class="input" id="gender" name="gender" required >
                  <label for="Gender">Gender</label>
                  </div> -->
                  
                  
                  <div class="d-md-flex justify-content-start align-items-center mb-4 py-2 " id="gender" name="gender">
                  
                      &nbsp;&nbsp;&nbsp;<h6 class="mb-0 me-4">Gender: </h6>
                  
                      <div class="form-check form-check-inline mb-0 me-4">
                        <input class="form-check-input" type="radio" name="gender" value="female" id="gender"
                           />
                        <label class="form-check-label" for="femaleGender">Female</label>
                      </div>
                  
                      <div class="form-check form-check-inline mb-0 me-4">
                        <input class="form-check-input" type="radio" name="gender" value="male" id="gender"
                           />
                        <label class="form-check-label" for="maleGender">Male</label>
                      </div>
                  
                      <div class="form-check form-check-inline mb-0">
                        <input class="form-check-input" type="radio" name="gender" id="gender"
                          value="other" />
                        <label class="form-check-label" for="otherGender">Other</label>
                      </div>
                  
                    </div>
                  <div class="input-field">
                  <input type="text" class="input" id="address" name="address" >
                  <label for="Address">Address</label>
                  </div>
                  <div class="input-field">
                      <input type="text" class="input" id="password" name="password"  >
                      <label for="Address">password</label>
                      </div>
                    <div class="button">
                        <button type="submit" class="submit">Add</button>
                        <!-- <button type="submit " class="submit">clear</button> -->
                    </div>
                  </form>
                  </div>
                    </div>
            </div>
        </div>
    </div>
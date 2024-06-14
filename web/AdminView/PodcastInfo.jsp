<%-- 
    Document   : PodcastInfo
    Created on : 29-Nov-2023, 4:35:08 pm
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
    <link rel="stylesheet" href="css/Table.css" />
    <title>Podcast information</title>
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
  
  </head>

<body>
  <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="bg-white" id="sidebar-wrapper">
        <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
                class="fas fa-user-secret me-2"></i>Admin </div>
        <div class="list-group list-group-flush my-3">
            <a href="AdminDashboard.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                    class="fas fa-tachometer-alt me-2"></i>Dashboard</a>
                    <a href="UserInfo.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                      <i class="fa fa-user" aria-hidden="true"></i>&nbsp;&nbsp;
                      <i></i>User info</a>
                      <a href="SubscribedUser.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
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
                    <a href="" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                            ></i>Send Request </a>
        </div>
    </div>

        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                  <i class="fas fa-align-left primary-text bg-dark fs-4 me-3" id="menu-toggle"></i>
                    <h2 class="fs-2 m-0">Shashwat</h2>
                </div>




                    <!-- <div class="container-fluid">
                      <form class="d-flex">
                        <input class="form-control ms-5" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>

                      </form>
                    </div> -->




                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
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
<center><h1>Podcast information</h1></center>
<div class="table-responsive">
    <table class="table table-hover">

      <thead class="table-dark">
        <tr>
                <th>Podcast ID</th>
                <th>Podcast TItle</th>
                <th>Host Name</th>
                <th>Category</th>
                <th>Release_date</th>
                <th>Description</th>
                <th>TimeDuration</th>
                <th>Language</th>
                <th>Video_url</th>
                <th>Likes</th>
                <th>Thumbnail</th>
                
            </tr>
      </thead>

      <tbody>
               <tr>
                <td>1</td>
                <td>Java</td>
                <td>john124</td>
                <td>Technology</td>
                <td>YY/MM/DD</td>
                <td>fndkjdfnfndjnkvf</td>
                <td>abc</td>
                <td>English</td>
                <td>Video_url</td>
                <td>3</td>
                <td>Thumbnail</td>
                <!-- podcast modal -->
<!--<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Users Block Information</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">User Name:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="mb-3">
            <label for="message-text" class="col-form-label">Blocking Reason:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">ok</button>
        <button type="button" class="btn btn-primary">Unblock</button>
      </div>
    </div>
  </div>
</div>
            </tr>-->




      </tbody>

    </table>
  </div>
</div>

<!-- -------------------------------------------------------------------------------------------------------------------- -->

    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
<!--    <script>
        var el = document.getElementById("wrapper");
        var toggleButton = document.getElementById("menu-toggle");

        toggleButton.onclick = function () {
            el.classList.toggle("toggled");
        };
    </script>-->
    <script src="js/Toggle.js"><!-- comment --></script >
</body>
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
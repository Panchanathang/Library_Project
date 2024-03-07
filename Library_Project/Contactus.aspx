<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="Library_Project.Contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact us</title>
    <style type="text/css">
        .nav-item {
            width: 128px;
        }
    </style>
    <%--    BootStrap CSS--%>
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<%--    DataTable CSS--%>
    <link href="../datatable/css/jquery.dataTables.min.css" rel="stylesheet" />

<%--    Fontawesome CSS--%>
    <link href="../fontawesome/fontawesome-free-6.5.1-web/css/all.css" rel="stylesheet" />

    <%--    my CSS--%>
    <link href="css/StyleSheet.css" rel="stylesheet" />

<%--    JQuery js--%>
    <script src="../Bootstrap/js/jquery-3.3.1.slim.min.js"></script>

<%--    Popper js--%>
    <script src="../Bootstrap/js/popper.min.js"></script>

<%--    BootStrap js--%>
    <script src="../Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
            <nav class="navbar navbar-expand-lg navbar-dark">
<a class="navbar-brand" href="default.aspx">
    <img src="LogoImg/logo.png" alt="logo" width="49" height="49" />Library Management</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
</button>

     <div class="collapse navbar-collapse" id="collapsibleNavbar">
         <ul class="navbar-nav">
                     <li class="nav-item">
                         <a class="nav-link" href="default.aspx"><b>Home</b></a>
                     </li>
                     
                 </ul>
     </div>
 </nav>
      <form id="form1" runat="server">
   <div class="jumbotron text-center alert alert-primary" style="margin-bottom: 0; background-color: #800000;">
 <h3 style="background-color: #800000; color: #FFFFFF;">Library Management System</h3>
            <%--<a href="default.aspx"> <img src="Imgs/contactus.jpg" alt="contact us" /></a>
            <div style="text-align:center; font-size:large; border:solid 2px Blue">
                <asp:Label ID="errorDesp" runat="server" Text=" " ForeColor="Red"></asp:Label>
            </div>--%>
        <div class="col">
     <center>
         <img width="150" src="Imgs/contactus.jpg" />
     </center>
 </div>
        </div>
    </form>




    <div>
     <main>
         <div class="container mt-3">
    <center><h2 id="create-account">Contact us</h2></center>
    <form method="post" action="https://webdevbasics.net/scripts/demo.php">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <label for="myName" class="font-weight-bold">Name:</label>
                    <input type="text" name="myName" id="myName" class="form-control" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <label for="myEmail" class="font-weight-bold">Email:</label>
                    <input type="email" name="myEmail" id="myEmail" class="form-control" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <label for="myComments" class="font-weight-bold">Comments:</label>
                    <textarea name="myComments" id="myComments" rows="2" cols="20" class="form-control"></textarea>
                </div>
            </div>
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <input type="submit" id="mySubmit" value="Submit" class="btn btn-primary" />
                    <input type="reset" id="myReset" value="Reset" class="btn btn-secondary" />
                </div>
            </div>
        </div>
    </form>
</div>


    </main>

        <footer class="bg-info text-center text-lg-start fixed-bottom">

             <div id="footer2" class="container-fluid">
      <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-12 text-center">
              <p style="color:white">&copy All right Reversed. <a class="footerlinks" href="#" target="_blank">Library Management</a></p>
          </div>
      </div>
  </div>
        </footer>
    </div>


</body>
</html>
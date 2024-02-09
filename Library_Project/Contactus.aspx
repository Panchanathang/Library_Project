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


<%--    JQuery js--%>
    <script src="../Bootstrap/js/jquery-3.3.1.slim.min.js"></script>

<%--    Popper js--%>
    <script src="../Bootstrap/js/popper.min.js"></script>

<%--    BootStrap js--%>
    <script src="../Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-sm navbar-dark bg-success">
     <a class="navbar-brand" href="default.aspx">
         <img src="../LogoImg/logo.png" alt="logo" width="49" height="49" />LMS Application</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
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
        <div style="text-align:center; width:90%">

            <a href="default.aspx"> <img src="Imgs/contactus.jpg" alt="contact us" /></a>
            <div style="text-align:center; font-size:large; border:solid 2px Blue">
                <asp:Label ID="errorDesp" runat="server" Text=" " ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
    <div>
        <main>
            <h1> Contact Us</h1>
            <form method="post" action="https://webdevbasics.net/scripts/demo.php">

                <div style="text-align:left; font-size:large; border:solid 2px Blue; width: 336px; height: 47px;" >
                <label for="myName"><b>Name:</b></label>
                <input type="text" name="myName" id="myName" />
                </div>

                <br />
                <!--name is used for processing-->
                <!--id is used for css-->
                <div style="text-align:left; font-size:large; border:solid 2px Blue; width: 339px; height: 42px;">
                <label for="myEmail"><b>E-mail:</b></label>
                <input type="email" name="myEmail" id="myEmail" />
                </div>
                <br />

                <div style="text-align:left; font-size:large; border:solid 2px Blue; width: 338px;">

                <label for="myComments"><b>Comments:</b></label>
                <textarea name="myComments" id="myComments"
                          rows="2" cols="20"></textarea>
                </div>
                <br />

                <input type="submit" id="mySubmit" value="Submit" />
                <input type="reset" id="myReset" value="Reset" />

            </form>
        </main>

        <footer>
            Copyright &copy; 2024 All Rights Reserved
        </footer>
    </div>

</body>
</html>
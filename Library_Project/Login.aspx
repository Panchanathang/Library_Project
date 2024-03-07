<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Library_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
         <link rel="shortcut icon" href="../LogoImg/logo.png" />
     <meta charset="utf-8" />
     <meta name ="viewport" content ="width-device, initial-scale=1" />

<%--    BootStrap CSS--%>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />


<%--    DataTable CSS--%>
    <link href="datatable/css/jquery.dataTables.min.css" rel="stylesheet" />

<%--    Fontawesome CSS--%>
    <link href="fontawesome/fontawesome-free-6.5.1-web/css/all.css" rel="stylesheet" />

        
<%--    my CSS--%>
    <link href="css/StyleSheet.css" rel="stylesheet" />

<%--    JQuery js--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>

<%--    Popper js--%>
    <script src="Bootstrap/js/popper.min.js"></script>

<%--    BootStrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>

   <%--7-sweetalert--%>
    <link href="../SweetAlert/Styles/sweetalert.css" rel="stylesheet" />
    <script src="../SweetAlert/Scripts/sweetalert.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        

           <div>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="default.aspx">
            <img src="LogoImg/logo.png" alt="logo" width="49" height="49" />Library Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="default.aspx"><b>Home</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><b>Library Collection</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ErrorPage.aspx"><b>Archives</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><b>Publications</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><b>Gallery</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Contactus.aspx"><b>Contact Us</b></a>
                </li>
            </ul>
        </div>
        <!-- Navbar Right icon -->
        <div class="pmd-navbar-right-icon ml-auto">
            <a id="signup" class="btn btn-sm btn-primary" href="SignUp.aspx">Sign Up</a>
<%--            <a class="btn btn-sm btn-primary" href="Login.aspx">Sign In</a>--%>
        </div>
    </nav>

    <div class="jumbotron text-center alert alert-primary" style="margin-bottom: 0; background-color: #800000;">
        <h1 style="background-color: #800000; color: #FFFFFF;">Library Management System</h1>
        <p style="color: #FFFFFF; background-color: #800000">Building community. Inspiring readers. Expanding book access!</p>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-10 border border-info">
                <%-- Login screen--%>
                <div class="container mt-3">
                    <h2>Login Panel</h2>
                    <br />
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#home">User Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#menu1">Admin Login</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div id="home" class="container tab-pane active">
                            <br/>
                            <h3 style="padding: inherit; background-color: #C0C0C0; position: relative; color: #000000; text-align: center;">Welcome</h3>
                            <p></p>
                            <!---design login form--->
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6 mx-auto">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col">
                                                        <center>
                                                            <img width="150" src="LogoImg/user.png" />
                                                        </center>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <center>
                                                            <h3>Member/User Login</h3>
                                                        </center>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <hr/>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <label>Member ID</label>
                                                        <div class="form-group">
                                                                    <asp:TextBox ID="txtMemberID" CssClass="form-control" placeholder="Member ID"  runat="server"></asp:TextBox>
                                                        </div>

                                                        <label>Password</label>
                                                        <div class="form-group">
                                                                    <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" TextMode="Password"  runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                                    <asp:Button ID="btnLogin" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                                        </div>
                                                        <div class="form-group">
                                                            <a href="SignUp.aspx"><input type="button" class="btn btn-info btn-lg btn-block" value="Sign Up" /> </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="default.aspx"><< Back to Home screen</a>
                                    </div>

                                </div>
                            </div>

                            <!----design end--->

                        </div>
                        <div id="menu1" class="container tab-pane fade">
                            <br/>
                            <h3 style="padding: inherit; background-color: #C0C0C0; position: relative; color: #000000; text-align: center;">Welcome</h3>
                            <p></p>
                            <!---Admin design login form--->
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6 mx-auto">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col">
                                                        <center>
                                                            <img width="150" src="LogoImg/admin.png" />
                                                        </center>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <center>
                                                            <h3>Admin Login</h3>
                                                        </center>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <hr/>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <label>Admin ID</label>
                                                        <div class="form-group">
                                                                    <asp:TextBox ID="txtAdminID" CssClass="form-control" placeholder="Admin ID"  runat="server"></asp:TextBox>
                                                        </div>

                                                        <label>Password</label>
                                                        <div class="form-group">
                                                                    <asp:TextBox ID="txtAdminPass" CssClass="form-control" placeholder="Password" TextMode="Password"  runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                                    <asp:Button ID="btnAdminLogin" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Admin Login" OnClick="btnAdminLogin_Click" />
                                                        </div>
                                                        <div class="form-group">
                                                            <a href="default.aspx"><input type="button" class="btn btn-info btn-lg btn-block" value="Sign Up" /> </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="#"><< Back to Home screen</a>
                                    </div>

                                </div>
                            </div>

                            <!----Admin design end--->
                        </div>

                    </div>
                </div>

                <!---ENd login screen--->
            </div>
        </div>
    </div>

    <br />

</div>

         <footer>
     <div id="footer1" class="container-fluid">
         <div class="row">
             <div class="col-xs-12 col-sm-12 col-md-12 text-center">
<p>
    <asp:LinkButton class="footerlinks" ID="LinkButton6" runat="server" PostBackUrl="~/Newspage.aspx">News and updates</asp:LinkButton>
    &nbsp;
    <asp:LinkButton class="footerlinks" ID="LinkButton11" runat="server"  PostBackUrl="~/DisclaimerPage.aspx">Website Disclaimer</asp:LinkButton>
    &nbsp;
    <asp:LinkButton class="footerlinks" ID="LinkButton12" runat="server" PostBackUrl="~/UserScreen/uViewBook.aspx">Latest Books</asp:LinkButton>
    &nbsp;
    <asp:LinkButton class="footerlinks" ID="LinkButton8" runat="server" PostBackUrl="~/UserScreen/uViewBook.aspx">Book Inventory</asp:LinkButton>
    &nbsp;
    <asp:LinkButton class="footerlinks" ID="LinkButton9" runat="server" PostBackUrl="~/Whatsnewpage.aspx">What's new</asp:LinkButton>
    &nbsp;
     <asp:LinkButton class="footerlinks" ID="LinkButton10" runat="server" PostBackUrl="~/Login.aspx">Member Arena</asp:LinkButton>
</p>

             </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <div class="top-social">
                            <a href="https://www.facebook.com/" target="_blank" rel="noopener noreferrer">
                            <img src="Imgs/facebook.jpg" width="30" height="30" alt="facebook" /></a>

                            <a href="https://www.instagram.com/" target="_blank" rel="noopener noreferrer">
                            <img src="Imgs/insta.jpg" width="30" height="30" alt="instagram" /></a>

                            <a href="https://twitter.com/" target="_blank" rel="noopener noreferrer">
                            <img src="Imgs/twitter.png" width="30" height="30" alt="twitter" /></a>
                        </div>
                    </div>

         </div>
     </div>
     <div id="footer2" class="container-fluid">
         <div class="row">
             <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                 <p style="color:whitesmoke">&copy All right Reversed. <a class="footerlinks" href="#" target="_blank">Library Management</a></p>
             </div>
         </div>
     </div>

 </footer>
 <!-- ./Footer -->
    </form>
</body>

</html>

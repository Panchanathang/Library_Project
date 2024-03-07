<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Library_Project.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
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
    <link href="../css/StyleSheet.css" rel="stylesheet" />


<%--    JQuery js--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>

<%--    Popper js--%>
    <script src="Bootstrap/js/popper.min.js"></script>

<%--    BootStrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>

<%--    SweetAlert js--%>
    <link href="SweetAlert/Styles/sweetalert.css" rel="stylesheet" />
    <script src="SweetAlert/Scripts/sweetalert.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
 <nav class="navbar navbar-expand-sm navbar-dark" style="background-color: #800000; color: #FFFFFF;">
     <a class="navbar-brand" href="UserHome.aspx">
         <img src="../LogoImg/logo.png" alt="logo" width="49" height="49" />LMS Application</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
         <span class="navbar-toggler-icon"></span>
     </button>
     <div class="collapse navbar-collapse" id="collapsibleNavbar">
         <ul class="navbar-nav">
                     <li class="nav-item">
                         <a class="nav-link" href="default.aspx"><b>Home</b></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="Login.aspx"><b>Profile</b></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="UserScreen/uViewBook.aspx"><b>ViewBook</b></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="Login.aspx"><b>Report</b></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="Login.aspx"><b>Payment</b></a>
                     </li>
                     
                 </ul>
     </div>
     <!-- Navbar Right icon -->
     <div class="pmd-navbar-right-icon ml-auto">
         <a class="btn btn-sm btn-primary" href="Login.aspx">Sign In</a>
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
     <%--<h2 id="create-account">Create your Account</h2>--%>
     <br />
     <!-- Nav tabs -->
     <ul class="nav nav-tabs">
         <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#signup" style="font-weight: bold;  background-color: #f0f0f0;">Sign Up Here</a>

         </li>
         
     </ul>

     <!-- Tab panes -->
     <div class="tab-content">
         <div id="signup" class="container tab-pane active">
             <br/>
             
             <p></p>
             <!---design login form--->
             <div class="container">
                 <div class="row">
                     <div class="col-md-12 mx-auto">
                         <div class="card">
                             <div class="card-body">
                                 <div class="row">
                                     <div class="col">
                                         <center>
                                             <img width="150" src="Logoimg/sign_up.png" />
                                         </center>
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="col">
                                         <center>
                                             <h3>Member/User Sign Up</h3>
                                         </center>
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="col">
                                         <hr/>
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="col-4">
                                         <label>Member ID</label>
                                         <div class="form-group">
                                             <asp:TextBox ID="txtMemberID" CssClass="form-control" placeholder="Member ID"  runat="server"></asp:TextBox>
                                         </div>

                                         <label>Password</label>
                                         <div class="form-group">
                                             <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" TextMode="Password"  runat="server"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Valid Password" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                         </div>

                                           <label>Full Name</label>
                                           <div class="form-group">
                                               <asp:TextBox ID="txtFullName" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your Full name" ControlToValidate="txtFullname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                           </div>
                                         </div>
                                        <div class=" col-4">
                                          <label>Date of Birth</label>
                                              <div class="form-group">
                                                    <asp:TextBox ID="txtDOB" CssClass="form-control" placeholder="DOB" TextMode="Date" runat="server"></asp:TextBox>
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your DOB to verify your age" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtDOB"></asp:RequiredFieldValidator> 
                                              </div>
  
                                          <label>Contact No.</label>
                                         <div class="form-group">
                                          <asp:TextBox ID="txtContactNo" CssClass="form-control" placeholder="Contact No." runat="server"></asp:TextBox>
                                         </div>

                                           <label>EmailID</label>
                                           <div class="form-group">
                                            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" TextMode ="Email" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Valid Email address" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email Address" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#CC3399" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                               </div>
                                            </div>
                                      <div class ="col-4">
                                          <label>Province</label>
                                            <div class="form-group">
                                                <asp:DropDownList ID="ddlprovince"  CssClass="form-control" runat="server">
                                                    <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                    <asp:ListItem Text="Alberta" Value="Alberta" />
                                                    <asp:ListItem Text="British Columbia" Value="British Columbia" />
                                                    <asp:ListItem Text="Manitoba" Value="Manitoba" />
                                                    <asp:ListItem Text="New Brunswick" Value="New Brunswick" />
                                                    <asp:ListItem Text="Newfoundland and Labrador" Value="Newfoundland and Labrador" />
                                                    <asp:ListItem Text="Northwest Territories" Value="Northwest Territories" />
                                                    <asp:ListItem Text="Nova Scotia" Value="Nova Scotia" />
                                                    <asp:ListItem Text="Nunavut" Value="Nunavut" />
                                                    <asp:ListItem Text="Ontario" Value="Ontario" />
                                                    <asp:ListItem Text="Prince Edward Island" Value="Prince Edward Island" />
                                                    <asp:ListItem Text="Quebec" Value="Quebec" />
                                                    <asp:ListItem Text="Saskatchewan" Value="Saskatchewan" />
                                                    <asp:ListItem Text="Yukon" Value="Yukon" />
                                                 </asp:DropDownList>
                            
                                                </div>
                                              <label>City</label>
                                                     <div class="form-group">
                                                      <asp:TextBox ID="txtCity" CssClass="form-control" placeholder="City" runat="server"></asp:TextBox>
                                                     </div>
 
                                             <label>Postal Code</label>
                                                      <div class="form-group">
                                                         <asp:TextBox ID="txtPostalCode" CssClass="form-control" placeholder="Postal Code" runat="server"></asp:TextBox>
                                                      </div>
                                            </div>
                                        
                                       
                                     </div>

                                     <div class ="row">
                                          <div class="col-12">
                                           <label>Full Address</label>
                                        <div class="form-group">
                                             <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                                          </div>
                                        </div>
                                        

                                        <%-- <div class="form-group">
                                             <a href="SignUp.aspx"><input type="button" class="btn btn-info btn-lg btn-block" value="Sign Up" /> </a>
                                         </div>--%>
                                     </div>
                                 <div class="row">
                                         <div class="col-3">
                                      <div class="form-group">
                                        <asp:Button ID="btnSignup" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
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
         

     </div>
 </div>

 <!---ENd login screen--->
            </div>
        </div>

    </div>

    <br />
    <%--<div class="jumbotron text-center alert alert-danger" style="margin-bottom: 0; border:2px solid red">
        <p>Footer</p>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="footer-pad">
                        <h4>Heading1</h4>
                        <ul class="list-unstyled">
                            <li><a href="#"></a></li>
                            <li><a href="#">Payment Center</a></li>
                            <li><a href="#">News and updates</a></li>
                        </ul>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="footer-pad">
                        <h4>Heading1</h4>
                        <ul class="list-unstyled">
                            <li><a href="#"></a></li>
                            <li><a href="#">Website</a></li>
                            <li><a href="#">Disclaimer</a></li>
                        </ul>
                    </div>
                </div>                         <div class="col-md-4">
                    
                         <h4>Follow us</h4>
                         <ul class ="social-network social-circle">
                             <li><a href="#" title ="facebook"><i class ="fa fa-facebook"> Facebook</i></a></li>
                              <li><a href="#" title ="Twitter"><i class ="fa fa-twitter"> Twitter</i></a></li>
                              <li><a href="#" title ="Instagram"><i class ="fa fa-instagram"> Instagram</i></a></li>
                         </ul>
                     
                 </div>
            </div>
            <div class="row">
                <div class="col-md-12 fa-copyright border-dark">
                    <p class="text-center">&copy; Copyrith 2024 - Online Library. All rights reserved.</p>
                </div>
            </div>
        </div>
    </div>--%>

</div>
                             <!-- Footer -->
<footer class="bg-info text-center text-lg-start fixed-bottom">
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
     <asp:LinkButton class="footerlinks" ID="LinkButton10" runat="server" PostBackUrl="~/UserScreen/UserHome.aspx">Admin Arena</asp:LinkButton>
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

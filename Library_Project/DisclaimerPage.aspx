<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisclaimerPage.aspx.cs" Inherits="Library_Project.DisclaimerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Terms and Disclamier</title>
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
     

 </div>
        
  
  <div id="page-wrapper"><div id="page">

   

    <div id="main-wrapper"><div id="main" class="clearfix with-navigation">

      <div class="section">
                          <div class="header">
                          <h3 class="title">ALL YOU CAN BOOKS TERMS OF USE</h3>
                          </div>
        
              </div><!-- /.section -->
      
 <div id="content" class="column hreview-aggregate">
  <div id="node-28466" class="node node-type-page build-mode-full clearfix">
   <div class="content">
     <section class="disclaimer-page">       
         <div class="container-fluid">           
             <div class="row">               
                 <div class="col-md-12">                   
                     <div class="text-center">                       
                         <h2 class="heading-center tamil-font">Disclaimer</h2>                   

                     </div>
                     <p class="roboto">This Virtual Library Management has used reasonable endeavors to 
                         ensure that the material contained in this website are correct. However, 
                         the information contained herein is provided as a public service with the 
                         understanding that TVA makes no warranties, either expresses or implied, 
                         concerning accuracy, completeness, reliability or suitability of the 
                         information, Nor does TVA warrant that the use of this information is true
                         if any claims of copyright infringement.</p>        
                     <p class="roboto">The VLM reserves the right at anytime to make changes as it 
                         deems appropriate use information here at your own risk.</p>    
                 </div>
             </div> 
         </div>
     </section>
  </div>
 </div><!-- /.node -->
</div> <!-- /#content -->

      
      
      
      
    </div></div> <!-- /#main, /#main-wrapper -->

         
    
  </div></div> <!-- /#page, /#page-wrapper -->
  
 




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

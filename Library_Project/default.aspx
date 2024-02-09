<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Library_Project._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div id ="demo" class="carousel slide" data-ride="carousel">
      <%--Indicators--%>
                <ul class="carousel-indicators">
                    <li data-target="demo" data-slide-to="0" class="active"></li>
                    <li data-target="demo" data-slide-to="1"></li>
                    <li data-target="demo" data-slide-to="2"></li>
                </ul>
               <%-- Slideshow--%>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="SlideImg/lms1.png" alt="Toronto" width="1000" height="575">
                    </div>
                    <div class="carousel-item">
                        <img src="SlideImg/LIBimg1.jpg" alt="Brampton" width="850" height="575">
                    </div>
                    <div class="carousel-item">
                        <img src="SlideImg/lms3.jpg" alt="Mississauga" width="1000" height="575">
                    </div>
                </div>   
      <%-- left and right control--%>
                <a class ="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                 </a>
                <a class ="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                    </a>
            </div>
        </div>

       <div class="row">
            <div class ="col-sm-12">
                <h2>Library Resources</h2>
                <div class="fakeing"></div>
                <p>The Library is general in nature and holds around 400,000 volumes including ancient works and modern books, and for more than 150 years it has been considered ‘the library of the Venetians’. 
                    It is open, even on holidays and free of charge, to anyone aged 16 and over. About 20,000 volumes can be consulted in its reading rooms, as well as over 200 magazines and periodicals, 
                    whilst both local and national newspapers are available every day.

                <p>Since the late 1970s, it has been classed as a ‘Civic Library of the Historical Centre’ thanks to a convention with the Municipality of Venice,
                    recognising its role in serving the city.</p>

                <p>The Library was founded in 1869, when the Fondazione was established and Count Giovanni stipulated in his will that 
                    the family library would become public. The old core body of works owned by the Querini Stampalia family has 
                    since grown thanks to ongoing acquisitions and donations from those who have wanted to make their own 
                    personal libraries, or parts of them, available to readers and scholars.</p>
                <p>Silokjodf sdfh asd ihoihlkn ri lknfsi  oisr lnzif we lkso yw lskd iuysn kwf</p>
                <br>
                <h2>Library Updates</h2>
                <h5>THE SERVICE UPDATE YOU'VE BEEN WAITING FOR: January 17, 2024</h5>
                <div class="fakeing">Access to the Library catalogue and to My Account has been restored! This means:</div>
               <ul class="nav nav-pills flex-column">
    <li class="nav-item"> <p>You can log in to My Account</p>
    </li>
    <li class="nav-item"><p>You can place holds</p>
        
    </li>
    <li class="nav-item"><p>You can place holds</p>
    </li>
    <li class="nav-item"><p>You can return your books and other items.</p>
    </li>
    <li class="nav-item"><p>
        You can see which items you have out, your holds and your due dates using My Account.</p>
    </li>
     <li class="nav-item"><p>
     You can browse for items in the catalogue.</p>
 </li>
</ul>          
            </div>
        </div>
       <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class=" panel panel-primary">
                            <div class="panel-heading"><b>FAMILY DAY DEAL</b></div>
                            <div class="card-body">
                                <img src="Imgs/booksdeal1.jpg" class="img-responsive" style="width: 100%" alt="Image">
                            </div>
                            <div class="panel-footer"><b>Buy 5 Books and get a gift card</b></div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class=" card panel panel-danger">
                            <div class="panel-heading"><b>FAMILY DAY DEAL</b></div>
                            <div class="card-body">
                                <img src="Imgs/booksdeal2.jpg" class="img-responsive" style="width: 100%" alt="Image">
                            </div>
                            <div class="panel-footer"><b>Buy 5 Books and get a gift card</b></div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="panel panel-success">
                            <div class="panel-heading"><b>FAMILY DAY DEAL</b></div>
                            <div class="card-body">
                                <img src="Imgs/booksdeal3.jpg" class="img-responsive" style="width: 75%; height: 300px;" alt="Image">
                            </div>
                            <div class="panel-footer"><b>Buy 5 Books and get a gift card</b></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </div>
</asp:Content>

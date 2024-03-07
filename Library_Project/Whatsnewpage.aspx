<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Whatsnewpage.aspx.cs" Inherits="Library_Project.Whatsnewpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>What's New in Our Library</title>
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
           <div class="items-leading clearfix">
			<article class="item leading-0"	itemprop="blogPost" itemscope itemtype="http://schema.org/BlogPosting">
					
	<div class="page-header">
					<center><h2 itemprop="name">What's Going on New things</h2></center>
					<h2 itemprop="name">Celebrating Black History Month </h2>
   </div>

			<dl class="article-info muted">

			<dt class="article-info-term">
							</dt>
			<dd class="createdby" itemprop="author" itemscope itemtype="https://schema.org/Person">
					Written by <span itemprop="name">Todd Kyle, Chief Executive Officer</span>	</dd>
			<dd class="category-name">Category: Blog </dd>			
			
			<dd class="published">
				<span class="icon-calendar" aria-hidden="true"></span>
				<time datetime="2024-02-05T14:58:50+00:00" itemprop="datePublished">Published: 05 February 2024	</time>
			</dd>			
			</dl>
<p><span style="font-weight: 400;">Welcome to Black History Month 2024! Here at our Library, honouring the 
	successes, challenges, and resilience of the Black community locally and in Canada is a way of 
	fulfilling our mission to build an inclusive community. Visit
	<span> </span></span><a href="default.aspx"><span style="font-weight: 400;">our website</span></a>
	<span style="font-weight: 400;"><span> </span>to discover the programs and resources that are freely 
		available to you.</span></p>

<p><span style="font-weight: 400;">The Black community in Brampton has deep roots. From a small number of 
	settlers in the nineteenth century – likely escaped and freed former slaves – the community has grown 
	through successive waves of migration from elsewhere in North America as well as the Caribbean and 
	Africa. </span></p>
<p><span style="font-weight: 400;">Today, the<span> </span></span>
	<a href="https://fspeel.org/wp-content/uploads/2023/03/Black-Population-in-the-Region-of-Peel-MR-220223.pdf">
		<span style="font-weight: 400;">Black community</span></a><span style="font-weight: 400;"><span> </span>
			is the second-largest visible minority group in Peel, comprising over 137,000 people in 2021, 62% of 
			whom live in Brampton. They work in multiple professions, operate thriving businesses, and are active 
			in churches, community organizations, and the arts. </span></p>
<p><span style="font-weight: 400;">This month – and throughout the year – I invite you to experience the vibrancy 
	of Black culture, seek out  Black-owned businesses and participate in events such as those held by<span> </span></span>
	<a href="https://tickets.brampton.ca/Online/default.asp"><span style="font-weight: 400;">Brampton on Stage</span></a>
	<span style="font-weight: 400;">,<span> </span></span><a href="https://www.peelregion.ca/news/archiveitem.asp?year=2024&amp;month=0&amp;day=31&amp;file=2024031.xml">
		<span style="font-weight: 400;"> Peel Art Gallery Museum + Archives<span> </span></span></a>
	<span style="font-weight: 400;">and of course<span> </span></span><a href="default.aspx">
		<span style="font-weight: 400;">Our Library</span></a><span style="font-weight: 400;">
			. I hope to see you here!</span></p> 

				</article>
		</div><!-- end items-leading -->
	
   <div class="items-row row-0 row clearfix">
	<div class="col-sm-6">
	<article class="item column-1" itemprop="blogPost" itemscope itemtype="http://schema.org/BlogPosting">
	<div class="page-header">
		<h2 itemprop="name">
			<a href="/index.php/your-account/blog/495-a-parent-s-guide-to-not-spending-money-during-march-break" itemprop="url">
						A parent’s guide to not spending money during March Break</a>
							</h2>
	</div>
			<dl class="article-info muted">
			<dt class="article-info-term">							</dt>
				<dd class="createdby" itemprop="author" itemscope itemtype="https://schema.org/Person">
					Written by <span itemprop="name">Stephanie Jones, Interim Manager, Children’s and Youth Services</span>	</dd>
				<dd class="category-name">Category: Blog</dd>			
				<dd class="published">	<span class="icon-calendar" aria-hidden="true"></span>
				<time datetime="2024-02-01T12:21:01+00:00" itemprop="datePublished">
					Published: 01 February 2024	</time>
				</dd>			
			</dl>
		<p><span style="font-weight: 400;">When my kids have been inside too much, I have often turned to 
			the library as a place to play, borrow new books, and meet with friends. March Break is a 
			wonderful time for kids to be kids and get a little rest before heading into the last half of 
			the year. Until, inevitably, we all hear, “I’m bored.” </span></p>
		<p><span style="font-weight: 400;">Here are my secrets for keeping kids engaged without spending a 
			dime!</span></p>
		<p><span style="font-weight: 400;">An absolute classic is the Nature Scavenger Hunt! Make a list 
			together before you go outside of things you want to find. Bring your list and a writing utensil 
			to check off the things as you find them. If you can, take a photo with the found items to 
			capture the memory of working together!</span></p>
		<p><span style="font-weight: 400;">There may also be moments when you need to work and keep the kids 
			busy, but they’ve watched everything on Netflix and it’s only Tuesday! If you want to offer screen 
			time, but with new content away from YouTube, while using a device with an internet connection, 
			connect to our website to access<span> </span></span>
			<b>Kanopy</b><span style="font-weight: 400;"><span> </span>
				for kid-friendly content that’s free with your Our Library card. To learn more, see our
				<span> </span></span><a href="/index.php/e-books-e-resources/movies-tv-streaming">
					<span style="font-weight: 400;">Movie and TV Streaming page</span></a>
					<span style="font-weight: 400;">.</span>
		</p>
		<p><span style="font-weight: 400;">Make their playdate with friends unforgettable by borrowing 
			the	<b>mini hockey set </b>or a <b>board game</b></p>
		<p><span style="font-weight: 400;">If you want your kids to learn or practice their coding skills,
			<b>Hour of Code</b> is the perfect place to start. Interacting with Hour of Code feels like 
			playing a game, but they are learning coding skills too!</span></p>
		<p><span style="font-weight: 400;">When you hear, “I’m bored”, challenge them! During the pandemic, 
	Our Library staff created <b>Virtual STEM Challenges</b> that families can complete at home without any 
	special materials. They will need to collect materials from around the house, and use their problem solving 
	skills to complete the challenge - boom! There’s another afternoon of fun!</span></p>
		<p><span style="font-weight: 400;">Don’t forget to look into Our Library’s amazing FREE 
			programs - Magicians, LEGO Mania, and Slime - oh my! </span></p>
		<p><span style="font-weight: 400;">We hope to see you soon!</span></p> 
		</article>
				<!-- end item -->
	</div><!-- end col-sm-* -->
		
	   <div class="col-sm-6">
		<article class="item column-2" itemprop="blogPost" itemscope itemtype="http://schema.org/BlogPosting">
					
		<div class="page-header"><h2 itemprop="name">
			<a href="/index.php/your-account/blog/486-service-update-e-books-e-resources" itemprop="url">
						Service update: e-Books/e-Resources </a></h2>
		</div>
		<dl class="article-info muted">
			<dt class="article-info-term"> </dt>
				<dd class="createdby" itemprop="author" itemscope itemtype="https://schema.org/Person">
					Written by <span itemprop="name">Olivia Olford Emerging Technologies Librarian</span>	</dd>
				<dd class="category-name">Category: Blog</dd>			
				<dd class="published">
				<span class="icon-calendar" aria-hidden="true"></span>
				<time datetime="2023-12-12T20:19:27+00:00" itemprop="datePublished">
					Published: 12 December 2023	</time>
				</dd>			
		</dl>
		<p><span style="font-weight: 400;">Your Library membership offers free access to a wide range of 
			online resources for all ages and interests. As a responsible service provider, we are constantly
			evaluating our purchasing decisions.  </span></p>
		<p><span style="font-weight: 400;">Due to low usage and a high cost per use, along with concerns 
			around information accuracy and platform quality, access to Scott’s Directories online will no 
			longer be offered by our Library. The last day to use Scott’s Directories online is December 31, 2023. </span></p>
		<p><span style="font-weight: 400;">The following resources provide business information on Canadian 
			companies:</span></p>
<ol>
<li style="font-weight: 400;"><span style="font-weight: 400;">The </span><a href="https://geohub.brampton.ca/"><span style="font-weight: 400;">City of Brampton’s GeoHub</span></a><span style="font-weight: 400;"> is an open data resource that maintains and regularly updates local business directories, including the </span><a href="https://geohub.brampton.ca/maps/brampton-black-business-directory-2"><span style="font-weight: 400;">Brampton Business Directory</span></a><span style="font-weight: 400;"> and </span><a href="https://geohub.brampton.ca/maps/brampton-business-directory"><span style="font-weight: 400;">Brampton Black Business Directory</span></a><span style="font-weight: 400;">.</span></li>
<li style="font-weight: 400;"><span style="font-weight: 400;">Search the </span><a href="https://www.appmybizaccount.gov.on.ca/onbis/master/entry.pub?applicationCode=onbis-master&amp;businessService=registerItemSearch"><span style="font-weight: 400;">Ontario Business registry</span></a><span style="font-weight: 400;"> online to get basic information about a business or not-for-profit organization. </span></li>
<li style="font-weight: 400;"><span style="font-weight: 400;">Search for suppliers and competitors using directories of Canadian companies maintained and provided by the Government of Canada:</span></li>
	<ul>
		<li style="font-weight: 400;"><span style="font-weight: 400;">Find businesses within Canada by name 
			using </span><a href="https://beta.canadasbusinessregistries.ca/search"><span style="font-weight: 400;">
				Canada's business registries</span></a><span style="font-weight: 400;">. </span></li>
		<li style="font-weight: 400;"><span style="font-weight: 400;">Find a list of companies that import goods into 
			Canada by product, city or country of origin using the </span><a href="https://www.ic.gc.ca/eic/site/cid-dic.nsf/eng/home">
				<span style="font-weight: 400;">Canadian importers database.</span></a><span style="font-weight: 400;"> 
                 </span>
		</li>
	</ul>
<li style="font-weight: 400;"><span style="font-weight: 400;">Find information on specific industries and 
	companies in Canada</span></li>
<ul>
<li style="font-weight: 400;"><span style="font-weight: 400;">Use the </span>
	<a href="https://www23.statcan.gc.ca/imdb/p3VD.pl?Function=getVD&amp;TVD=1369825&amp;HPA=1">
		<span style="font-weight: 400;">North American Industry Classification System (NAICS) Canada 2022 
			Version 1.0</span></a> <span style="font-weight: 400;">to identify a NAICS code for your 
			industry of interest.
         </span>
</li>
<li style="font-weight: 400;"><span style="font-weight: 400;">Search a NAICS code in the </span>
	<a href="https://ised-isde.canada.ca/app/ixb/cis/search-recherche"><span style="font-weight: 400;">
		Canadian Industry Statistics (CIS) database</span></a><span style="font-weight: 400;">. 
			The CIS database uses recent data from Statistics Canada to provide insight on industry trends 
			and financial information, such as GDP, labour productivity, manufacturing, and trade data.
        </span>
</li>
</ul>
</ol>
<p><span style="font-weight: 400;">If you need assistance, or would like to share your feedback, 
	please call </span><span style="font-weight: 400;">905-793-4636</span><span style="font-weight: 400;"> 
		or use our </span><a href="/index.php/ask-a-question"><span style="font-weight: 400;">Ask 
			a question</span></a><span style="font-weight: 400;"> feature.</span>
</p> 

</article>
				<!-- end item -->
</div><!-- end col-sm-* -->
</div><!-- end row -->
              
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
     <asp:LinkButton class="footerlinks" ID="LinkButton10" runat="server" PostBackUrl="~/Login.aspx">Member Arena</asp:LinkButton>
</p>

            </div>
 <div class="col-xs-12 col-sm-12 col-md-12 text-center">
    <div class="top-social">
        <a href="https://www.facebook.com/" target="_blank" rel="noopener noreferrer">
        <img src="../Imgs/facebook.jpg" width="30" height="30" alt="facebook" /></a>

        <a href="https://www.instagram.com/" target="_blank" rel="noopener noreferrer">
        <img src="../Imgs/insta.jpg" width="30" height="30" alt="instagram" /></a>

        <a href="https://twitter.com/" target="_blank" rel="noopener noreferrer">
        <img src="../Imgs/twitter.png" width="30" height="30" alt="twitter" /></a>
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


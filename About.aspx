<%@ Page Title="About Us" Language="C#" MasterPageFile="~/pos.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="about" class="page-alternate">
<div class="container">
    <!-- Title Page -->
        <div class="container">
			<div class="center wow fadeInDown">
				<h2>About Proud Of Sangli</h2>
				<p class="MsoNormal">
                    <span>&nbsp;&quot;PROUD OF SANGLI” is a website on which we get 
                    the information about idol personalities. In Sangli there are number of idol 
                    persons who are unknown for other people and with this project we will introduce 
                    these great personalities in Sangli district.<o:p></o:p></span></p>
				<p class="lead">&nbsp;</p>
                <p class="lead">Motivate the young generations<br>Make believe in nothing is impossible</br></p>
			</div>
			
			<!-- about us slider -->
			<div id="about-slider">
				<div id="carousel-slider" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
				  	<ol class="carousel-indicators visible-xs">
					    <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-slider" data-slide-to="1"></li>
					    <li data-target="#carousel-slider" data-slide-to="2"></li>
				  	</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="images/b1.jpg" class="img-responsive" alt=""> 
					   </div>
					   <div class="item">
							<img src="images/wc2.jpg" class="img-responsive" alt=""> 
					   </div> 
					   <div class="item">
							<img src="images/Sangmeshwar Temple @ Mohitewadgaon copy_1.jpg" class="img-responsive" alt=""> 
					   </div> 
					</div>
					
					<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
						<i class="fa fa-angle-left"></i> 
					</a>
					
					<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
						<i class="fa fa-angle-right"></i> 
					</a>
				</div> <!--/#carousel-slider-->
			</div><!--/#about-slider-->
			
			
			<!-- Our Skill -->
			<div class="skill-wrap clearfix">
			
				<div class="center wow fadeInDown">
					<h2>Our Moto</h2>
					<p class="lead">Not believe that how much you have and where you belong<br> We believe that how you sacrify the things to achive your goal</p>
				</div>
	
            </div><!--/.our-skill-->
			

			<!-- our-team -->
            <!--section-->
		</div><!--/.container-->
    </section><!--/about-us-->
</asp:Content>
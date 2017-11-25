<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/pos.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <section id="main-slider" class="no-margin">
        <div class="carousel slide" >
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
                 <li data-target="#main-slider" data-slide-to="3"></li>
                <li data-target="#main-slider" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(images/slider/Ladder-on-Prachitgad.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Prachitgad</h1>
                                    <h2 class="animation animated-item-2"></h2>
                                    <!--a class="btn-slide animation animated-item-3" href="#">Read More</!--a-->
                                </div>
                            </div>

                            <!--div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="" class="img-responsive">
                                </div>
                            </!--div-->

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/Bahubali-Hill-Temple.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Bahubali Temple</h1>
                                    <h2 class="animation animated-item-2"></h2>
                                </div>
                            </div>

                            <!--div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img2.png" class="img-responsive">
                                </div>
                            </!--div-->

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/573gal3.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Chandoli National Forest</h1>
                                    <h2 class="animation animated-item-2"></h2>
  
                                </div>
                            </div>
                            <!--div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img3.png" class="img-responsive">
                                </div>
                            </!--div-->
                        </div>
                    </div>
                </div>
                <!--/.item-->
                <div class="item" style="background-image: url(images/b1.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Iron Bridge</h1>
                                    <h2 class="animation animated-item-2"></h2>
                                </div>
                            </div>

                            <!--div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img2.png" class="img-responsive">
                                </div>
                            </!--div-->

                        </div>
                    </div>
                </div>
                 <!--/.item-->
                 <div class="item" style="background-image: url(images/wc2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Saraswati Statue At Walchand College</h1>
                                    <h2 class="animation animated-item-2"></h2>
                                </div>
                            </div>

                            <!--div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img2.png" class="img-responsive">
                                </div>
                            </!--div-->

                        </div>
                    </div>
                </div>
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section><!--/#main-slider-->

    
    <section id="photos">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Photos</h2>
                <p></p>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                       <img class="img-responsive" src="images/1.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="Politics.aspx">Politician</a></h3>
                                 <p>Annasaheb Dange</p>
                                <!--a class="preview" href="images/portfolio/full/item1.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</!--a-->
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                       <img class="img-responsive" src="images/chitale.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="Bussiness.aspx">Bussiness Man</a></h3>
                                 <p>Bhasker Chitale</p>
                                
                                <!--a class="preview" href="images/portfolio/full/item2.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</!--a-->
                            </div> 
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/3.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="Actors_Actress.aspx">Cultural</a></h3>
                                 <p>Bhagyshree Patwardhan</p>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/4.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="Musician.aspx">Cultural </a></h3>
                                 <p>Lata Mangeshker</p>
                                <!--a class="preview" href="images/portfolio/full/item4.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</!--a-->
                            </div> 
                        </div>
                    </div>
                </div>   
                
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/hnitin.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="Sports.aspx">Sports</a></h3>
                                 <p>Nitin Madane</p>
                                <!--a class="preview" href="images/portfolio/full/item5.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</!--a-->
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/hsai.jpg" alt=""/>
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="Actors_Actress.aspx">Cultural</a></h3>
                                 <p>Sai Tamhanaker</p>
                                <!--p>There are many variations of passages of Lorem Ipsum available, but the majority</!--p-->
                               
                            </div> 
                        </div>
                    </div>
                </div> 

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/hvijay.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="Sports.aspx">Sports</a></h3>
                                 <p>Vijay Hazare</p>
                                <!--p>There are many variations of passages of Lorem Ipsum available, but the majority</!--p-->
                               
                            </div> 
                        </div>
                    </div>
                </div> 
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/hyashwant.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="Politics.aspx">Politics</a></h3>
                                 <p>Yashawantrao Chavan</p>
                                <!--p>There are many variations of passages of Lorem Ipsum available, but the majority</!--p-->
                               
                            </div> 
                        </div>
                    </div>
                </div>   
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#recent-works--> 
    
                      
</asp:Content>

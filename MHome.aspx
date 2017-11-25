<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/mpos.master" AutoEventWireup="true"
    CodeFile="MHome.aspx.cs" Inherits="_Default" %>

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
                                    <h1 class="animation animated-item-1">प्रचीतीगड</h1>
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
                                    <h1 class="animation animated-item-1">बाहुबली  मंदिर </h1>
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
                                    <h1 class="animation animated-item-1">चांदोली राष्ट्रीय वन</h1>
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
                </div><!--/.item-->
                <div class="item" style="background-image: url(images/b1.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">आर्यर्वीन पूल</h1>
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
                  <div class="item" style="background-image: url(images/wc2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">सरस्वती  मुर्ती </h1>
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
                <h2>प्रतिमा </h2>
                <p></p>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                       <img class="img-responsive" src="images/1.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">राजकारणी</a> </h3>
                                <p> <h2> अण्णासाहेब डांगे </h2></p>
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
                                <h3><a href="#">व्यवसायिक </a></h3>
                                 <p> <h2>भास्कर  चितळे </h2></p>
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
                                <h3><a href="#">सांस्कृतिक</a></h3>
                                 <p> <h2> भाग्यश्री पटवर्धन </h2></p>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/4.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">सांस्कृतिक </a></h3>
                               <p> <h2> लता मंगेशकर</h2></p>
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
                                <h3><a href="#">क्रीडा </a></h3>
                                <p> <h2>नितीन मदने  </h2></p>
                                <!--a class="preview" href="images/portfolio/full/item5.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</!--a-->
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/hsai.jpg" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">सांस्कृतिक </a></h3>
                                     <p> <h2>सई ताम्हनकर  </h2></p>
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
                                <h3><a href="#">क्रीडा</a></h3>
                                <p> <h2> विजय हजारे  </h2></p>
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
                                <h3><a href="#">राजकारण</a></h3>
                                <p> <h2>यशवंतराव चव्हाण  </h2></p>
                                <!--p>There are many variations of passages of Lorem Ipsum available, but the majority</!--p-->
                               
                            </div> 
                        </div>
                    </div>
                </div>   
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#recent-works--> 
    
                      
</asp:Content>

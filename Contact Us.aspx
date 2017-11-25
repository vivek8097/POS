<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" MasterPageFile="~/pos.master" Inherits="Contact_Us" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <section id="contact-info">
        <div class="center" align="center">                
            <h2>How to Reach Us?</h2>
            <p class="lead"></p>
        </div>
        <div class="gmap-area">
            <div class="container">
                <div class="row">

                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li class="col-sm-6">
                                <address>
                                    <h5>District Collector Office</h5>
                                    <p>Rajwada Chowk, Sangli - 416 416.<br>
                                    Ph. No. (0233) 2373001.</p>
                                    <p>Fax No. (0233) 2326710<br>
                                    </p>
                                </address>
                                </li>
                                 <li class="col-sm-6">
                                 <address>
                                   <h5>Vivek Singh</h5>
                                    <p>ADCET college,Ashta </br>
                                    <p>Phone:9730785401</p>
                                    Email Address:singhvivekp@gmail.com</p>
                                </address>
                                 </li>
                                 <li class="col-sm-6">
                                <address>
                                   <h5>Amol kempawade</h5>
                                    <p>ADCET college,Ashta </br>
                                    <p>Phone:9762976367</p>
                                    Email Address:amol5593@gmail.com</p>
                                </address>
                            </li>


                            <li class="col-sm-6">
                                <address>
                                 <h5>Annasaheb Dange College of Engineering and Technology,Ashta.</h5>
                                    <p>ADCET college,Ashta</br>
                                       Website:www.adcet.in </p>
                                    
                                </address>

                                
                            </li>
                                    </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>  <!--/gmap_area -->

    <section id="contact-page">
        <div class="container">
            <div class="center">        
                <h2>Drop Your Message</h2>
                <p class="lead">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Name *</label>
                            <asp:TextBox ID="name" runat="server" type="text" name="name" class="form-control" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Email *</label>
                            <asp:TextBox ID="email" runat="server" type="email" name="email" class="form-control" required="required"></asp:TextBox>
                        </div>                     
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Subject *</label>
                            <asp:TextBox ID="sub" runat="server" type="text" name="subject" class="form-control" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Message *</label>
                            <asp:TextBox ID="msg" runat="server" name="message" required="required"  
                                class="form-control" rows="8" TextMode="MultiLine"></asp:TextBox>
                        </div>                        
                        <div class="form-group">
                            <asp:Button ID="submit" type="submit" runat="server" name="submit" OnClick="Button1_Click"
                                class="btn btn-primary btn-lg" required="required" Text="Submit"></asp:Button>
                            <asp:Label ID="lbl1" runat="server"></asp:Label>
                        </div>
                    </div>
                </form> 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->

</asp:Content>

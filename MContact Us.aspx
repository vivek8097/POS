<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MContact Us.aspx.cs" MasterPageFile="~/mpos.master" Inherits="Contact_Us" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <section id="contact-info">
        <div class="center" align="center">                
            <h2>आमच्याशी संपर्क कसा साधाल ?
?</h2>
            <p class="lead"></p>
        </div>
        <div class="gmap-area">
            <div class="container">
                <div class="row">

                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li class="col-sm-6">
                                <address>
                                    <h5>जिल्हाधिकारी कार्यालय</h5>
                                    <p>राजवाडा चौक, सांगली - 416 416.<br>
                                    फोन.नं.(0233) 2373001 .</p>
                                    <p>फॅक्स नं . (0233) 2326710  <br>
                                    </p>
                                </address>
                                </li>
                                <li class="col-sm-6">
                                <address>
                                    <h5>विवेक प्रताप सिंग </h5>
                                    <p>ADCET कॉलेज, आष्टा </br>
                                    <p>फोन: ९७३०७८५४०१</p>
                                    ई-मेल:singhvivekp@gmail.com</p>
                                </address>
                                </li>
                                 <li class="col-sm-6">
                                <address>
                                    <h5>अमोल केंपवाडे </h5>
                                    <p>ADCET कॉलेज, आष्टा </br>
                                    <p>फोन: ९७६२९७६३६७</p>
                                    ई-मेल:amol5593@gmail.com</p>
                                </address>
                               
                            </li>


                            <li class="col-sm-6">
                                
                                 <address>
                                    <h5>अण्णासाहेब डांगे कॉलेज ऑफ इंजिनीरिंग अन्ड टेकनोलोजी, आष्टा.</h5>
                                     <p><br>तालुका :वाळवा </br> जिल्हा :सांगली</p>
                                     <p>वेबसाईट: www.adcet.in</p>
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
                <h2>आपली  प्रतिक्रिया </h2>
                <p class="lead"></p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>नाव  *</label>
                            <asp:TextBox ID="name" runat="server" type="text" name="name" class="form-control" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>इमेल  *</label>
                            <asp:TextBox ID="email" runat="server" type="email" name="email" class="form-control" required="required"></asp:TextBox>
                        </div>                     
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>विषय  *</label>
                            <asp:TextBox ID="sub" runat="server" type="text" name="subject" class="form-control" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>प्रश्न  *</label>
                            <asp:TextBox ID="msg" runat="server" name="message" required="required"  
                                class="form-control" rows="8" TextMode="MultiLine"></asp:TextBox>
                        </div>                        
                        <div class="form-group">
                            <asp:Button ID="submit" type="submit" runat="server" name="submit" OnClick="Button1_Click"
                                class="btn btn-primary btn-lg" required="required" Text="नोंद करा "></asp:Button>
                            <asp:Label ID="lbl1" runat="server"></asp:Label>
                        </div>
                    </div>
                </form> 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->

</asp:Content>

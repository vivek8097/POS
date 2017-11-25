<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" MasterPageFile="~/Admin.master" Inherits="Admin" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="center wow fadeInDown">
 <h2 class="title">Add Personalities</h2>
</div>
<div class="row">
    	<div class="span9" align="center">
        
        	<form id="contact-form" class="contact-form" action="#">
            	<p class="contact-name">
            		<asp:TextBox id="txt1" type="text" runat="server" placeholder="Name" value="" name="name"></asp:TextBox>
                </p>
                <p class="contact-email">
                	<asp:TextBox id="txt2" type="text" runat="server" placeholder="BirthPlace" value="" name="name"></asp:TextBox>
                </p>
                <p class="contact-message">
                	<asp:TextBox id="txt3" type="text" runat="server" placeholder="Awards" 
                        value="" name="name" TextMode="MultiLine"></asp:TextBox>
                </p>
                 <p class="contact-message">
                	<asp:TextBox id="txt7" type="text" runat="server" placeholder="Date Of Birth" 
                        value="" name="name"></asp:TextBox>
                </p>
                  <p class="contact-message">
                      <asp:Label ID="lbl1" runat="server" ForeColor="White"></asp:Label>
                  <asp:FileUpload ID="FileUpload1" runat="server" />
                    </p>
                <p class="contact-message">
                    
                	<asp:TextBox id="txt4" type="text" runat="server" placeholder="Personal Information" 
                        value="" name="name" TextMode="MultiLine"></asp:TextBox>
                </p>
                <div>
                <asp:Label ID="catl1" runat="server" Text="Select Category"></asp:Label>
                 <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="category" 
                    DataValueField="category">
                      </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:sangliConnectionString %>" 
                    SelectCommand="SELECT [category] FROM [cate_table]"></asp:SqlDataSource>
                    </div>
                <!--<div>
                    <asp:Label ID="awardsl1" runat="server" Text="Select Awards"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="awards" DataValueField="awards"></asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sangliConnectionString %>" SelectCommand="SELECT [awards] FROM [awards]"></asp:SqlDataSource>
                    </div>-->
                <p class="contact-message">
                	<asp:TextBox id="txt5" type="text" runat="server" placeholder="Career" 
                        value="" name="name" TextMode="MultiLine"></asp:TextBox>
                </p>
                <p class="contact-message">
                	<asp:TextBox id="txt6" type="text" runat="server" placeholder="Other Info" 
                        value="" name="name" TextMode="MultiLine"></asp:TextBox>
                </p>
                <p class="contact-submit">
               <asp:Button ID="submit" class="button button-small" runat="server" OnClick="btn_click" Text="Submit" />
                </p>
                
                <div id="response">
                
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Black" ></asp:Label>
                
                </div>
            </form>
         
        </div>
        
        <div class="span3">
        </div>
    </div>
     </asp:Content>
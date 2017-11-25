<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MDelete.aspx.cs" MasterPageFile="~/mAdmin.master" Inherits="Delete" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div class="center wow fadeInDown">
 <h2 class="title">Delete Personalities</h2>
</div>
<div class="row">
    	<div class="span9" align="center">
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
    </asp:DropDownList>
    <p class="contact-submit">
               <asp:Button ID="submit" class="button button-small" runat="server" OnClick="btn_click" Text="Delete" />
                </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MsangliConnectionString %>" 
        SelectCommand="SELECT [name] FROM [MasterTable]"></asp:SqlDataSource>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </div>
    </div>
   </asp:Content>

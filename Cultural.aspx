<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cultural.aspx.cs" MasterPageFile="~/pos.master" Inherits="Cultural" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div align="center">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <LayoutTemplate>
 <table border="0" cellpadding="1">
  <tr style="background-color:#E5E5FE">
   <th align="left"><asp:LinkButton ID="lnkId" runat="server">Image</asp:LinkButton></th>
   <th align="left"><asp:LinkButton ID="lnkName" runat="server">Name</asp:LinkButton></th>
  </tr>
  <tr id="itemPlaceholder" runat="server"></tr>
 </table>
</LayoutTemplate>
<ItemTemplate>
  <tr style="background-color:#EFEFEF" >
   <td><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image")%>' Width="230" Height="230" BorderStyle="Groove" ImageAlign="AbsMiddle" /></td>
      
   <td><asp:HyperLink ID="HyperLink1"

                           NavigateUrl="~/Detail.aspx" OnClick="LinkButton_Click"

                           runat="server"><%# Eval("name") %></asp:HyperLink></td>
  </tr>
</ItemTemplate>
<AlternatingItemTemplate>
  <tr style="background-color:#EFEFEF">
   <td><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' Height="230" Width="230" BorderStyle="Groove" ImageAlign="AbsMiddle" /></td>
   <td><asp:HyperLink ID="HyperLink1"

                           NavigateUrl="~/Detail.aspx"

                           runat="server"><%# Eval("name") %></asp:HyperLink></td>
  </tr>
</AlternatingItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:sangliConnectionString %>" 
        SelectCommand="SELECT [image], [name] FROM [MasterTable] WHERE ([fields] = @fields)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Cultural" Name="fields" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </asp:Content>

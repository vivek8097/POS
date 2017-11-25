<%@ Page Title="" Language="C#" MasterPageFile="~/pos.master" AutoEventWireup="true" CodeFile="Agriculture.aspx.cs" Inherits="Agriculture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   <div align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" ShowHeader="False">
        <Columns>
            <asp:TemplateField HeaderText="image" SortExpression="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                     <div class="yoxview">
                         <div class="row-fluid">
                              <ul class="thumbnails">
                                <li class="span3">
                                    <div class="thumbnail">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image")%>' Width="230" Height="230" BorderStyle="Groove" ImageAlign="AbsMiddle" />
                                        </div>
                                    </div>
                         </ul>
                         </div>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="name" 
                DataNavigateUrlFormatString="Detail.aspx?name={0}" DataTextField="name" 
                HeaderText="name" />

        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:sangliConnectionString %>" 
        SelectCommand="SELECT [image], [name] FROM [MasterTable] WHERE ([fields] = @fields)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Agriculture" Name="fields" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>


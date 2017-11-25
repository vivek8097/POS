﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MBussiness.aspx.cs" MasterPageFile="~/mpos.master" Inherits="Bussiness" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
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
                DataNavigateUrlFormatString="MDetail.aspx?name={0}" DataTextField="name" 
                HeaderText="name" />

        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MsangliConnectionString %>" 
        SelectCommand="SELECT [image], [name] FROM [MasterTable] WHERE ([fields] = @fields)">
        <SelectParameters>
            <asp:Parameter DefaultValue="व्यवसाय" Name="fields" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </asp:Content>

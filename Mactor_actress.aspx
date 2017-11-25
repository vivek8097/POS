<%@ Page Title="" Language="C#" MasterPageFile="~/mpos.master" AutoEventWireup="true" CodeFile="Mactor_actress.aspx.cs" Inherits="Mactor_actress" %>

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
                DataNavigateUrlFormatString="MDetail.aspx?name={0}" DataTextField="name" 
                HeaderText="name" />

        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MsangliConnectionString %>" 
        SelectCommand="SELECT [image], [name] FROM [MasterTable] WHERE ([fields] = @fields)">
        <SelectParameters>
            <asp:Parameter DefaultValue="अभिनेता आणि अभिनेत्री " Name="fields" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>


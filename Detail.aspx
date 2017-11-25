<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detail.aspx.cs" MasterPageFile="~/pos.master" Inherits="Detail" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">

<div id="divBoxed" class="container">

    <div class="transparent-bg" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: -1;zoom: 1;"></div>

    <div class="contentArea">

        <div class="divPanel notop page-content">

            <div class="row-fluid">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            image:
            <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            dob:
            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            fields:
            <asp:TextBox ID="fieldsTextBox" runat="server" Text='<%# Bind("fields") %>' />
            <br />
            personal_info:
            <asp:TextBox ID="personal_infoTextBox" runat="server" 
                Text='<%# Bind("personal_info") %>' />
            <br />
            career:
            <asp:TextBox ID="careerTextBox" runat="server" Text='<%# Bind("career") %>' />
            <br />
            awards:
            <asp:TextBox ID="awardsTextBox" runat="server" Text='<%# Bind("awards") %>' />
            <br />
            other_info:
            <asp:TextBox ID="other_infoTextBox" runat="server" 
                Text='<%# Bind("other_info") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            image:
            <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            dob:
            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            fields:
            <asp:TextBox ID="fieldsTextBox" runat="server" Text='<%# Bind("fields") %>' />
            <br />
            personal_info:
            <asp:TextBox ID="personal_infoTextBox" runat="server" 
                Text='<%# Bind("personal_info") %>' />
            <br />
            career:
            <asp:TextBox ID="careerTextBox" runat="server" Text='<%# Bind("career") %>' />
            <br />
            awards:
            <asp:TextBox ID="awardsTextBox" runat="server" Text='<%# Bind("awards") %>' />
            <br />
            other_info:
            <asp:TextBox ID="other_infoTextBox" runat="server" 
                Text='<%# Bind("other_info") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
			
                           <ItemTemplate> 
                <div class="span3"> 
                                            
         <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image")%>' Width="230" Height="230" BorderStyle="Groove" ImageAlign="AbsMiddle" />           
            <br /><p></p>
                     </div> 
					<div class="span9" id="divMain">                 
                 <b style="font-size: medium">Name:</b>
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
           <b style="font-size: medium">Date Of Birth:</b>
            <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
            <br />
           <b style="font-size: medium">Address:</b>
            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
            <br />
            <b style="font-size: medium">Field:</b>
            <asp:Label ID="fieldsLabel" runat="server" Text='<%# Bind("fields") %>' />
            <br />
            <b style="font-size: medium">Personal Information:</b>
            <asp:Label ID="personal_infoLabel" runat="server" 
                Text='<%# Bind("personal_info") %>' />
            <br />
            <b style="font-size: medium">Career:</b>
            <asp:Label ID="careerLabel" runat="server" Text='<%# Bind("career") %>' />
            <br />
            <b style="font-size: medium">Awards:</b>
            <asp:Label ID="awardsLabel" runat="server" Text='<%# Bind("awards") %>' />
            <br />
            <b style="font-size: medium">Other Information:</b>
            <asp:Label ID="other_infoLabel" runat="server" 
                Text='<%# Bind("other_info") %>' />
            <br />
                        </div>
                    
                    </ItemTemplate>						
                    </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sangliConnectionString %>" 
            SelectCommand="SELECT [image], [name], [dob], [address], [fields], [personal_info], [career], [awards], [other_info] FROM [MasterTable] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:QueryStringParameter Name="name" QueryStringField="name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>                          
                    					                  
				<!--/End Main Content Area here-->	                
					
							
            </div>
        </div>
    </div>

    

</div>
    </asp:Content>
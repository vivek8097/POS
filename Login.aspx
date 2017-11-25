﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html lang="en">
	<head runat="server">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Login</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
	</head>
	<body>
    <form runat="server">
<!--login modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">Login</h1>
      </div>
      <div class="modal-body">
          </div>
            <div class="form-group">
              <asp:TextBox ID="uname" type="text" runat="server" class="form-control input-lg" placeholder="User Name"></asp:TextBox>
            </div>
            <div class="form-group">
              <asp:TextBox ID="password" runat="server" type="password" class="form-control input-lg" placeholder="Password"></asp:TextBox>
            </div>
            <div class="form-group">
            <asp:Button ID="btn1" class="btn btn-primary btn-lg btn-block" runat="server" OnClick="login_click" Text="Login"/>
              <!--<span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>-->
            </div>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
              <asp:Label ID="Label1" runat="server" Text="Label" align="left"></asp:Label>
          <asp:Button ID="btn2" class="btn" runat="server" OnClick="get_click" data-dismiss="modal" Text="Cancel" aria-hidden="true"></asp:Button>
		  </div>	
      </div>
  </div>
  </div>
	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="login/js/bootstrap.min.js"></script>
        </form>
	</body>
</html>

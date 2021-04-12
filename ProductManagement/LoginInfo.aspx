<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginInfo.aspx.cs" Inherits="ProductManagement.LoginInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/MyScripts/ProductDetails.js"></script>
    <script>
        $(function () {
            //GetData();     
        })
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          
        <div class="container" style="max-width: 550px;">
         

            <h2 class="form-signin-heading" style="margin-top: 15%; ">Business Solutions - Yarn Industry</h2>
            <label for="txtUsername" style="font-weight: bold; margin-top: 20px;">
                User Name</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter User Name"
                required />
            <br />
            <label for="txtPassword" style="font-weight: bold">
                Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"
                placeholder="Enter Password" required />

            <asp:Button ID="btnLogin" Text="Login" runat="server" Class="btn btn-primary" Style="margin-top: 20px;" OnClick="btnLogin_Click" OnClientClick="return ValidateUser();" />
            <asp:Button ID="btnRegister" Text="Register" runat="server" Class="btn btn-primary" Style="margin-top: 20px;" OnClick="btnRegister_Click" />
          

            <br />
            <div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
                <strong>Error!</strong>
                <asp:Label ID="lblMessage" runat="server" />
            </div>
             <asp:Image ID="Image1" runat="server" ImageUrl="~/management.jpg" style="width:520px; height:300px;"/>
        </div>
    </form>
</body>
</html>

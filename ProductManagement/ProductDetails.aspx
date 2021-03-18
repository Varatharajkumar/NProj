<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="ProductManagement.ProductDetails" %>

<%@ Register Src="~/SideBarDetails.ascx" TagPrefix="uc1" TagName="SideBarDetails" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
 <div>
     <uc1:SideBarDetails runat="server" ID="SideBarDetails" />
</div>
<div class="main">
  <h2>Information about the project</h2>
  <p>Information 1</p>
  <p>Information 2</p>
  <p>Information 3</p>
</div>
     
    </form>
</body>
</html>

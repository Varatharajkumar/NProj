<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SideBarDetails.ascx.cs" Inherits="ProductManagement.SideBarDetails" %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<div class="sidebar">
    <asp:HyperLink ID="hyperlink1" class="fa fa-fw fa-home" Text="Display Product" runat="server" NavigateUrl="~/ProductDetails.aspx" />
    <asp:HyperLink ID="hyperlink2" class="fa fa-fw fa-home" NavigateUrl="~/AddProductDetail.aspx" Text="Add Product" runat="server" />
    <asp:HyperLink ID="hyperlink3" class="fa fa-fw fa-home" NavigateUrl="~/DisplayUserDetails.aspx" Text="Display User" runat="server" />
</div>

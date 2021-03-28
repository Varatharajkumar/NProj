<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SideBarDetails.ascx.cs" Inherits="ProductManagement.SideBarDetails" %>


<div class="sidebar">
    <asp:HyperLink ID="hyperlink1" class="fa fa-fw fa-home" Text="Display Product Details" runat="server" NavigateUrl="~/ProductDetails.aspx" />
    <asp:HyperLink ID="hyperlink2" class="fa fa-fw fa-home" NavigateUrl="~/AddProductDetail.aspx" Text="Add Product Detail" runat="server" />
    <asp:HyperLink ID="hyperlink3" class="fa fa-fw fa-home" NavigateUrl="~/AddProductDetail.aspx" Text="Display User Details" runat="server" />
</div>

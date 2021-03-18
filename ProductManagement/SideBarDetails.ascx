<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SideBarDetails.ascx.cs" Inherits="ProductManagement.SideBarDetails" %>


<div class="sidebar">
    <asp:HyperLink ID="hyperlink1" class="fa fa-fw fa-home"  Text="Menu 1" runat="server" NavigateUrl="~/Menu1.aspx" />
    <asp:HyperLink ID="hyperlink2" class="fa fa-fw fa-home" NavigateUrl="#home1" Text="Menu 2" runat="server" />
    <asp:HyperLink ID="hyperlink3" class="fa fa-fw fa-home" NavigateUrl="#home2" Text="Menu 3" runat="server" />
    <asp:HyperLink ID="hyperlink4" class="fa fa-fw fa-home" NavigateUrl="#home3" Text="Menu 4" runat="server" />
</div>

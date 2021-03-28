<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopBarDetails.ascx.cs" Inherits="ProductManagement.TopBarDetails" %>
<div class="topbar">

    <div class="clsLogin">
        <asp:Label ID="lblUser" runat="server"></asp:Label>
        <asp:LinkButton ID="lnkSignOut" runat="server" OnClick="lnkSignOut_Click">Sign Out</asp:LinkButton>
    </div>
</div>

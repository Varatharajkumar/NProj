<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopBarDetails.ascx.cs" Inherits="ProductManagement.TopBarDetails" %>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/MyScripts/ProductDetails.js"></script>
    <script>
        $(function () {
            //UpdateThresholdDetails();
        })
    </script>
<div class="topbar">

    <div class="clsLogin">
                <asp:Label ID="lblUser" runat="server" CssClass="clsTopMenuElmt"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Update Needle Count" OnClick="Button1_Click" />
                <asp:LinkButton ID="lnkSignOut" runat="server" OnClick="lnkSignOut_Click">Sign Out</asp:LinkButton>
        <marquee style="background-color:white; margin-top:10px;" behavior="scroll">
        <asp:Label ID="Label4" runat="server" CssClass="clsTopMenuElmt2 clsTopMenuElmt">Threshold Reached</asp:Label>
        Threshold Limit:
        <asp:Label ID="lblThreshold" runat="server" CssClass="clsTopMenuElmt"> 1000</asp:Label>
        Total Weight:
        <asp:Label ID="Label1" runat="server" CssClass="clsTopMenuElmt"></asp:Label>
        Needle Count:
        <asp:Label ID="Label2" runat="server"  CssClass="clsTopMenuElmt"> 1</asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="clsTopMenuElmt2">It's time to replace the Needle!!!</asp:Label></marquee>
        <asp:HiddenField ID="hdnQuantity" runat="server" />

    </div>
</div>

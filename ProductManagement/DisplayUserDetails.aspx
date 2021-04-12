<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayUserDetails.aspx.cs" Inherits="ProductManagement.DisplayUserDetails" %>

<%@ Register Src="~/SideBarDetails.ascx" TagPrefix="uc1" TagName="SideBarDetails" %>

<%@ Register Src="~/TopBarDetails.ascx" TagPrefix="uc2" TagName="TopBarDetails" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc2:TopBarDetails runat="server" ID="TopBarDetails1" />
        </div>
        <div>
            <uc1:SideBarDetails runat="server" ID="SideBarDetails1" />
        </div>
        <div class="main">
            <h3 style="margin: 20px;">Display User</h3>
            <asp:GridView ID="rvDisplayUser" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Height="214px" Width="996px" ForeColor="Black">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
            <br />
            <asp:Button CssClass="btn clsButtonStyle1 fa fa-download" ID="btnDownload" runat="server" Text="Download" OnClick="btnDownload_Click" Height="53px" Width="150px" />

        </div>



    </form>
</body>
</html>

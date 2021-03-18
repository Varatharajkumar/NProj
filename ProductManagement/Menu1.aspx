<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu1.aspx.cs" Inherits="ProductManagement.Menu1" %>
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
    <h3>Menu 1 Details
    </h3>
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    <asp:Button ID="btnDownload" runat="server" Text="Download Data" OnClick="btnDownload_Click" />
</div>
    </form>
</body>
</html>

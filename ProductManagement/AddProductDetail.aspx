<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProductDetail.aspx.cs" Inherits="ProductManagement.AddProductDetail" %>

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
            <br />
            <table class="auto-style1" style="width:50%">
                <tr>
                    <td class="auto-style2 clsRight">Product Name</td>
                    <td>
                        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 clsRight">Product Category</td>
                    <td>
                        <asp:TextBox ID="txtProductCategory" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5 clsRight">Product Quality</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtProductQuality" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 clsRight">Product Cost</td>
                    <td>
                        <asp:TextBox ID="txtProductCost" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 clsRight">Needle Info</td>
                    <td>
                        <asp:TextBox ID="txtNeedleInfo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblOutput" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            </div>
    </form>
</body>
</html>

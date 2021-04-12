<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProductDetail.aspx.cs" Inherits="ProductManagement.AddProductDetail" %>

<%@ Register Src="~/SideBarDetails.ascx" TagPrefix="uc1" TagName="SideBarDetails" %>
<%@ Register Src="~/TopBarDetails.ascx" TagPrefix="uc2" TagName="TopBarDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
        <script src="Scripts/MyScripts/ProductDetails.js"></script>
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
        <div class="container">
            <table class="table table-bordered">
                                <thead>
                    <tr>
                        <th scope="col" colspan="2">
                            <h2 id="h2elmt">Add Product</h2>

                        </th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="auto-style2 clsRight">Party  Name</td>
                    <td>
                        <asp:TextBox ID="txtPartyName" runat="server" Height="52px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 clsRight">Material Type</td>
                    <td>
                        <asp:TextBox ID="txtMaterialType" runat="server" Height="34px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5 clsRight">Color</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 clsRight">Product Cost</td>
                    <td>
                        <asp:TextBox ID="txtProductCost" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 clsRight">Quantity</td>
                    <td>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>

                        <asp:Button ID="Button1" runat="server" CssClass="btn fa fa-download" Text="Add Product" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblOutput" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                    </tbody>
            </table>
            </div>
            </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterationDetails.aspx.cs" Inherits="ProductManagement.RegisterationDetails" %>

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
        <div class="container">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col" colspan="2">
                            <h2 id="h2elmt">User Registration</h2>

                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMobileNo" runat="server" Text="Mobile Number"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text="Email Address"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                           <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        <asp:Label ID="lblOutput" runat="server" ></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>


        </div>
    </form>
</body>
</html>

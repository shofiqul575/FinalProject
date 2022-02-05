<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication1.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:10px">

        <table align="center" class=" table-responsive; bg-info" style="width: 50%; margin-top:10px; border-collapse: separate; border-spacing: 5px;">
            <tr>
                <td style="width: 98px">&nbsp;</td>
                <td>
                    <asp:Label ID="lbl_err_msg" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 98px">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 98px; text-align: right;">
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_A_uname" placeholder="Enter Admin UserName" CssClass="form-control" runat="server" Width="254px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 98px; text-align: right;">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_A_password" CssClass="form-control" TextMode="Password" placeholder="Enter Password" runat="server" Width="254px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 98px; height: 26px;"></td>
                <td style="height: 26px"></td>
                <td style="height: 26px"></td>
            </tr>
            <tr>
                <td style="width: 98px">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_login" runat="server" BackColor="#006699" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" ForeColor="White" Height="41px" Text="Login" Width="110px" CssClass="btn btn-primary" OnClick="btn_login_Click"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

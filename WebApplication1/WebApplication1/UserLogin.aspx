<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="WebApplication1.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #Content2{
            height:100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table style="width: 55%; height: 350px; padding-top: 25px; margin-left: 260px; margin-top: 25px;" class="bg-info">
            <tr>
                <td style="text-align: right" colspan="2">&nbsp;</td>
                <td colspan="2" style="font-size: large; color: #6666FF">
                    Wholesaler Login
                    <asp:Label ID="lbl_alert" runat="server" ForeColor="#FF0066"></asp:Label>

                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style1">
                    <img alt="image" src="image/user (5).png" style="width: 29px; height: 27px" /></td>
                <td style="width: 96px; text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="User Name" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 141px">
                    <asp:TextBox ID="txt_uname" runat="server" Width="150px" Height="30px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>

                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_uname" ErrorMessage="Enter your user name" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style1">
                    <img alt="pass_image" src="image/user_pass.png" style="width: 27px; height: 24px" /></td>
                <td style="width: 96px; text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 141px">
                    <asp:TextBox ID="txt_pass" runat="server" Width="150px" Height="30px" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </td>
                <td>

                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Enter correct password" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="2">&nbsp;</td>
                <td style="width: 141px">
                    <asp:CheckBox ID="ckbox_remember" runat="server" Font-Size="Medium" Text="Remember me" CssClass="checkbox" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="2">&nbsp;</td>
                <td style="width: 141px">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Medium" ForeColor="#00CC00" Font-Underline="False" NavigateUrl="~/Forgotpassword.aspx">Forgot Password</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="2">&nbsp;</td>
                <td style="width: 141px">
                    <asp:Button ID="btn_login" runat="server" Font-Bold="True" Font-Size="Large" Height="42px" Text="Login" Width="136px" CssClass="btn btn-warning" OnClick="btn_login_Click" />
                </td>
                <td>
                    <asp:HyperLink NavigateUrl="~/CompanyLogin.aspx" ID="HyperLink2" runat="server" Font-Size="Large" Font-Underline="False" CssClass="alert-info">As Company</asp:HyperLink>
                    <br />
                    <%--<asp:HyperLink NavigateUrl="~/retailer_login.aspx?id=Retailer_login" ID="HyperLink4" runat="server" Font-Size="Large" Font-Underline="False" ForeColor="#CC00FF">As Retailer</asp:HyperLink>
                     <br />
                     <asp:HyperLink NavigateUrl="~/people_login.aspx?id=People_login" ID="HyperLink5" runat="server" Font-Size="Large" Font-Underline="False" ForeColor="#FF0066">As People</asp:HyperLink>--%>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="3">
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#CC00FF" Text="If You have not any account"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btn_create_account" runat="server" Font-Bold="True" Font-Size="Medium" Height="38px" Text="Create New Account" Width="177px" CssClass="btn btn-danger" OnClick="btn_create_account_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

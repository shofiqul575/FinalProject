<%@ Page Title="" Language="C#" MasterPageFile="~/Company_master.Master" AutoEventWireup="true" CodeBehind="CompanyLogin.aspx.cs" Inherits="WebApplication1.CompanyLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 49px;
        }
        .auto-style2 {
            width: 96px;
            height: 49px;
        }
        .auto-style3 {
            width: 141px;
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div>       
        <table style="width: 50%;height:300px; margin-top:100px; padding-top: 25px;margin-left:280px" class="bg-success" title="Company Login">
            <tr>
                <td style="text-align: right" colspan="2">
                    &nbsp;</td>
                <td colspan="2" style="font-size: large; color: #0099FF">
                    Company Login
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
                    <asp:TextBox ID="txt_uname" runat="server" Width="170px" Height="24px" CssClass="form-control" placeholder="UserName"></asp:TextBox>
                </td>
                <td>
                    
                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_uname" ErrorMessage="Enter your user name" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style1">
                    <img alt="pass_image" src="image/user_pass.png" style="width: 27px; height: 24px" /></td>
                <td style="text-align: right" class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="#0099FF"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_pass" runat="server" Width="167px" Height="24px" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    
                  <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Enter correct password" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="2">
                    &nbsp;</td>
                <td style="width: 141px">
                    <asp:CheckBox ID="ckbox_remember" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Remember me" />
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="2">
                    &nbsp;</td>
                <td style="width: 141px">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Medium" ForeColor="#00CC00" Font-Underline="False" NavigateUrl="Forgotpassword.aspx">Forgot Password</asp:HyperLink>
                </td>
                <td>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="2">
                    &nbsp;</td>
                <td style="width: 141px">
                     <asp:Button ID="btn_login" runat="server" Class="btn btn-primary" Text="Login" OnClick="btn_login_Click"/>
                </td>
                <td>
                     <asp:HyperLink NavigateUrl="~/UserLogin.aspx" ID="HyperLink2" runat="server" Font-Size="Large" Font-Underline="False" ForeColor="Blue" CssClass="alert-link">As Whole Saler</asp:HyperLink>
                     <%--<br />--%>
                     <%--<asp:HyperLink NavigateUrl="~/retailer_login.aspx? id=Retailer_login" ID="HyperLink4" runat="server" Font-Size="Large" Font-Underline="False" ForeColor="#CC00FF">As Retailer</asp:HyperLink>
                     <br />
                     <asp:HyperLink NavigateUrl="~/people_login.aspx? id=People_login" ID="HyperLink5" runat="server" Font-Size="Large" Font-Underline="False" ForeColor="#FF0066">As People</asp:HyperLink>--%>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="3">
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#CC00FF" Text="If You have not any account" CssClass="alert-info"></asp:Label>
                </td>
                <td>
                     <asp:Button ID="btn_create_ac" runat="server" Class="btn btn-info" Text="Create New Account" OnClick="btn_create_ac_Click"/>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

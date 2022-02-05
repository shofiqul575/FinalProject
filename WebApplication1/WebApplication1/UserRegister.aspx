<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="WebApplication1.UserRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="text-align:center">Wholesaler Register Page</h2>
    <table align="center" style="width: 60%; margin-left:220px; margin-top:10px; table-layout: auto; border-collapse: separate; border-spacing: 5px;" class="bg-success">
           
        <tr>
                <td style="width: 209px; text-align: right"">
                    <asp:Label ID="Label1" runat="server" Text="Whole Saler Name" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_com_name" runat="server" Width="224px" Height="26px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_com_name" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_pass" runat="server" Width="224px" TextMode="Password" Height="24px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_C_pass" runat="server" Width="224px" TextMode="Password" Height="24px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <br />
                    <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pass" ControlToValidate="txt_C_pass" ErrorMessage="Password not matched" ForeColor="Red"></asp:CompareValidator>--%>
                </td>
            </tr>
        <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label4" runat="server" Text="Shop Name" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_shop_name" runat="server" Width="224px" Height="28px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_shop_name" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label10" runat="server" Text="Shop Information" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_shop_info" runat="server" Width="224px" Height="28px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_shop_info" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label5" runat="server" Text="Address" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_address" runat="server" Width="224px" TextMode="MultiLine" Height="56px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_address" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label6" runat="server" Text="Contact Number" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_Con_Number" runat="server" Width="224px" Height="26px" ToolTip="Enter your 11 digit phone number" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_Con_Number" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label7" runat="server" Text="E-mail" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_email" runat="server" Width="224px" TextMode="Email" Height="27px" CssClass="form-control"></asp:TextBox>                   
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label8" runat="server" Text="District" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_dis" runat="server" Width="224px" Height="26px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_dis" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
        <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label11" runat="server" Text="Sub-District" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_sub_dis" runat="server" Width="224px" Height="26px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_sub_dis" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="width: 209px">&nbsp;</td>
                <td style="width: 234px">
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 209px">&nbsp;
                    </td>
                <td style="width: 234px">
                    <asp:Button ID="btn_submit" runat="server" BackColor="#0099CC" Font-Bold="True" Font-Size="Large" Height="41px" Text="Create Profile" Width="141px" CssClass="btn btn-info" OnClick="btn_submit_Click1"/>
                </td>
            </tr>
        </table>
</asp:Content>

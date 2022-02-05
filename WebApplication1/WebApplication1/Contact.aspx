<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 56px;
        }
        .auto-style2 {
            width: 137px;
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <fieldset style="width: 400px; margin-left: 400px; margin-bottom: 15px">
            <asp:Label ID="lbl_thank" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#3399FF"></asp:Label>
            <legend>Feedback </legend>
            <table class=" table-responsive" style="border-collapse: separate; border-spacing: 7px">
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Enter Your Name" runat="server" Height="29px" Width="165px"></asp:TextBox>
                    </td>
                    <td style="width: 137px">
                        <%--<asp:RequiredFieldValidator ID="valid_name" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">E-Mail</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Enter E-mail address" runat="server" Height="30px" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <%--<asp:RequiredFieldValidator ID="valid_email" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td style="height: 26px">Subject</td>
                    <td style="height: 26px">
                        <asp:TextBox ID="txt_subject" CssClass="form-control" placeholder="Enter Subject" runat="server" Height="29px" Width="165px"></asp:TextBox>

                    </td>
                    <td style="width: 137px; height: 26px">
                        <%--<asp:RequiredFieldValidator ID="valid_subject" runat="server" ControlToValidate="txt_subject" ErrorMessage="Enter Subject" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                    </td>
                </tr>

                <tr>
                    <td>Comments</td>
                    <td>
                        <asp:TextBox ID="txtComments" CssClass="form-control" placeholder="Enter Your Opinion" runat="server" TextMode="MultiLine" Height="52px" Width="165px"></asp:TextBox>

                    </td>
                    <td style="width: 137px">
                        <%--<asp:RequiredFieldValidator ID="valid_coments" runat="server" ControlToValidate="txtComments" ErrorMessage="Enter Your Comments" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                    </td>
                </tr>

                <tr>
                    <td></td>

                    <td>
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success" Text="Submit" Font-Bold="True" Font-Size="Medium" OnClick="btnSubmit_Click" />

                    </td>

                    <td style="width: 137px">&nbsp;</td>
                </tr>
            </table>
        </fieldset>


    </div>
</asp:Content>

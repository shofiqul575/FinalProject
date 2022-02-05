<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Forgotpassword.aspx.cs" Inherits="WebApplication1.Forgotpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btn-default {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div style="background-color:white;background-position:center;margin-left:50px">
            <h2>Recover Password</h2>
            <hr />
            <h4>Please enter your email address, We will send you the instrutions to reset your password.</h4>
            <div>
                <asp:Label ID="lblmsg" runat="server"></asp:Label><br />
                <asp:Label ID="lblPassRec" runat="server"></asp:Label><br />
                <asp:Label ID="lblEmail" runat="server" Text="Your Email" ForeColor="#009999" Font-Size="Medium"></asp:Label>
                <div>
                    <asp:TextBox ID="tbEmailId" TextMode="Email" CssClass="form-control" runat="server" Height="28px" Width="251px"></asp:TextBox><br />
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Please enter your email ID !" ControlToValidate="tbEmailId" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </div>
            </div>
            <div>
                <asp:Button ID="btPassRec" CssClass="btn btn-danger" runat="server" Text="Send" Height="35px" Width="101px"  Font-Bold="True" Font-Italic="True" Font-Size="Large"  OnClick="btPassRec_Click" />
                
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Company_master.Master" AutoEventWireup="true" CodeBehind="CompanyRegister.aspx.cs" Inherits="WebApplication1.CompanyRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="text-align:center"> Company Register Page</h2>
    <div class="center-page">
        <label class="col-xs-11">Company Name</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tb_com_name" runat="server" Class="form-control" placeholder="Company Name"></asp:TextBox>
        </div>
        <label class="col-xs-11">Password</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tb_Pass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
        </div>

        <label class="col-xs-11">Confirm Password</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tb_CPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_Pass" ControlToValidate="tb_CPass" ErrorMessage="Password not matched" ForeColor="Red"></asp:CompareValidator>
        </div>

        <label class="col-xs-11">Company Information</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tb_com_info" runat="server" Class="form-control" placeholder="Company Information"></asp:TextBox>
        </div>

        <label class="col-xs-11">Address</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tb_address" runat="server" Class="form-control" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
        </div>

        <label class="col-xs-11">Contact Number</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tb_contact" runat="server" Class="form-control" placeholder="Cell Number"></asp:TextBox>
        </div>

        <label class="col-xs-11">Email</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tb_Email" runat="server" Class="form-control" placeholder="Email"></asp:TextBox>
        </div>

        <div class="col-xs-11 space-vert">
            <asp:Button ID="btSignup" runat="server" Class="btn btn-success" Text="Create Account" OnClick="btSignup_Click" />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>


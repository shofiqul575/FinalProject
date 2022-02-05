<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageAccount.aspx.cs" Inherits="WebApplication1.ManageAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style=" margin-top:25px; margin-bottom:25px">

        <table align="center" class="table table-condensed" style="width: 50%; border: 1px solid #008B8B; margin-top:25px; margin-bottom:25px">
            <tr>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink NavigateUrl="~/AdminCompanyAccount.aspx" ID="HyperLink2" runat="server" BackColor="#CCFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="#009999" Font-Underline="false">Company Account</asp:HyperLink></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink NavigateUrl="~/AdminWsalerAccount.aspx" ID="HyperLink3" runat="server" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" ForeColor="#6600CC" Font-Underline="false">WholeSaler Account</asp:HyperLink></td><br />
                <td>
                    &nbsp;</td>
            </tr>
            
        </table>

    </div>
</asp:Content>

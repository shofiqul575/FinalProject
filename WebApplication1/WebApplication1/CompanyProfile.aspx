<%@ Page Title="" Language="C#" MasterPageFile="~/Company_master.Master" AutoEventWireup="true" CodeBehind="CompanyProfile.aspx.cs" Inherits="WebApplication1.CompanyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:FormView ID="FormView1" runat="server" CssClass="form-control" CellPadding="4" DataSourceID="SqlDataSource1" Font-Size="Medium" ForeColor="#333333">
        <EditItemTemplate>
            company_name:
            <asp:TextBox ID="company_nameTextBox" runat="server" Text='<%# Bind("company_name") %>' />
            <br />
            company_info:
            <asp:TextBox ID="company_infoTextBox" runat="server" Text='<%# Bind("company_info") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Con_Number:
            <asp:TextBox ID="Con_NumberTextBox" runat="server" Text='<%# Bind("Con_Number") %>' />
            <br />
            E_mail:
            <asp:TextBox ID="E_mailTextBox" runat="server" Text='<%# Bind("E_mail") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#2461BF" CssClass="form-control" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <asp:Label ID="company_nameLabel" runat="server" Text='<%# Bind("company_name") %>' /> Profile
        </HeaderTemplate>
        <InsertItemTemplate>
            company_name:
            <asp:TextBox ID="company_nameTextBox" runat="server" Text='<%# Bind("company_name") %>' />
            <br />
            company_info:
            <asp:TextBox ID="company_infoTextBox" runat="server" Text='<%# Bind("company_info") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Con_Number:
            <asp:TextBox ID="Con_NumberTextBox" runat="server" Text='<%# Bind("Con_Number") %>' />
            <br />
            E_mail:
            <asp:TextBox ID="E_mailTextBox" runat="server" Text='<%# Bind("E_mail") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Company Name:
            <asp:Label ID="company_nameLabel" runat="server" Text='<%# Bind("company_name") %>' />
            <br />
            Company Information:
            <asp:Label ID="company_infoLabel" runat="server" Text='<%# Bind("company_info") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Contact Number:
            <asp:Label ID="Con_NumberLabel" runat="server" Text='<%# Bind("Con_Number") %>' />
            <br />
            E-mail:
            <asp:Label ID="E_mailLabel" runat="server" Text='<%# Bind("E_mail") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:G_infoConnectionString %>" SelectCommand="SELECT [company_name], [company_info], [Address], [Con_Number], [E_mail] FROM [Company] WHERE ([company_name] = @company_name)">
        <SelectParameters>
            <asp:SessionParameter Name="company_name" SessionField="company" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

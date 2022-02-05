<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="WebApplication1.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%--<div id="sidebar">
        <div class="top">
            <h2>categories</h2>
            <ul class="pink">
                <li><a href="#">Men</a></li>
                <li><a href="#">Women</a></li>
                <li><a href="#">Kids</a></li>                
            </ul>
        </div>
    </div>--%>
    <div id="profile">
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" CssClass="form-control">
            <EditItemTemplate>
                W_saler_Name:
                <asp:TextBox ID="W_saler_NameTextBox" runat="server" Text='<%# Bind("W_saler_Name") %>' />
                <br />
                Shop_Name:
                <asp:TextBox ID="Shop_NameTextBox" runat="server" Text='<%# Bind("Shop_Name") %>' />
                <br />
                Shop_info:
                <asp:TextBox ID="Shop_infoTextBox" runat="server" Text='<%# Bind("Shop_info") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Con_number:
                <asp:TextBox ID="Con_numberTextBox" runat="server" Text='<%# Bind("Con_number") %>' />
                <br />
                E_mail:
                <asp:TextBox ID="E_mailTextBox" runat="server" Text='<%# Bind("E_mail") %>' />
                <br />
                district:
                <asp:TextBox ID="districtTextBox" runat="server" Text='<%# Bind("district") %>' />
                <br />
                sub_district:
                <asp:TextBox ID="sub_districtTextBox" runat="server" Text='<%# Bind("sub_district") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
               <asp:Label ID="W_saler_Namelbl" runat="server" Text='<%# Bind("W_saler_Name") %>' /> Profile
            </HeaderTemplate>
            <InsertItemTemplate>
                W_saler_Name:
                <asp:TextBox ID="W_saler_NameTextBox" runat="server" Text='<%# Bind("W_saler_Name") %>' />
                <br />
                Shop_Name:
                <asp:TextBox ID="Shop_NameTextBox" runat="server" Text='<%# Bind("Shop_Name") %>' />
                <br />
                Shop_info:
                <asp:TextBox ID="Shop_infoTextBox" runat="server" Text='<%# Bind("Shop_info") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Con_number:
                <asp:TextBox ID="Con_numberTextBox" runat="server" Text='<%# Bind("Con_number") %>' />
                <br />
                E_mail:
                <asp:TextBox ID="E_mailTextBox" runat="server" Text='<%# Bind("E_mail") %>' />
                <br />
                district:
                <asp:TextBox ID="districtTextBox" runat="server" Text='<%# Bind("district") %>' />
                <br />
                sub_district:
                <asp:TextBox ID="sub_districtTextBox" runat="server" Text='<%# Bind("sub_district") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Wholesaler Name:
                <asp:Label ID="W_saler_NameLabel" runat="server" Text='<%# Bind("W_saler_Name") %>' />
                <br />
                Shop Name:
                <asp:Label ID="Shop_NameLabel" runat="server" Text='<%# Bind("Shop_Name") %>' />
                <br />
                Shop information:
                <asp:Label ID="Shop_infoLabel" runat="server" Text='<%# Bind("Shop_info") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Contact Number:
                <asp:Label ID="Con_numberLabel" runat="server" Text='<%# Bind("Con_number") %>' />
                <br />
                E-mail:
                <asp:Label ID="E_mailLabel" runat="server" Text='<%# Bind("E_mail") %>' />
                <br />
                District:
                <asp:Label ID="districtLabel" runat="server" Text='<%# Bind("district") %>' />
                <br />
                Sub District:
                <asp:Label ID="sub_districtLabel" runat="server" Text='<%# Bind("sub_district") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:G_infoConnectionString %>" SelectCommand="SELECT [W_saler_Name], [Shop_Name], [Shop_info], [Address], [Con_number], [E_mail], [district], [sub_district] FROM [whole_saler] WHERE ([wsid] = @wsid)">
            <SelectParameters>
                <asp:SessionParameter Name="wsid" SessionField="WSALER" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

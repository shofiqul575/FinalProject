<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin_wsaler_details_view.aspx.cs" Inherits="WebApplication1.admin_wsaler_details_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div  style="margin-left:50px;margin-top:10px;margin-bottom:10px;width:80%">
       <asp:GridView ID="GridView1" CssClass="table table-hover table-responsive" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" DataKeyNames="wsid">
            <Columns>
                <asp:BoundField DataField="wsid" HeaderText="wsid" InsertVisible="False" ReadOnly="True" SortExpression="wsid" />
                <asp:BoundField DataField="W_saler_Name" HeaderText="W_saler_Name" SortExpression="W_saler_Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Shop_Name" HeaderText="Shop_Name" SortExpression="Shop_Name" />
                <asp:BoundField DataField="Shop_info" HeaderText="Shop_info" SortExpression="Shop_info" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Con_number" HeaderText="Con_number" SortExpression="Con_number" />
                <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
                <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                <asp:BoundField DataField="sub_district" HeaderText="sub_district" SortExpression="sub_district" />
                <asp:BoundField DataField="Reg_Date" HeaderText="Reg_Date" SortExpression="Reg_Date" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:G_infoConnectionString %>" SelectCommand="SELECT * FROM [whole_saler] WHERE ([wsid] = @wsid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="wsid" QueryStringField="wsid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="btn_delete" CssClass="btn btn-danger" runat="server" Text="Delete" Font-Bold="True" Font-Size="Large" Height="42px" Width="87px" OnClick="btn_delete_Click" />
    </div>
</asp:Content>

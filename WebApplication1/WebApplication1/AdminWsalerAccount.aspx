<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminWsalerAccount.aspx.cs" Inherits="WebApplication1.AdminWsalerAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:5px;margin-top:10px;margin-bottom:10px">
        <asp:GridView ID="GridView1" CssClass="table table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="wsid">
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

                <asp:TemplateField HeaderText="More">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.wsid","admin_wsaler_details_view.aspx?wsid={0}") %>' Text="More"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle ForeColor="#00CC99" />
                </asp:TemplateField>
                 </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:G_infoConnectionString %>" SelectCommand="SELECT * FROM [whole_saler]"></asp:SqlDataSource>
    </div>
</asp:Content>

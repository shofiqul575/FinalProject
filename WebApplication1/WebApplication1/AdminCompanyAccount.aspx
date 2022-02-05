<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCompanyAccount.aspx.cs" Inherits="WebApplication1.CompanyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="margin-left:5px;margin-top:10px;margin-bottom:10px">
        <asp:GridView ID="GridView1" CssClass="table table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="com_id" HeaderText="CompanyID" InsertVisible="False" ReadOnly="True" SortExpression="com_id" />
                <asp:BoundField DataField="company_name" HeaderText="Company Name" SortExpression="company_name" />
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                <asp:BoundField DataField="company_info" HeaderText="Company_Information" SortExpression="company_info" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Con_Number" HeaderText="Contact Number" SortExpression="Con_Number" ApplyFormatInEditMode="True" />
                <asp:BoundField DataField="E_mail" HeaderText="E-mail" SortExpression="E_mail" />
                <asp:BoundField DataField="Com_Reg_Date" HeaderText="Company_Reg_Date" SortExpression="Com_Reg_Date" />
                
                <asp:TemplateField HeaderText="More">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.com_id","admin_company_details_view.aspx?cid={0}") %>' Text="More"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle ForeColor="#00CC99" />
                </asp:TemplateField>

                 </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:G_infoConnectionString %>" SelectCommand="SELECT * FROM [company]"></asp:SqlDataSource>
    </div>
</asp:Content>

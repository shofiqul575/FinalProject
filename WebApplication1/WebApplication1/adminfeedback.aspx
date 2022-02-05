<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminfeedback.aspx.cs" Inherits="WebApplication1.adminfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div  style="margin-left:50px;margin-top:10px;margin-bottom:10px;width:80%">
       <asp:GridView ID="GridView1" CssClass="table table-hover table-responsive" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" DataKeyNames="Fid">
            <Columns>
                <asp:BoundField DataField="Fid" HeaderText="Fid" InsertVisible="False" ReadOnly="True" SortExpression="Fid" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                <asp:BoundField DataField="Feedback_date" HeaderText="Feedback_date" SortExpression="Feedback_date" />
                <%--<asp:TemplateField HeaderText="More">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.Fid","Reply.aspx?fid={0}") %>' Text="Reply"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle ForeColor="#00CC99" />
                </asp:TemplateField>--%>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:G_infoConnectionString %>" SelectCommand="SELECT * FROM [feedback] WHERE ([Fid] = @Fid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Fid" QueryStringField="fid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="btn_delete" CssClass="btn btn-danger" runat="server" Text="Delete" Font-Bold="True" Font-Size="Large" Height="42px" Width="87px" OnClick="btn_delete_Click" />
        
      <%--<div class="col-md-2" style="margin-left:150px;">
        <asp:Label ID="Label1" runat="server" Text="From"></asp:Label><br />
        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="To"> </asp:Label><br />
        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Write Message"></asp:Label><br />
        <asp:TextBox ID="TextBox3" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Reply" />
    </div>--%>
    </div>
    
</asp:Content>

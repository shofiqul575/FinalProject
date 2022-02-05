<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication1.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div id="galary">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <asp:Image ID="Img_galary" runat="server" AlternateText="Images" Height="300px" ImageAlign="Middle" Width="100%" ImageUrl="~/Image/" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <div>
        <asp:GridView ID="GridView1" CssClass="table table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnRowUpdated="GridView1_RowUpdated" OnRowDeleted="GridView1_RowDeleted">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" Visible="false" SortExpression="ID" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="true" SortExpression="ProductID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="true" SortExpression="Price" />
                <asp:BoundField DataField="Total_Amount" HeaderText="Total Amount" ReadOnly="true" SortExpression="Amount" />
                <asp:BoundField DataField="CartID" HeaderText="CartID" SortExpression="CartID" Visible="false" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:G_infoConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [ID] = @ID"
            InsertCommand="INSERT INTO [Cart] ([ProductID], [Quantity], [Price], [Total_Amount], [CartID]) VALUES (@ProductID, @Quantity, @Price, @Amount, @CartID)"
            SelectCommand="SELECT * FROM [Cart] WHERE ([CartID] = @CartID)"
            UpdateCommand="UPDATE [Cart] SET [Quantity] = @Quantity, [Total_Amount] = @Quantity*Price WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="int32" />
                <asp:Parameter Name="Total_Amount" Type="int32" />
                <asp:Parameter Name="CartID" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="CartID" SessionField="CartID" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Total_Amount" Type="Int32" />
                <asp:Parameter Name="CartID" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        
        <div class="row">
            <div class="pull-right col-md-3">
                Total Amount:  
                   
                <asp:Label ID="lblTotalAmount" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnCheckout" CssClass="btn btn-success" runat="server" Text="Checkout" OnClick="btnCheckout_Click" />
                <br />
                <br />

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WsOrderHistory.aspx" ForeColor="Red">Order History</asp:HyperLink>
            </div> 
        </div>
    </div>

    <div class="col-md-3">
        <h2> Add Shipping Information</h2>
        <asp:Label ID="Label1" runat="server" ForeColor="#3399FF"  Text="Name" Font-Size="Medium"></asp:Label><br />
        <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter FullName" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" ForeColor="#3399FF" Text=" E-mail" Font-Size="Medium"></asp:Label><br />
        <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Enter E-mail Address" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" ForeColor="#3399FF" Text=" Contact Number" Font-Size="Medium"></asp:Label><br />
        <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" ForeColor="#3399FF" Text=" Address" Font-Size="Medium"></asp:Label><br />
        <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Enter Your Address Here" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Save Information" />

    </div>

</asp:Content>

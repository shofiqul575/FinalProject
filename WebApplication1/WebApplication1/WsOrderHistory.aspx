<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="WsOrderHistory.aspx.cs" Inherits="WebApplication1.WsOrderHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">

            <h1>Your Orders:</h1>
            <hr />
            <asp:GridView ID="GridView1" CssClass="table table-responsive table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" Visible="False" />
                    <asp:BoundField DataField="OrderDateTime" HeaderText="OrderDateTime" SortExpression="OrderDateTime" />
                    <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:G_infoConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([CustomerID] = @CustomerID)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="CustomerID" SessionField="WSALER" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            <h2>Order Details:</h2>
            <hr />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="RecordID" DataSourceID="SqlDataSource2">
                <AlternatingItemTemplate>
                    <li style="">RecordID:
                        <asp:Label ID="RecordIDLabel" runat="server" Text='<%# Eval("RecordID") %>' />
                        <br />
                        OrderID:
                        <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
                        <br />
                        ProductID:
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                        <br />
                        Quantity:
                        <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                        <br />
                        Amount:
                        <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                        <br />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="">RecordID:
                        <asp:Label ID="RecordIDLabel1" runat="server" Text='<%# Eval("RecordID") %>' />
                        <br />
                        OrderID:
                        <asp:TextBox ID="OrderIDTextBox" runat="server" Text='<%# Bind("OrderID") %>' />
                        <br />
                        ProductID:
                        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                        <br />
                        Quantity:
                        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                        <br />
                        Amount:
                        <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">OrderID:
                        <asp:TextBox ID="OrderIDTextBox" runat="server" Text='<%# Bind("OrderID") %>' />
                        <br />
                        ProductID:
                        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                        <br />
                        Quantity:
                        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                        <br />
                        Amount:
                        <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="">RecordID:
                        <asp:Label ID="RecordIDLabel" runat="server" Text='<%# Eval("RecordID") %>' />
                        <br />
                        OrderID:
                        <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
                        <br />
                        ProductID:
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                        <br />
                        Quantity:
                        <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                        <br />
                        Amount:
                        <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                        <br />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="">RecordID:
                        <asp:Label ID="RecordIDLabel" runat="server" Text='<%# Eval("RecordID") %>' />
                        <br />
                        OrderID:
                        <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
                        <br />
                        ProductID:
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                        <br />
                        Quantity:
                        <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                        <br />
                        Amount:
                        <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                        <br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:G_infoConnectionString %>" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([OrderID] = @OrderID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="OrderID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>

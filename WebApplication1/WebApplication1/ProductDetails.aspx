<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WebApplication1.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="container">
        <div class="row">
            <asp:Repeater ID="rptimage" runat="server">
                <ItemTemplate>
                    <div class="col-md-2">
                        <%--<asp:Image ID="pdimg" Height="150" Width="150" runat="server" />--%>

                        <table>
                            <tr>
                                <td>
                                    <asp:Image Height="180" Width="160" runat="server" ImageUrl='<%#"data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("product_image")) %>' />
                                </td>
                            </tr>

                        </table>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="col-md-4" style="background-color: #CCFFFF">
                Product ID:
                  
                <asp:Label ID="lblProductID" runat="server" Text="Label"></asp:Label>
                <br />

                Product Name:
                   
                <asp:Label ID="lblProductName" runat="server" Text="Label"></asp:Label>
                <br />


                Available Product Size:
                   
                <asp:Label ID="lblSie" runat="server" Text="Label"></asp:Label>
                <br />


                Available Product Colors:
                   
                <asp:Label ID="lblColors" runat="server" Text="Label"></asp:Label>
                <br />


                Product Price: 

               

                <asp:Label ID="lblProductPrice" runat="server" Text="Label"></asp:Label>
                <br />


                Category:  
                   
                <asp:Label ID="lblCategory" runat="server" Text="Label"></asp:Label>
                <br />


                Quantity:
                   
                <asp:TextBox ID="txtQuantity" CssClass="form-control" AutoPostBack="true" Text="1" runat="server" OnTextChanged="txtQuantity_TextChanged"></asp:TextBox>
                <br />


                Company:  
                   
                <asp:Label ID="lblCompany" runat="server" Text="Label"></asp:Label>
                <br />


                Amount:
                   
                <asp:Label ID="lblAmount" runat="server" Text="Label"></asp:Label>
                <br />

                <asp:Button ID="btnAddToCart" CssClass="btn btn-success" runat="server" Text="Add To Cart" OnClick="btnAddToCart_Click" />
                <br />

            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="WebApplication1.ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left: 100px">
        <asp:Repeater ID="rptimage" runat="server">
            <ItemTemplate>
                <div class="item <%# GetActiveClass(Container.ItemIndex) %>">
                    <table>
                        <tr>

                            <td>
                                <asp:Image Height="120" Width="150" runat="server" ImageUrl='<%#"data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("product_image")) %>' />                                                              
                            </td>
                            <td>
                                <table class="table">
                                    <tr>
                                        <td style="width: 50%;">Product Name:</td>
                                        <td><%#Eval("product_name")%></td>
                                    </tr>
                                    <tr>
                                        <td>Size:</td>
                                        <td><%#Eval("size")%></td>
                                    </tr>
                                    <tr>
                                        <td>Available Colors:</td>
                                        <td><%#Eval("available_color")%></td>
                                    </tr>
                                    <tr>
                                        <td>Price:</td>
                                        <td><%#Eval("price")%></td>
                                    </tr>
                                    <tr>
                                        <td>Category:</td>
                                        <td><%#Eval("category")%></td>
                                    </tr>
                                    <tr>

                                        <td>Company:</td>
                                        <td><%#Eval("productby")%></td>
                                    </tr>

                                </table>
                            </td>

                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Button ID="btnAddToCart" runat="server" Text="ADD TO CART" CssClass="btn btn-info" OnClick="btnAddToCart_Click1" />
    </div>
</asp:Content>

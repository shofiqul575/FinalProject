<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserProductList.aspx.cs" Inherits="WebApplication1.UserProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #rptimage{
            width:400px;

        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left:100px">
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Repeater ID="rptimage" runat="server">
            <ItemTemplate>
                <a style="text-decoration:none;" href="ProductDetails.aspx?pdid=<%#Eval("pdid") %>" class="alert-link">
                    <table style="border-collapse: separate; border-spacing: 5px; background-color: #E6E7E8; width:400px;">                                                                           
                        <tr>
                            <td>
                                <asp:Image Height="150" Width="150" runat="server" ImageUrl='<%#"data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("product_image")) %>' />
                            </td>
                            <td colspan="5">
                                <table class="table">
                                    <tr>
                                        <td style="width: 50%;">Product Name:</td>
                                        <td><%#Eval("product_name")%></td>
                                    </tr>
                                   
                                    <tr>
                                        <td>Price:</td>
                                        <td><%#Eval("price")%></td>
                                    </tr>
                                    <tr>
                                        <td>Category:</td>
                                        <td><%#Eval("category")%></td>
                                    </tr>                                                            
                                </table>
                            </td>                                                    
                        </tr>
                       
                    </table>              
               
              </a>
                
            </ItemTemplate>            
        </asp:Repeater>
         
    </div>
</asp:Content>

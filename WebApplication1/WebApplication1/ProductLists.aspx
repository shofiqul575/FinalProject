<%@ Page Title="" Language="C#" MasterPageFile="~/Company_master.Master" AutoEventWireup="true" CodeBehind="ProductLists.aspx.cs" Inherits="WebApplication1.ProductLists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #rptimage{
            width:400px;
            background-color:#DCEDDD;
        }     
        .table{
            width:400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div style="margin-left:100px">
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Repeater ID="rptimage" runat="server">
            <ItemTemplate>
                <%--<a style="text-decoration:none;" href="product.aspx?pdid=<%#Eval("pdid") %>">--%>
                    <table class="bg-info">                                                                           
                        <tr>
                            <td>
                                <asp:Image Height="150" Width="150" runat="server" ImageUrl='<%#"data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("product_image")) %>' />
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
                                        <td>Company Name:</td>
                                        <td><%#Eval("productby")%></td>
                                    </tr>                             
                                </table>
                            </td colspan="2">                                                    
                        </tr>                       
                    </table>              
               
              <%--</a>--%>
                <%--<asp:HiddenField ID="com_name" Value='<%# Eval("company_name") %>' runat="server" />--%>
                    <%--<asp:HiddenField ID="hfSubCatID" Value='<%# Eval("PSubCatID") %>' runat="server" />--%>
            </ItemTemplate>            
        </asp:Repeater>
         
    </div>
</asp:Content>

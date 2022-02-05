<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div id="galary">
            <div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
              
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1"  runat="server" Interval="10000" OnTick="Timer1_Tick">
                        </asp:Timer>
                        <asp:Image ID="Img_galary" runat="server" AlternateText="Images" Height="400px" ImageAlign="Middle" Width="100%" ImageUrl="~/Image/" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
     <div  style="margin-left:100px">        
        <asp:Repeater ID="rptimage" runat="server">
            <ItemTemplate>
                <a style="text-decoration:none;" href="ProductDetails.aspx?pdid=<%#Eval("pdid") %>">
                    <table class="table table-condensed" style="border-collapse: separate; border-spacing: 5px; background-color: #E6E7E8; width:400px;">                                                                           
                        <tr>
                            <td>
                                <asp:Image Height="150" Width="150" CssClass="img-responsive" runat="server" ImageUrl='<%#"data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("product_image")) %>' />
                            </td>
                            <td colspan="2">
                                <table class="table table-condensed">
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Company_master.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="WebApplication1.AddProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 60%;
        margin-left:220px;
        margin-top:30px;
        background-color:#DCEDDD;
        border-collapse:separate;
        border-spacing:5px;
    }
    .auto-style2 {
        width: 274px;
    }
    .auto-style3 {
        width: 330px;
    }
        .auto-style4 {
            width: 274px;
            height: 43px;
        }
        .auto-style5 {
            width: 330px;
            height: 43px;
        }
        .auto-style6 {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table align="center" class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3" style="text-align: center; color: #008080">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="ADD PRODUCTS"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">
            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Product Name"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txt_prd_name" runat="server" Height="32px" Width="208px" Placeholder="Enter Product Name" CssClass="form-control"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
        &nbsp;&nbsp;&nbsp;
    <tr>
        <td class="auto-style2" style="text-align: right">
            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Available Size"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txt_size" runat="server" Height="32px" Width="208px" Placeholder="Enter Product Sizes" CssClass="form-control"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
        &nbsp;&nbsp;&nbsp;
    <tr>
        <td class="auto-style2" style="text-align: right">
            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Available Color"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txt_color" runat="server" Height="32px" Width="208px" Placeholder="Enter Product Colors" CssClass="form-control"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
        &nbsp;&nbsp;&nbsp;
         <tr>
        <td class="auto-style2" style="text-align: right">
            <asp:Label ID="Label7" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Price"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txt_price" runat="server" Height="32px" Width="208px" Placeholder="Enter Product Prices" CssClass="form-control"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">
            <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Category"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" Width="210px">
                <asp:ListItem Value="Select Category-"></asp:ListItem>
                <asp:ListItem>Men</asp:ListItem>
                <asp:ListItem>Women</asp:ListItem>
                <asp:ListItem>Kids</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
         <tr>
        <td class="auto-style2" style="text-align: right">
            <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Product Image"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:FileUpload ID="imgUpload" runat="server" Height="35px" CssClass="form-control" Width="215px" />
        </td>
        <td>&nbsp;</td>
    </tr>
        <tr>
        <td class="auto-style2" style="text-align: right">
            <asp:Label ID="Label8" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Product By"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txt_Company" runat="server" Height="32px" Width="208px" Placeholder="Enter Company Name" CssClass="form-control" ReadOnly="True"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5">
            <asp:Button ID="btn_add" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#0033CC" Height="43px" Text="ADD" Width="167px" CssClass="btn btn-warning" OnClick="btn_add_Click" />
        </td>
        <td class="auto-style6">
            <asp:LinkButton ID="prd_list" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="#6600CC" CssClass="btn btn-success" OnClick="prd_list_Click">Product List</asp:LinkButton>
        </td>
    </tr>
        
</table>
</asp:Content>

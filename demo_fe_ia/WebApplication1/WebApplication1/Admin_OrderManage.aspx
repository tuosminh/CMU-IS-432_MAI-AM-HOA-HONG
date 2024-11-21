<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAdmin.Master" AutoEventWireup="true" CodeBehind="Admin_OrderManage.aspx.cs" Inherits="WebApplication1.Admin_OrderManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
    áccacsc
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div>
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <asp:Button ID="vtnNoti" runat="server" Text="Notification" />
            <br />
            <asp:Label ID="lblOrderId" runat="server" Text="Order ID"></asp:Label>
            <asp:Label ID="lblName" runat="server" Text="Customer Name"></asp:Label>
            <asp:Label ID="lblDate" runat="server" Text="Order Date"></asp:Label>
            <asp:Label ID="lblStatus" runat="server" Text="Order Status"></asp:Label>
            <asp:Label ID="lblGia" runat="server" Text="Price"></asp:Label>
            <asp:Label ID="lblAction" runat="server" Text="Action"></asp:Label>
            <br />
            <asp:DataList ID="dsOrder" runat="server">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("ORDERID") %>'></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("TENNGUOIDUNG") %>'></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("NGAYDATHANG") %>'></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("ORDERSTATUS") %>'></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("GIASANPHAM") %>'></asp:Label>
                    <asp:Button ID="btnDetail" runat="server" Text="View Detail" CommandName="View Detail" 
CommandArgument='<%# Eval("ORDERID") %>' 
OnCommand="btnDetail_Click" />
                </ItemTemplate>
            </asp:DataList>
            <asp:Label ID="lblMessage" runat="server" Text="Message" ForeColor="#CC0000"></asp:Label>
            <br />
            <br />
        </div> <asp:Label ID="lblId" runat="server" Text="Order Code"></asp:Label>
 <input id="txtId" type="text" runat="server"/><br />
 <asp:Label ID="Label1" runat="server" Text="Customer Name"></asp:Label>
 <input id="txtName" type="text" runat="server" /><br />
 <asp:Label ID="lblSdt" runat="server" Text="Phone Number"></asp:Label>
 <input id="txtSdt" type="text" runat="server" /><br />
 <asp:Label ID="lblTensanpham" runat="server" Text="Product Name"></asp:Label>
 <input id="txtTensanpham" type="text" runat="server" /><br />
 <asp:Label ID="lblGiasanpham" runat="server" Text="Order Value"></asp:Label>
 <input id="txtGia" type="text" runat="server" /><br />
 <asp:Label ID="lblNgaygiao" runat="server" Text="Delivery Date"></asp:Label>
 <input id="txtNgaygiao" type="text" runat="server" /><br />
 <asp:Label ID="lblDiachi" runat="server" Text="Shipping Address"></asp:Label>
 <input id="txtDiachi" type="text" runat="server" /><br />
        <asp:Label ID="lblOrderstatus" runat="server" Text="Order Status"></asp:Label>
        <input id="txtStatus" type="text" runat="server"/><br />
</asp:Content>

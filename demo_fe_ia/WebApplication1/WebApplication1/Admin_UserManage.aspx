<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAdmin.Master" AutoEventWireup="true" CodeBehind="Admin_UserManage.aspx.cs" Inherits="WebApplication1.Admin_UserManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
    fcbgdf bdfxb
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <asp:Button ID="btnNotification" runat="server" Text="Notification" />
        <br />
       <h1> USER MANAGE</h1>
        <p> 
            <asp:Label ID="lblUserId" runat="server" Text="User Id"></asp:Label>
            <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:Label ID="lblJoindate" runat="server" Text="Join Date"></asp:Label>
            <asp:Label ID="lblRole" runat="server" Text="Role"></asp:Label>
            <asp:Label ID="Status" runat="server" Text="Status"></asp:Label>
            <asp:Label ID="lblAction" runat="server" Text="Action"></asp:Label>
        </p>
        <p> 
            <asp:DataList ID="dsUser" runat="server">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("IDKHACHHANG") %>'></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENDANGNHAP") %>'></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("EMAIL") %>'></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("NGAYTHAMGIA") %>'></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("ROLE") %>'></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("OPERATINGSTATUS") %>'></asp:Label>
                   <asp:Button ID="btnEdit" runat="server" Text="Edit" 
CommandName="Edit" 
CommandArgument='<%# Eval("IDKHACHHANG") %>' 
OnCommand="btnEdit_Click" />
                      <asp:Button ID="btnDelete" runat="server" Text="Delete" 
            CommandName="Xoa" 
            CommandArgument='<%# Eval("IDKHACHHANG") %>' 
            OnCommand="btnXoa_Click" />
                </ItemTemplate>
            </asp:DataList>
        </p>
        <asp:Label ID="lblMessage" runat="server" Text="lblMessage" ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblId" runat="server" Text="ID"></asp:Label>
        <input id="txtId" type="text" runat="server"/><br />
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        <input id="txtName" type="text" runat="server" /><br />
        <asp:Label ID="lblEmaill" runat="server" Text="Email"></asp:Label>
        <input id="txtEmail" type="text" runat="server" /><br />
        <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
        <input id="txtPassword" type="text" runat="server" /><br />
        <asp:Label ID="lblSdt" runat="server" Text="Phone Number"></asp:Label>
        <input id="txtSdt" type="text" runat="server" /><br />
        <asp:Label ID="lblVitri" runat="server" Text="Position"></asp:Label>
        <input id="txtVitri" type="text" runat="server" /><br />
        <asp:Label ID="lblDate" runat="server" Text="Join Date"></asp:Label>
        <input id="txtDate" type="text" runat="server" /><br />
        <asp:Label ID="lblStatus" runat="server" Text="Operate Status"></asp:Label>
        <input id="txtStatus" type="text" runat="server" /><br />
        <asp:Button ID="btnSave" runat="server" Text="Save Changes" OnClick="btnSave_Click"  CommandArgument='<%# Eval("IDKHACHHANG") %>'  />
        <br />
        <br />
    </div>
</asp:Content>

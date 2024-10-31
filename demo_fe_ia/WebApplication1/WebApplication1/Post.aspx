<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DSBAIDANG" runat="server">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("IDBAIDANG") %>' ImageUrl='<%# "post_image/"+Eval("AVATARTACGIA") %>' width="50px" Height="50px"/>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENTACGIA") %>'></asp:Label>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("THOIGIAN") %>'></asp:Label>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("TIEUDE") %>'></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("MOTA") %>'></asp:Label>
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("IDBAIDANG") %>' ImageUrl='<%# "post_image/"+Eval("ANHBAIDANG") %>'  width="400px" Height="300px"/>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>

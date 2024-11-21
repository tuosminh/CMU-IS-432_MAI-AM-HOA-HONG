<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="WebApplication1.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
           
        <div class="image-left">
    <img src="images/img_adlogin/a_lg.jpg" alt="Left Image">
</div>



    <div>
    </div>
    <h1>Log in</h1>
   
    <asp:Label ID="Emaillg" runat="server" Text="Email"></asp:Label><asp:TextBox ID="txtEmailAM" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Passlg" runat="server" Text="Password"></asp:Label><asp:TextBox ID="txtPassAM" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Buttonlogin" runat="server" Text="Log in" OnClick="Buttonlogin_Click" />
    <br />
    <asp:Label ID="lblMessage" runat="server" Text="ErrorMessage" ForeColor="Red"></asp:Label>
</form>
<div class="image-right">
    <img src="images/img_adlogin/b_lg.jpg" alt="Right Image">
</div>

    </form>
</body>
</html>

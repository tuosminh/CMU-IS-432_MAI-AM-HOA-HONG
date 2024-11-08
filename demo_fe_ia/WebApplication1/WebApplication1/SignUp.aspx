<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title></title>

        <!-- <link href="css/css_signUp.css" rel="stylesheet" /> -->
        <link href="css/css_login.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div id="container"></div>
            <div class="wrapper d-flex align-items-center">
                <!-- <img src="images/lg_IA.jpg" /> -->
                <h1>Inspired Art</h1>
                <h2>Sign Up</h2>

                <!-- label thông báo -->
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="thongBao"></asp:Label>

                <!-- UserName -->
                <div class="input-box">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <label>Username</label>
                    <i class="fa-solid fa-user"></i>
                </div>

                <!-- Password -->
                <div class="input-box">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <label>Password</label>
                    <i class="fa-solid fa-lock"></i>
                </div>

                <!-- Email -->
                <div class="input-box">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <label>Email</label>
                    <i class="fa-solid fa-envelope"></i>
                </div>

                <!-- button sign up -->
                <asp:Button ID="btnSignUp" runat="server" Text="Create an account" OnClick="btnSignUp_Click" />
            </div>
        </form>
    </body>

    </html>
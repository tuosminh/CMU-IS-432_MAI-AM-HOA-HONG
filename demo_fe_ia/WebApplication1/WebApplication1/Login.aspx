<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>IA - Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
            integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="css/css_login.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div id="container"></div>
            <div class="wrapper d-flex align-items-center">
                <div class="form-box login">
                    <!-- <img src="images/lg_IA.jpg" /> -->
                    <h1>Inspired Art</h1>
                    <h2>Login</h2>
                    <!-- UserName -->
                    <div class="input-box">
                        <asp:TextBox ID="txtUserNamelg" runat="server" CssClass="form-control" placeholder="" required>
                        </asp:TextBox>
                        <label>Username</label>
                        <!-- <asp:Label ID="UserNamelg" runat="server" Text="UserName"></asp:Label> -->
                        <i class="fa-solid fa-user"></i>
                    </div>

                    <!-- Password -->
                    <div class="input-box">
                        <asp:TextBox ID="txtPasslg" runat="server" TextMode="Password" CssClass="form-control"
                            placeholder="" required>
                        </asp:TextBox>
                        <label>Password</label>
                        <!-- <asp:Label ID="Passlg" runat="server" Text="Password"></asp:Label> -->
                        <i class="fa-solid fa-lock"></i>
                    </div>

                    <!-- label thông báo -->
                    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red" CssClass="thongbao"></asp:Label>

                    <!-- button login -->
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn" />

                    <!-- chuyển trang Sign up -->
                    <div class="reg-link">
                        <p>Don't have an account? <a href="SignUp.aspx" class="signup-link">Sign Up</a></p>
                    </div>

                    <!-- button connect Google -->
                    <button class="btnGoogle form-control">
                        <div class="d-flex align-items-center">
                            <img src="images/GoogleLogo.png" />
                            <span>Continue with Google</span>
                        </div>
                    </button>

                </div>
                <!-- ảnh nền -->
                <div class="imgLogin">
                    <img src="images/imgLoginPage.png" />
                </div>
            </div>
            </div>

            </div>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

        <script src="js/js_login.js"></script>
    </body>

    </html>
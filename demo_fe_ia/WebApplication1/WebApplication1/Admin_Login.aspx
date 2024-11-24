<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="WebApplication1.Admin_Login" %>

    <%@ Register Src="~/Menulogin.ascx" TagPrefix="uc1" TagName="Menulogin" %>


        <!DOCTYPE html>

        <html xmlns="http://www.w3.org/1999/xhtml">

        <head runat="server">
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>IA - Login Admin</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
                integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />

            <link href="css/css_login.css" rel="stylesheet" />
        </head>

        <body>
            <form id="form1" runat="server">
                <div id="container"></div>
                <div class="d-flex">
                    <uc1:Menulogin runat="server" ID="Menulogin" />
                    <div class="wrapper d-flex align-items-center">
                        <div class="form-box form-box-login login">
                            <!-- <img src="images/lg_IA.jpg" /> -->
                            <h1>Inspired Art</h1>
                            <h2>Login <br /> ADMIN</h2>

                            <!-- Email -->
                            <div class="input-box">
                                <asp:TextBox ID="txtEmailAM" runat="server" CssClass="form-control" placeholder=""
                                    required>
                                </asp:TextBox>
                                <label>Email</label>
                                <i class="fa-solid fa-user"></i>
                            </div>

                            <!-- Password -->
                            <div class="input-box">
                                <asp:TextBox ID="txtPassAM" runat="server" TextMode="Password" CssClass="form-control"
                                    placeholder="" required></asp:TextBox>
                                <label>Password</label>
                                <i class="fa-solid fa-lock"></i>
                            </div>

                            <!-- label thông báo -->
                            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>

                            <!-- button login -->
                            <asp:Button ID="Buttonlogin" runat="server" Text="Login" OnClick="Buttonlogin_Click"
                                CssClass="btn" />
                        </div>
                        <!-- ảnh nền -->
                        <div class="imgLogin">
                            <img src="images/imgLoginPage.png" />
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
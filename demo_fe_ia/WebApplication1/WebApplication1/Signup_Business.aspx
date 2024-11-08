<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup_Business.aspx.cs" Inherits="WebApplication1.Signup_Business" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create an Account</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css">
    <link href="css/css_signupbsn.css" rel="stylesheet" />
    <style>
        body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-image: url('img_signupbusiness/background2.jpeg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

    </style>
    <script>
        function togglePasswordVisibility() {
            var passwordField = document.getElementById("Passwordbsn");
            var eyeIcon = document.getElementById("eyeIcon");
            if (passwordField.type === "password") {
                passwordField.type = "text";
                eyeIcon.classList.remove("bi-eye");
                eyeIcon.classList.add("bi-eye-slash");
            } else {
                passwordField.type = "password";
                eyeIcon.classList.remove("bi-eye-slash");
                eyeIcon.classList.add("bi-eye");
            }
        }
    </script>
</head>
<body>

    <form id="form1" runat="server">
        <div id="container">
            <!-- Left section -->
            <div id="left-section">
                <h1>Inspired Art</h1>
                <img src="img_signupbusiness/background3.jpeg" alt="Abstract art" style="max-width: 80%; height: auto;" />
            </div>

            <!-- Right section -->
            <div id="right-section">
                <h1 class="form-title">Create an Account</h1>
                <a class="link" href="Login.aspx">Log in</a>

                <div class="input-group">
                    <asp:TextBox ID="Usernamebsn" runat="server" placeholder="Username"></asp:TextBox>
                </div>
                <div class="input-group">
                    <asp:TextBox ID="Emailbsn" runat="server" placeholder="Email"></asp:TextBox>
                </div>
                
                <!-- Password field with Bootstrap eye icon -->
                <div class="input-group">
                    <asp:TextBox ID="Passwordbsn" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                    <i id="eyeIcon" class="bi bi-eye eye-icon" onclick="togglePasswordVisibility()"></i>
                </div>
                
                <div class="input-group">
                    <asp:TextBox ID="ConfirmPasswordbsn" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                </div>
<span class="note">Use 8 or more characters with a mix of letters, numbers & symbols</span>

                <asp:Label ID="Thongbao" runat="server" Text="Label" Visible="false"></asp:Label>
                
                <br />
                <!-- Create Account Button -->
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Create Account" OnClick="Button1_Click" />

                <!-- OR Divider -->
                <div class="or-divider">OR</div>

                <!-- Continue with Google button -->
                <button type="button" class="button-google">
                    <i class="bi bi-google google-icon"></i> Continue with Google
                </button>
            </div>
        </div>
    </form>

</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IA - Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="css/css_login.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
            <div id="container"></div>
            <div class="wrapper">
            <!-- Background animation spans -->
            <span class="bg-animate"></span>
            <span class="bg-animate2"></span>

            <!-- Login form container -->
            <div class="form-box login">
                <h2 class="animation" style="--data:0;">Login</h2>
                
                <!-- Thêm Label cho thông báo lỗi -->
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" CssClass="error-message"></asp:Label>
                
                <form action="#">
                    <!-- Username input -->
                    <div class="input-box animation" style="--data:1;">
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Username</label>
                        <i class="fa-solid fa-user"></i> <!-- User icon -->
                    </div>

                    <!-- Password input -->
                    <div class="input-box animation" style="--data:3;">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Password</label>
                        <i class="fa-solid fa-lock"></i> <!-- Lock icon -->
                    </div>

                    <div class="checkbox-container animation mb-3" style="--data:4;">
                        <asp:CheckBox ID="chkRemember" runat="server" CssClass="custom-checkbox" />
                        <span class="ms-2">Remember me</span> 
                    </div>

                    <!-- Submit button -->
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn animation" OnClick="btnLogin_Click" style="--data:5" type="submit"/>

                    <!-- Link to sign-up form -->
                    <div class="reg-link animation" style="--data:6;">
                        <p>Don't have an account? <a href="#" class="signup-link">Sign Up</a></p>
                    </div>
                </form>
            </div>

            <!-- Welcome back message for login -->
            <div class="info-text login">
                <h1 class="animation" style="--data:1;">Welcome To IA</h1>
                <p class="animation" style="--data:2">Lorem ipsum dolor sit amet consectetur adipisicing.</p>
            </div>

            <!-- Sign-Up form container -->
            <div class="form-box signup">
                <h2 class="animation">Sign Up</h2>
                <form action="#">
                    <!-- Username input -->
                    <div class="input-box animation" style="--data:17">
                        <asp:TextBox ID="txtSignupUsername" runat="server" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Username</label>
                        <i class="fa-solid fa-user"></i> <!-- User icon -->
                    </div>

                    <!-- Email input -->
                    <div class="input-box animation" style="--data:18">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Email</label>
                        <i class="fa-solid fa-envelope"></i> <!-- Envelope icon -->
                    </div>

                    <!-- Password input -->
                    <div class="input-box animation" style="--data:19">
                        <asp:TextBox ID="txtSignupPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Password</label>
                        <i class="fa-solid fa-lock"></i> <!-- Lock icon -->
                    </div>
                    <!-- Password input again-->
                    <div class="input-box animation" style="--data:20">
                        <asp:TextBox ID="txtSignupPasswordAgain" runat="server" TextMode="Password" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Re-enter password</label>
                        <i class="fa-solid fa-lock"></i> <!-- Lock icon -->
                    </div>

                    <!-- Submit button -->
                    <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="btn animation" style="--data:21" OnClick="btnSignup_Click" type="submit"/>

                    <!-- Link to login form -->
                    <div class="reg-link animation" style="--data:22">
                        <p>Already have an account? <a href="#" class="login-link">Login</a></p>
                    </div>
                </form>
            </div>

            <!-- Welcome back message for signup -->
            <div class="info-text signup">
                <h1 class="animation" style="--data:18">Welcome To IA</h1>
                <p class="animation" style="--data:20">Lorem ipsum dolor sit amet consectetur adipisicing.</p>
            </div>

        </div>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var wrapper = document.querySelector('.wrapper');
            var signuplink = document.querySelector('.signup-link');
            var loginlink = document.querySelector('.login-link');

            signuplink.onclick = () => {
                wrapper.classList.add("active");
                animateContainer();
            };

            loginlink.onclick = () => {
                wrapper.classList.remove("active");
                animateContainer();
            };

            var container = document.getElementById('container');
            var borderArray = ['50%', '0'];
            var blurArray = ['0', '5px'];
            var colorArray = ['#25252b', '#6305D3', '#E3D2F7'];
            var width = window.innerWidth;
            var height = window.innerHeight;
            var count = 8;

            function createElementRandom() {
                for (var i = 0; i < count; i++) {
                    var randomLeft = Math.floor(Math.random() * width);
                    var randomTop = Math.floor(Math.random() * height);
                    var color = Math.floor(Math.random() * 3);
                    var border = Math.floor(Math.random() * 2);
                    var blur = Math.floor(Math.random() * 2);
                    var widthElement = Math.floor(Math.random() * 5) + 7;


                    var div = document.createElement("div");
                    div.classList.add("moving-div");
                    div.style.backgroundColor = colorArray[color];
                    div.style.position = 'absolute';
                    div.style.width = widthElement + 'px';
                    div.style.height = widthElement + 'px';
                    div.style.left = randomLeft + 'px';
                    div.style.top = randomTop + 'px';
                    div.style.borderRadius = borderArray[0];
                    //div.style.marginLeft = randomLeft + 'px';
                    //div.style.marginTop = randomTop + 'px';
                    //div.style.borderRadius = borderArray[border];
                    div.style.filter = 'blur(' + blurArray[blur] + ')';
                    div.style.animation = 'move 5s ease-in infinite';
                    container.appendChild(div);
                }
            }

            function animateContainer() {
                container.innerHTML = '';
                createElementRandom();
                setTimeout(() => {
                    var movingDivs = document.querySelectorAll('.moving-div');
                    movingDivs.forEach(div => {
                        div.style.animation = 'move 5s ease-in infinite';
                    });
                }, 50);
            }
            function animateContainer() {
                createElementRandom();
            }
            setInterval(animateContainer, 4500);

            createElementRandom();
        });
    </script>
</body>
</html>

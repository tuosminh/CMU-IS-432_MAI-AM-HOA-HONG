%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Photos.aspx.cs"
    Inherits="WebApplication1.Photos" %>
    <asp:Content ID="Photos" ContentPlaceHolderID="content" runat="server">
            <link href="css/css_photos.css" rel="stylesheet" />
    <div class="wrapper">
        <div class="quangCao mt-4">
            <asp:DataList ID="DSQUANGCAO" runat="server" CssClass="quangCaoList">

                <ItemTemplate>
                    <div class="card d-flex flex-column" style="margin-bottom: 20px;">
                        <asp:ImageButton ID="ImageButton1" class="quangCao1" runat="server"
                            CommandArgument='<%# Eval("IDQUANGCAO") %>'
                            ImageUrl='<%# "photo_img/"+Eval("ANHQUANGCAO") %>' />

                        <div class="profile-icon">
                            <asp:ImageButton ID="ImageButton2" class="quangCao2" runat="server"
                                CommandArgument='<%# Eval("IDQUANGCAO") %>'
                                ImageUrl='<%# "photo_img/"+Eval("AVATARNGUOIDANG") %>' width="50px" Height="50px" />
                        </div>


                        <div class="menu-icon" onclick="toggleMenu(event)">...</div>

                        <div class="dropdown-menu" id="dropdownMenu1" style="display: none;">
                            <a href="#" onclick="hideProduct()">Hide product</a><br>
                            <a href="#" onclick="reportProduct()">Product report</a>
                        </div>

                        <div class="card-content">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENTACPHAM") %>'></asp:Label><br>
                            &nbsp;
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA") %>'></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>

        </div>

        <div class="tacPham mt-4">
            <div class="row d-flex">
                <!-- <div class="col-lg-12"> -->
                    <asp:DataList ID="DSTACPHAM" runat="server" CssClass="tacPhamList" RepeatColumns="4">
                        <ItemTemplate>
                            <!-- <div class="row"> -->
                                <div class="col-lg-3">
                                    <div class="card p-0 m-1 d-flex">

                                        <asp:ImageButton ID="ImageButton4" class="quangCao4" runat="server"
                                            CommandArgument='<%# Eval("IDTACPHAM") %>'
                                            ImageUrl='<%# "photo_img/"+Eval("ANHTACPHAM") %>' />

                                        <div class="profile-icon">
                                            <asp:ImageButton ID="ImageButton3" class="quangCao3" runat="server"
                                                CommandArgument='<%# Eval("IDTACPHAM") %>'
                                                ImageUrl='<%# "photo_img/"+Eval("AVATARTACGIA") %>' width="50px"
                                                Height="50px" />
                                        </div>

                                        <div class="menu-icon" onclick="toggleMenu(event)">...</div>

                                        <div class="dropdown-menu" id="dropdownMenu1" style="display: none;">
                                            <a href="#" onclick="hideProduct()">Hide product</a><br>
                                            <a href="#" onclick="reportProduct()">Product report</a>
                                        </div>
                                    </div>
                                </div>
                            <!-- </div> -->


                        </ItemTemplate>
                    </asp:DataList>
                </div>


            </div>

        <!-- </div> -->
    </div>


    <script>
        function toggleMenu(event, id) {
        event.stopPropagation();
        var menu = document.getElementById("dropdownMenu1" + id);
        menu.style.display = (menu.style.display === "block") ? "none" : "block";
        }

        document.addEventListener("click", function (event) {
        var menu = document.getElementById("dropdownMenu1");
        if (menu.style.display === "block" && !menu.contains(event.target)) {
        menu.style.display = "none";
        }
        });

        function hideProduct() {
        alert("Product hidden");
        document.getElementById("dropdownMenu1").style.display = "none";
        }

        function reportProduct() {
        alert("Product reported");
        document.getElementById("dropdownMenu1").style.display = "none";
        }

    </script>
</asp:Content>
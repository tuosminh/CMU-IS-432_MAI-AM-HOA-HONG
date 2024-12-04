<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAdmin.Master" AutoEventWireup="true" CodeBehind="Adm_Home.aspx.cs" Inherits="WebApplication1.Adm_Home" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
        <h1 style="color: var(--title-color); font-weight: bold; margin-left: 30%; padding-top: 5px;">Welcom to Admin
            Page!!!</h1>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="css/adm_home.css" rel="stylesheet" />

        <div class="row-tong">
            <!-- <div class="tieu-de">
                <asp:Label ID="Label1" runat="server" Text="Welcom to Admin Page!!!">
                </asp:Label>
            </div>
            <br /> -->

            <div class="row-img" style="display: flex;">
                <div class="number-of-oders">
                    <asp:Label ID="Label2" runat="server" Text="Number of Oders" CssClass="text-1"
                        style="padding-left: 5px;"></asp:Label>
                    <img alt="" src="images/img_admhome/bar_chart.png" style="width: 130px; height: 110px" />
                </div>

                <div class="number-of-user">
                    <asp:Label ID="Label3" runat="server" Text="Number of users" CssClass="text-2"></asp:Label>
                    <img alt="" src="images/img_admhome/pie_chart.jpeg" style="width: 130px; height: 110px" /><br />
                    <br />
                </div>

                <div class="top-feature">
                    <asp:Label ID="Label4" runat="server" Text="Top feature works" CssClass="text-3"></asp:Label>
                    <div class="img-container">
                        <img alt="" src="images/img_realtimearthub/12.jpg" style="width: 100px; height: 100px" /><img
                            alt="" src="images/img_realtimearthub/13.jpg" style="width: 100px; height: 100px" /><img
                            alt="" src="images/img_realtimearthub/14.jpg" style="width: 100px; height: 100px" /><br />
                    </div>
                </div>
            </div><br>


            <div class="table-container" style="margin-left: 15%; width: 700px;">
                <div class="table">
                    <div class="container" style="background: #004040;">

                        <asp:Label ID="Label9" runat="server" Text="ID" CssClass="id"></asp:Label>

                        <asp:Label ID="Label5" runat="server" Text="Username" CssClass="username">
                        </asp:Label>

                        <asp:Label ID="Label6" runat="server" Text="Email" CssClass="email"></asp:Label>

                        <asp:Label ID="Label7" runat="server" Text="Gender" CssClass="gender"></asp:Label>

                        <asp:Label ID="Label8" runat="server" Text="Role" CssClass="role"></asp:Label>

                    </div><br>


                    <asp:DataList ID="DSUSER" runat="server">
                        <ItemTemplate>
                            <div class="tabel-info">
                                <asp:Label ID="Label10" runat="server" CssClass="id-khachHang"
                                    Text='<%# Eval("IDKHACHHANG") %>'>
                                </asp:Label>

                                <asp:Label ID="Label11" runat="server" CssClass="ten-dangNhap"
                                    Text='<%# Eval("TENDANGNHAP") %>'>
                                </asp:Label>

                                <asp:Label ID="Label12" runat="server" CssClass="Email" Text='<%# Eval("EMAIL") %>'>
                                </asp:Label>

                                <asp:Label ID="Label13" runat="server" CssClass="gioiTinh"
                                    Text='<%# Eval("GIOITINH") %>'>
                                </asp:Label>

                                <asp:Label ID="Label14" runat="server" CssClass="Role" Text='<%# Eval("ROLE") %>'>
                                </asp:Label>

                                <div class="button-show">
                                    <asp:Button ID="Button1" runat="server" CssClass="show-more"
                                        CommandArgument='<%# Eval("IDKHACHHANG") %>' Text="Show more"
                                        OnClick="Button1_Click1" OnClientClick="showPopup(); return false;" />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>

                <asp:DataList ID="DETAIL" runat="server" Width="500px">
                    <ItemTemplate>
                        <div id="popup" class="popup">
                            <div class="detail-container" style="width: 700px;">
                                <span id="closePopup" class="close"> &times;</span>
                                <div class="info-container">
                                    <p>Cover photo</p>
                                    <p>Avatar</p>
                                    <p class="ten">Username</p>
                                    <p class="diachi">Address</p>
                                    <p>Gender</p>
                                    <p>Age</p>
                                </div><br>

                                <div class="noi-dung">
                                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="id-user"
                                        CommandArgument='<%# Eval("IDKHACHHANG") %>'
                                        ImageUrl='<%# "images/img_realtimearthub/"+Eval("AVTBIA") %>' HEIGHT="100PX"
                                        Width="80PX" />
                                    <asp:ImageButton ID="ImageButton2" runat="server" CssClass="avatar-user"
                                        CommandArgument='<%# Eval("IDKHACHHANG") %>'
                                        ImageUrl='<%# "images/img_realtimearthub/"+Eval("AVTDAIDIEN") %>' HEIGHT="80PX"
                                        Width="70PX" />
                                    <asp:Label ID="Label15" runat="server" CssClass="ten-user"
                                        Text='<%# Eval("TENDANGNHAP") %>'>
                                    </asp:Label>
                                    <asp:Label ID="Label16" runat="server" CssClass="diaChi-user"
                                        Text='<%# Eval("DIACHI") %>'></asp:Label>
                                    <asp:Label ID="Label17" runat="server" CssClass="gender-user"
                                        Text='<%# Eval("GIOITINH") %>'></asp:Label>
                                    <asp:Label ID="Label18" runat="server" CssClass="age-user"
                                        Text='<%# Eval("TUOI") %>'></asp:Label>
                                </div>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:DataList>
            </div><br>


        </div>

        <script src="js/js_adm_home.js"></script>
    </asp:Content>
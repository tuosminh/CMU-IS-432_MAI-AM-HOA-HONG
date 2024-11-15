<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="WebApplication1.Notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="css/css_notification.css" rel="stylesheet" />
    
    <div class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="text-container mt-4">
                    <asp:Label ID="Label1" runat="server" Text="NOTIFICATIONS"></asp:Label>
                </div>
                <div class="thongBao-container">
                    <asp:DataList ID="DSTHONGBAO" runat="server">
                        <ItemTemplate>
                            <div class="notification-item">
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("IDNOTIFICATION") %>'
                                    Text='<%# Eval("CHITIETTHONGBAO") %>' width="1115   px" Height="50px" CssClass="notification-button" />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


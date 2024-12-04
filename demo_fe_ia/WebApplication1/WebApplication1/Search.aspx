<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication1.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="css/css_search.css" rel="stylesheet" />
    <div class="search-bar">
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <div class="search-input-wrapper" style="display: flex;">
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Style="margin-top:100px" AutoPostBack="true" CssClass="search-textbox"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" Style="width: 100px;height: 50px;margin-left: 15px;margin-top: 100px;border-radius: 10px;" />
        </div>
    </div>

    <br />

    <!-- Kết quả tìm kiếm -->
    <div class="search-results">
        <asp:Label ID="Label2" runat="server" Text="Search Results"></asp:Label>
        <asp:Repeater ID="SearchResultsRepeater" runat="server">
            <ItemTemplate>
                <div class="search-result-item">
                    
                    <asp:ImageButton ID="ProductImage" runat="server" CommandArgument='<%# Eval("IDSANPHAM") %>' ImageUrl='<%# "images/img_cart/" + Eval("ANHSANPHAM") %>' />
                   
                    <asp:LinkButton ID="ProductName" runat="server" CommandArgument='<%# Eval("IDSANPHAM") %>' Text='<%# Eval("TENSANPHAM") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <br />

    
    <div class="recommended-section">
        <asp:Label ID="Label3" runat="server" Text="Recommended for you"></asp:Label>
        <br />
        <div class="recommended-grid">
            <asp:DataList ID="DB1" runat="server" RepeatColumns="4">
                <ItemTemplate>
                    <div class="datalist-item">
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("IDSANPHAM") %>' 
                                         ImageUrl='<%# "images/img_search/" + Eval("ANHSANPHAM") %>' />
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("IDSANPHAM") %>' 
                                        Text='<%# Eval("TENSANPHAM") %>'></asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
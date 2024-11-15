<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs"
    Inherits="WebApplication1.OrderDetails" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
        <link href="css/css_orderdetail.css" rel="stylesheet" />
        <div id="row-tong" class="container">
            <div class="row-wrapper">
                <div class="row-1 col-lg-7">
                    <div class="label-1 mb-4">
                        <asp:Label ID="Label1" runat="server" Text="Billing Details" CssClass="section-title">
                        </asp:Label>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" Text="First Name *" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="first_name" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label3" runat="server" Text="Last Name *" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="last_name" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <asp:Label ID="Label4" runat="server" Text="Company" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="company" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label5" runat="server" Text="Country/Region *" CssClass="form-label">
                            </asp:Label>
                            <asp:DropDownList ID="country" runat="server" CssClass="form-select">
                                <asp:ListItem Text="United States" Value="US"></asp:ListItem>
                                <asp:ListItem Text="Vietnam" Value="VN"></asp:ListItem>
                                <asp:ListItem Text="Canada" Value="CA"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="mb-3">
                        <asp:Label ID="Label6" runat="server" Text="Street Address *" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="street_address" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <asp:Label ID="Label7" runat="server" Text="Town/City *" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label8" runat="server" Text="State *" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="state" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <asp:Label ID="Label9" runat="server" Text="ZIP Code" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="zip_code" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label10" runat="server" Text="Phone *" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3">
                        <asp:Label ID="Label11" runat="server" Text="Email *" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="mb-4">
                        <asp:Label ID="Label12" runat="server" Text="Order Notes" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="order_notes" runat="server" CssClass="form-control" TextMode="MultiLine">
                        </asp:TextBox>
                    </div>

                    <div class="d-flex justify-content-between">
                        <asp:Button ID="btnReturn" runat="server" Text="Return to Cart" CssClass="btn btn-secondary" />
                        <asp:Button ID="btnContinue" runat="server" Text="Continue to Shipping"
                            CssClass="btn btn-primary" />
                    </div>
                </div>

                <div class="row-2 col-lg-5">
                    <div class="product-summary mb-4">
                        <div class="d-flex justify-content-between mb-2">
                            <asp:Label ID="Label13" runat="server" Text="Product" CssClass="section-title"></asp:Label>
                            <asp:Label ID="Label14" runat="server" Text="Subtotal" CssClass="section-title"></asp:Label>
                        </div>

                        <%-- <asp:DataList ID="DSSP" runat="server" RepeatDirection="Vertical">
                            <ItemTemplate>
                                <div class="d-flex flex-column justify-content-between mb-2">
                                    <div class="d-flex justify-content-between">
                                        <asp:Label ID="LabelProductName" runat="server" Text='<%# Eval("TENSANPHAM") %>'
                                            CssClass="product-name"></asp:Label>
                                        <asp:Label ID="LabelProductPrice" runat="server" Text='<%# Eval("GIA") %>'
                                            CssClass="product-price"></asp:Label>
                                    </div>

                                    <div class="d-flex justify-content-between">
                                        <h5>
                                            <asp:Label ID="Label15" runat="server" Text="Shipping"></asp:Label>
                                        </h5>
                                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("GIASHIP") %>'>
                                        </asp:Label>
                                    </div>

                                    <div class="d-flex justify-content-between font-weight-bold">
                                        <h3>
                                            <asp:Label ID="Label17" runat="server" Text="Total: "></asp:Label>
                                        </h3>
                                        <h3>
                                            <asp:Label ID="Label18" runat="server" Text='<%# Eval("GIA") %>'>
                                            </asp:Label>
                                        </h3>
                                    </div>
                                </div>

                            </ItemTemplate>
                            </asp:DataList>--%>
                            <asp:DataList ID="DSSP" runat="server">
                                <ItemTemplate>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="ten-gia-container">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSANPHAM") %>' CssClass="ten-sp"></asp:Label>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIASANPHAM") %>' CssClass="gia-sp"></asp:Label>
                                            </div>
                                        </div>

                                        <!-- <div class="col-12">
                                        </div> -->

                                        <div class="col-12">
                                            <div class="shipping-container">
                                                <asp:Label ID="Label15" runat="server" Text="Shipping" CssClass="ship-container"></asp:Label>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("GIASHIP") %>' CssClass="gia-ship-container"></asp:Label>
                                            </div>

                                        </div>

                                        <div class="col-12">
                                            <div class="total-container">
                                                <asp:Label ID="Label16" runat="server" Text="TOTAL" CssClass="total-1"></asp:Label>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("GIASANPHAM") %>' CssClass="gia-total">
                                                </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>

                            <div class="d-flex justify-content-end">
                            </div>
                            <div class="d-flex justify-content-between">
                            </div>
                            <div class="d-flex justify-content-between font-weight-bold">
                            </div>
                    </div>
                    <img src="images/img_payment/payment.png" class="anhpayment" />
                </div>
            </div>
        </div>

    </asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAdmin.Master" AutoEventWireup="true" CodeBehind="Admin_OrderManage.aspx.cs" Inherits="WebApplication1.Admin_OrderManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
    <div class="cntSearch d-flex align-items-center ms-3">
        <asp:TextBox ID="txtSearch" runat="server" CssClass="inpSearch"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btnSearch" />
        <!-- <asp:Button ID="vtnNoti" runat="server" Text="Notification" /> -->
    </div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/css_userManage-Admin.css" rel="stylesheet" />

    <div class="row">
        <div class="nameTable col-lg-12 mb-3">
            <div class="card text-center p-2">
                <h4 class="m-0"> ORDER MANAGEMENT</h4>
            </div>
        </div>
        <a href=""></a>
        <div class="cntTable col-lg-12">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="text-center align-middle">#</th>
                                <th class="text-center align-middle">Order ID</th>
                                <th class="text-center align-middle">Customer Name</th>
                                <th class="text-center align-middle">Order Date</th>
                                <th class="text-center align-middle">Order Status</th>
                                <th class="text-center align-middle">Price</th>
                                <th class="text-center align-middle">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:DataList ID="dsOrder" runat="server" RepeatLayout="Flow"
                                RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <tr>
                                        <th class="text-center align-middle">
                                            <asp:Label ID="lblSTT" runat="server"
                                                Text='<%# Container.ItemIndex + 1 %>'></asp:Label>
                                        </th>
                                        <td class="text-center align-middle">
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("ORDERID") %>'>
                                            </asp:Label>
                                        </td>
                                        <td class="text-center align-middle">
                                            <asp:Label ID="Label8" runat="server"
                                                Text='<%# Eval("TENNGUOIDUNG") %>'></asp:Label>
                                        </td>
                                        <td class="text-center align-middle">
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("NGAYDATHANG") %>'>
                                            </asp:Label>
                                        </td>
                                        <td class="text-center align-middle">
                                            <asp:Label ID="Label10" runat="server"
                                                Text='<%# Eval("ORDERSTATUS") %>'>
                                            </asp:Label>
                                        </td>
                                        <td class="text-center align-middle">
                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("GIASANPHAM") %>'>
                                            </asp:Label>
                                        </td>
                                        <td class="text-center align-middle">
                                             
                                            <button type="button" class="btn btn-outline-primary"
                                                data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                
                                                <asp:Button ID="Button1" runat="server" Text="View Detail"
                                                   CommandName="View Detail" CommandArgument='<%# Eval("ORDERID") %>'
                                                   OnCommand="btnDetail_Click" /> 

                                            </button>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:DataList>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">View order</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-6 mb-3">
                                    <asp:Label ID="lblId" runat="server" Text="Order Code"></asp:Label>
                                    <input id="txtId" type="text" runat="server" Class="form-control" />
                                </div>

                                <div class="col-lg-6 mb-3">
                                    <asp:Label ID="Label1" runat="server" Text="Customer Name"></asp:Label>
                                    <input id="txtName" type="text" runat="server"  Class="form-control" />

                                </div>
                                <div class="col-lg-6 mb-3">
                                    <asp:Label ID="lblTensanpham" runat="server" Text="Product Name"></asp:Label>
                                    <input id="txtTensanpham" type="text" runat="server"  Class="form-control"/><br />

                                </div>
                                <div class="col-lg-6 mb-3">
                                    <asp:Label ID="lblGiasanpham" runat="server" Text="Order Value"></asp:Label>
                                    <input id="txtGia" type="text" runat="server"  Class="form-control"/><br />

                                </div>
                                <div class="col-lg-6 mb-3">
                                    <asp:Label ID="lblNgaygiao" runat="server" Text="Delivery Date"></asp:Label>
                                    <input id="txtNgaygiao" type="text" runat="server"  Class="form-control" /><br />

                                </div>
                                <div class="col-lg-6 mb-3">
                                    <asp:Label ID="lblDiachi" runat="server" Text="Shipping Address"></asp:Label>
                                    <input id="txtDiachi" type="text" runat="server"  Class="form-control" /><br />
                                </div>
                                <div class="col-lg-6 mb-3">
                                    <asp:Label ID="lblOrderstatus" runat="server" Text="Order Status"></asp:Label>
                                    <input id="txtStatus" type="text" runat="server"  Class="form-control"/><br />
                                </div>

                                 <div class="col-lg-6 mb-3">
                                     <asp:Label ID="lblphone" runat="server" Text="Phone"></asp:Label>
                                     <input id="txtSdt" type="text" runat="server"  Class="form-control" />

                                 </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                          
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <asp:Label ID="lblMessage" runat="server" Text="Message" ForeColor="#CC0000"></asp:Label>

    </div>





    <script src="js/js_userManage-Admin.js"></script>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAdmin.Master" AutoEventWireup="true" CodeBehind="Admin_UserManage.aspx.cs" Inherits="WebApplication1.Admin_UserManage" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
        <div class="cntSearch d-flex align-items-center ms-3">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="inpSearch"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btnSearch" />
        </div>

        <%-- <asp:Button ID="btnNotification" runat="server" Text="Notification" />--%>
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="css/css_userManage-Admin.css" rel="stylesheet" />

        <div class=row>
            <div class="nameTable col-lg-12 mb-3">
                <div class="card text-center p-2">
                    <h4 class="m-0"> USER MANAGEMENT</h4>
                </div>
            </div>
            <div class="cntTable col-lg-12">
                <div class="card">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="text-center align-middle">#</th>
                                    <th class="text-center align-middle">User Id</th>
                                    <th class="text-center align-middle">User Name</th>
                                    <th class="text-center align-middle">Email</th>
                                    <th class="text-center align-middle">Join Date</th>
                                    <th class="text-center align-middle">Role</th>
                                    <th class="text-center align-middle">Status</th>
                                    <th class="text-center align-middle">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:DataList ID="dsUser" runat="server" RepeatLayout="Flow"
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <tr>
                                            <th class="text-center align-middle">
                                                <asp:Label ID="lblSTT" runat="server"
                                                    Text='<%# Container.ItemIndex + 1 %>'></asp:Label>

                                            </th>
                                            <td class="text-center align-middle">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("IDKHACHHANG") %>'>
                                                </asp:Label>
                                            </td>/-strong/-heart:>:o:-((:-h <td class="text-center align-middle">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENDANGNHAP") %>'>
                                                </asp:Label>
                                            </td>
                                            <td class="text-center align-middle">
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("EMAIL") %>'>
                                                </asp:Label>
                                            </td>
                                            <td class="text-center align-middle">
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("NGAYTHAMGIA") %>'>
                                                </asp:Label>
                                            </td>
                                            <td class="text-center align-middle">
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("ROLE") %>'>
                                                </asp:Label>
                                            </td>
                                            <td class="text-center align-middle">
                                                <asp:Label ID="Label6" runat="server"
                                                    Text='<%# Eval("OPERATINGSTATUS") %>'></asp:Label>
                                            </td>
                                            <td class="text-center align-middle">
                                                <button type="button" class="btn btn-outline-primary"
                                                    data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                    <asp:Button ID="Button1" runat="server" Text="View" 
                                                    CommandName="Edit" CommandArgument='<%# Eval("IDKHACHHANG") %>'
                                                    OnCommand="btnEdit_Click"  />
                                                    
                                                </button>
                                                <%--<asp:Button ID="btnEdit" runat="server" Text="Edit"
                                                    CommandName="Edit" CommandArgument='<%# Eval("IDKHACHHANG") %>'
                                                    OnCommand="btnEdit_Click" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" />--%>
                                                 

                                               <asp:Button ID="btnDelete" runat="server" Text="Delete"
     CommandName="Xoa" CommandArgument='<%# Eval("IDKHACHHANG") %>'
     OnCommand="btnXoa_Click" data-bs-toggle="modal"
     data-bs-target="#deleteModal" type ="button"/>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:DataList>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Modal Delete -->
                <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="deleteModalLabel">Delete User</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Are you sure you want to delete this item?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-danger" id="btnConfirmDelete"
                                    data-bs-dismiss="modal">Delete</button>
                            </div>
                        </div>
                    </div>
                </div>

               <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Edit User</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                    aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-6 mb-3">
                        <asp:Label ID="lblId" runat="server" Text="ID"></asp:Label>
                        <input id="txtId" type="text" runat="server" class="form-control" />
                    </div>
                    <div class="col-lg-6 mb-3">
                        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                        <input id="txtName" type="text" runat="server" class="form-control" />
                    </div>
                    <div class="col-lg-6 mb-3">
                        <asp:Label ID="lblEmaill" runat="server" Text="Email"></asp:Label>/-strong/-heart:>:o:-((:-h <input id="txtEmail" type="text" runat="server" class="form-control" />
                    </div>
                    <div class="col-lg-6 mb-3">
                        <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
                        <input id="txtPassword" type="text" runat="server" class="form-control" />
                    </div>
                    <div class="col-lg-6 mb-3">
                        <asp:Label ID="lblSdt" runat="server" Text="Phone Number"></asp:Label>
                        <input id="txtSdt" type="text" runat="server" class="form-control" />
                    </div>
                    <div class="col-lg-6 mb-3">
                        <asp:Label ID="lblVitri" runat="server" Text="Position"></asp:Label>
                        <input id="txtVitri" type="text" runat="server" class="form-control" />
                    </div>
                    <div class="col-lg-6 mb-3">
                        <asp:Label ID="lblDate" runat="server" Text="Join Date"></asp:Label>
                        <input id="txtDate" type="text" runat="server" class="form-control" />
                    </div>
                    <div class="col-lg-6 mb-3">
                        <asp:Label ID="lblStatus" runat="server" Text="Operate Status"></asp:Label>
                        <input id="txtStatus" type="text" runat="server" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
               <%-- <asp:Button ID="btnSave" runat="server" Text="Save Changes" OnClick="btnSave_Click"
                    CommandArgument='<%# Eval("IDKHACHHANG") %>' />--%>
                <%--<button type="button" class="btn btn-primary">Save changes</button>--%>
            </div>
        </div>
    </div>
</div>
            </div>
            <asp:Button ID="btnUndo" runat="server" Text="Undo" OnClick="btnUndo_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="lblMessage" ForeColor="Maroon">
            </asp:Label>

        </div>


        <script src="js/js_userManage-Admin.js"></script>
    </asp:Content>
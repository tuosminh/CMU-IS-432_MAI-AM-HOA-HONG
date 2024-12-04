<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAdmin.Master" AutoEventWireup="true" CodeBehind="Adm_ReportManagement.aspx.cs" Inherits="WebApplication1.Adm_ReportManagement" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
    <h1 style="color: var(--title-color); font-weight: bold; margin-left: 30%; padding-top: 5px; ">Report Management
    </h1>
  </asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/report-adm.css" rel="stylesheet" />

    <div class="row-title-container">
      <!-- <div class="Title">
        <asp:Label ID="Label13" runat="server" Text="Report Management"></asp:Label>
      </div><br /> -->

      <div class="label-container" style="margin-left: 25%;">
        <div class="title-info">
          <asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label>
          <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
          <asp:Label ID="Label3" runat="server" Text="Report Quantity"></asp:Label>
          <label for="">Action</label>
        </div>


        <asp:DataList ID="DSREPORT" runat="server">
          <ItemTemplate>
            <div class="noi-dung-info">
              <asp:Label ID="Label14" runat="server" CssClass="label14-id" Text='<%# Eval("IDKHACHHANG") %>'>
              </asp:Label>
              <asp:Label ID="Label15" runat="server" CssClass="label15-username" Text='<%# Eval("TENDANGNHAP") %>'>
              </asp:Label>
              <asp:Label ID="Label16" runat="server" CssClass="label16-report" Text='<%# Eval("SOLUONGREPORT") %>'>
              </asp:Label>
              <div class="button-show">
                <asp:Button ID="Button1" runat="server" CssClass="button-report" Text="Report" OnClick="Button1_Click1"
                  OnClientClick="return confirmReport();" CommandArgument='<%# Eval("IDKHACHHANG") %>' />

              </div>
            </div>



          </ItemTemplate>
        </asp:DataList>

      </div>
    </div>

    <script type="text/javascript">
      function confirmReport() {
        // Hiển thị hộp thoại xác nhận
        return confirm("Bạn có chắc chắn muốn báo cáo người dùng này không?");
      }
    </script>

  </asp:Content>
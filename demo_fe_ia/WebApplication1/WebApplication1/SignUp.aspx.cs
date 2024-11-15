using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class SignUp : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        private KhachHangDbContext db = new KhachHangDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string tendangnhap = txtUserName.Text.Trim();
            string matkhau = txtPassword.Text.Trim();
            string email = txtEmail.Text.Trim();

            if (string.IsNullOrEmpty(tendangnhap) || string.IsNullOrEmpty(matkhau) || string.IsNullOrEmpty(email))
            {
                lblMessage.Text = "Tất cả các trường đều bắt buộc.";
                return;
            }

            // Kiểm tra xem tài khoản đã tồn tại chưa
            string checkQuery = $"SELECT COUNT(*) FROM KHACHHANG WHERE TENDANGNHAP = N'{tendangnhap}'";
            DataTable dt = kn.LayDuLieu(checkQuery);
            if (dt != null && dt.Rows.Count > 0 && Convert.ToInt32(dt.Rows[0][0]) > 0)
            {
                lblMessage.Text = "Tên đăng nhập đã tồn tại!";
                return;
            }

            string insertQuery = $"INSERT INTO KHACHHANG (TENDANGNHAP, MATKHAU, EMAIL) VALUES (N'{tendangnhap}', N'{matkhau}', N'{email}')";

            // Thêm dòng sau để debug
            System.Diagnostics.Debug.WriteLine("Insert Query: " + insertQuery);

            int result = kn.CapNhatDuLieu(insertQuery);

            if (result > 0)
            {
                lblMessage.Text = "Đăng ký thành công!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Đăng ký thất bại!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
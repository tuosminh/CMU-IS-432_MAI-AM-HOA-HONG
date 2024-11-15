using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUserNamelg.Text.Trim();
            string pass = txtPasslg.Text.Trim();

            if (AuthenticateUser(username, pass))
            {
                // Đăng nhập thành công
                lblMessage.Text = "Đăng nhập thành công!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                // Redirect to another page if needed
                 Response.Redirect("Home.aspx");

            }
            else
            {
                // Đăng nhập thất bại
                lblMessage.Text = "Username or password is incorrect!";
            }

        }

        private bool AuthenticateUser(string username, string password)
        {
            LopKetNoi db = new LopKetNoi();
            string query = $"SELECT * FROM KHACHHANG WHERE TENDANGNHAP = N'{username}' AND MATKHAU = '{password}'";
            DataTable dt = db.LayDuLieu(query);

            return dt != null && dt.Rows.Count > 0;
        }


    }
}

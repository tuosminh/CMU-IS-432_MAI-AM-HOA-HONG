using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Signup_Business : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tensignup = Usernamebsn.Text.Trim();
            string matkhausignup = Passwordbsn.Text.Trim();
            string emailsignup = Emailbsn.Text.Trim();

            if (string.IsNullOrEmpty(tensignup) || string.IsNullOrEmpty(matkhausignup) || string.IsNullOrEmpty(emailsignup))
            {
                Thongbao.Text = "Tất cả các trường đều bắt buộc.";
                return;
            }




            string insertQuery = $"INSERT INTO BUSINESS_SIGNUP (USERNAMEBSN, EMAILBSN, PASSWORDBSN) VALUES (N'{tensignup}', N'{emailsignup}', N'{matkhausignup}')";
            System.Diagnostics.Debug.WriteLine("Insert Query: " + insertQuery);

            int result = kn.CapNhatDuLieu(insertQuery);
            if (result > 0)
            {
                Thongbao.Text = "Đăng ký thành công!";
                Thongbao.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Thongbao.Text = "Đăng ký thất bại!";
                Thongbao.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}
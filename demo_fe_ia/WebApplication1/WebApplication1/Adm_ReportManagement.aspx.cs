using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Adm_ReportManagement : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            string sql = "SELECT IDKHACHHANG, TENDANGNHAP, SOLUONGREPORT FROM KHACHHANG";
            DSREPORT.DataSource = kn.LayDuLieu(sql);
            DSREPORT.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            // SQL để chèn dữ liệu
            string sql1 = "INSERT INTO NOTIFICATION (CHITIETTHONGBAO) VALUES (@CHITIETTHONGBAO)";

            // Tạo tham số SQL để tránh lỗi SQL Injection
            SqlParameter[] parameters = {
        new SqlParameter("@CHITIETTHONGBAO", "CANH BAO")
              };

            // Gọi phương thức ThucThiLenh để thực thi câu lệnh
            try
            {
                // Kiểm tra nếu người dùng nhấn "OK" (trả về true từ JavaScript)
                if (Request.Form["__EVENTTARGET"] == "Button1")
                {
                    int rowsAffected = kn.ThucThiLenh(sql1, parameters);

                    // Kiểm tra số dòng bị ảnh hưởng
                    if (rowsAffected > 0)
                    {
                        Response.Write("Thông báo đã được chèn thành công!");
                    }
                    else
                    {
                        Response.Write("Không có thay đổi nào được thực hiện.");
                    }
                }
            }
            catch (Exception ex)
            {
                // Xử lý lỗi
                Response.Write("Có lỗi xảy ra: " + ex.Message);
            }

        }
    }
}
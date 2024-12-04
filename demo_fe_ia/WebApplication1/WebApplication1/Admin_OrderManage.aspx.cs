using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Admin_OrderManage : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\git_MainV02\\LY_NAM-SPM-\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;

            string sql = "SELECT * FROM ORDERDETAIL";
            dsOrder.DataSource = kn.LayDuLieu(sql);
            dsOrder.DataBind();

            if (Request.QueryString["ORDERID"] != null)
            {
                int ORDERID;
                if (int.TryParse(Request.QueryString["ORDERID"], out ORDERID))
                {
                    LoadDuLieuOrder(ORDERID);
                }
                else
                {
                    lblMessage.Text = "Invalid ID format!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = txtSearch.Text.Trim();
            if (!string.IsNullOrEmpty(keyword))
            {
                string query = "SELECT * FROM ORDERDETAIL WHERE ORDERID LIKE @keyword OR TENNGUOIDUNG LIKE @keyword";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@keyword", "%" + keyword + "%");

                        SqlDataReader reader = cmd.ExecuteReader();
                        DataTable dt = new DataTable();
                        dt.Load(reader);

                        if (dt.Rows.Count > 0)
                        {
                            dsOrder.DataSource = dt;
                            dsOrder.DataBind();
                        }
                        else
                        {
                            lblMessage.Text = "No record found.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            dsOrder.DataSource = null;
                            dsOrder.DataBind();
                        }
                    }
                }
            }
            else
            {
                lblMessage.Text = "Please enter a name to search.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
        private void LoadDuLieuOrder(int ORDERID)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\git_MainV02\\LY_NAM-SPM-\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT ORDERID, TENSANPHAM, TENNGUOIDUNG, DIACHI, SDT, GIASANPHAM, NGAYDATHANG, ORDERSTATUS FROM ORDERDETAIL WHERE ORDERID = @ORDERID";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@ORDERID", ORDERID);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    // Gán dữ liệu từ database vào các TextBox
                    txtId.Value = reader["ORDERID"].ToString();
                    txtName.Value = reader["TENNGUOIDUNG"].ToString();
                    txtSdt.Value = reader["SDT"].ToString();
                    txtTensanpham.Value = reader["TENSANPHAM"].ToString();
                    txtGia.Value = reader["GIASANPHAM"].ToString();
                    txtDiachi.Value = reader["DIACHI"].ToString();
                    txtNgaygiao.Value = Convert.ToDateTime(reader["NGAYDATHANG"]).ToString("yyyy-MM-dd");
                    txtStatus.Value = reader["ORDERSTATUS"].ToString();
                }
            }
        }

        protected void btnDetail_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "View Detail")
            {
                try
                {
                    int id = Convert.ToInt32(e.CommandArgument);

                    if (id > 0)
                    {
                        LoadDuLieuOrder(id);
                        lblMessage.Text = "User data loaded for editing.";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        lblMessage.Text = "Invalid user ID!";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}
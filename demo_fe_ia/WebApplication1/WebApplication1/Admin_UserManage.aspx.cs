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
    public partial class Admin_UserManage : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\CMU-IS-432_MAI-AM-HOA-HONG\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserManage(); // Nạp danh sách người dùng

                // Kiểm tra QueryString
                if (Request.QueryString["IDKHACHHANG"] != null)
                {
                    int IDKHACHHANG;
                    if (int.TryParse(Request.QueryString["IDKHACHHANG"], out IDKHACHHANG))
                    {
                        LoadEmployeeData(IDKHACHHANG); // Nạp dữ liệu người dùng vào form
                    }
                    else
                    {
                        lblMessage.Text = "Invalid ID format!";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }

        }

        private void LoadUserManage()
        {
            string sql = "SELECT * FROM KHACHHANG";
            dsUser.DataSource = kn.LayDuLieu(sql);
            dsUser.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = TextBox1.Text.Trim();

            if (!string.IsNullOrEmpty(keyword))
            {
                string query = "SELECT * FROM KHACHHANG WHERE IDKHACHHANG LIKE @keyword OR TENDANGNHAP LIKE @keyword";

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
                            dsUser.DataSource = dt;
                            dsUser.DataBind();
                        }
                        else
                        {
                            lblMessage.Text = "No record found.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            dsUser.DataSource = null;
                            dsUser.DataBind();
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

        protected void btnXoa_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int id = Convert.ToInt32(e.CommandArgument);

                    if (id > 0)
                    {
                        string deleteSql = "DELETE FROM KHACHHANG WHERE IDKHACHHANG = @IDKHACHHANG";

                        SqlParameter[] parameters = {
                            new SqlParameter("@IDKHACHHANG", SqlDbType.Int) { Value = id }
                        };

                        int rowsAffected = kn.ThucThiLenh(deleteSql, parameters);

                        if (rowsAffected > 0)
                        {
                            LoadUserManage();
                            lblMessage.Text = "User deleted successfully!";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            lblMessage.Text = "User not found or failed to delete.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
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
        private void LoadEmployeeData(int IDKHACHHANG)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\CMU-IS-432_MAI-AM-HOA-HONG\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT IDKHACHHANG, TENDANGNHAP, EMAIL, MATKHAU, SDT, DIACHI, NGAYTHAMGIA, OPERATINGSTATUS FROM KHACHHANG WHERE IDKHACHHANG = @IDKHACHHANG";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@IDKHACHHANG", IDKHACHHANG);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    // Gán dữ liệu từ database vào các TextBox
                    txtId.Value = reader["IDKHACHHANG"].ToString();
                    txtName.Value = reader["TENDANGNHAP"].ToString();
                    txtEmail.Value = reader["EMAIL"].ToString();
                    txtPassword.Value = reader["MATKHAU"].ToString();
                    txtSdt.Value = reader["SDT"].ToString();
                    txtVitri.Value = reader["DIACHI"].ToString();
                    txtDate.Value = Convert.ToDateTime(reader["NGAYTHAMGIA"]).ToString("yyyy-MM-dd");
                    txtStatus.Value = reader["OPERATINGSTATUS"].ToString();
                }
            }
        }

        protected void btnEdit_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                try
                {
                    int id = Convert.ToInt32(e.CommandArgument);

                    if (id > 0)
                    {
                        LoadEmployeeData(id);
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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["IDKHACHHANG"] != null)
                {
                    int id;
                    if (int.TryParse(Request.QueryString["IDKHACHHANG"], out id))
                    {
                        // Câu lệnh SQL UPDATE
                        string updateSql = "UPDATE KHACHHANG SET IDKHACHHANG = @IDKHACHHANG,TENDANGNHAP = @TENDANGNHAP, EMAIL = @EMAIL, MATKHAU = @MATKHAU, SDT = @SDT, DIACHI = @DIACHI, NGAYTHAMGIA = @NGAYTHAMGIA, OPERATINGSTATUS = @OPERATINGSTATUS WHERE IDKHACHHANG = @IDKHACHHANG";

                        SqlParameter[] parameters = {
                    new SqlParameter("@IDKHACHHANG", txtName.Value.Trim()),
                    new SqlParameter("@TENDANGNHAP", txtName.Value.Trim()),
                    new SqlParameter("@EMAIL", txtEmail.Value.Trim()),
                    new SqlParameter("@MATKHAU", txtPassword.Value.Trim()),
                    new SqlParameter("@SDT", txtSdt.Value.Trim()),
                    new SqlParameter("@DIACHI", txtVitri.Value.Trim()),
                    new SqlParameter("@NGAYTHAMGIA", DateTime.Parse(txtDate.Value)),
                    new SqlParameter("@OPERATINGSTATUS", txtStatus.Value.Trim()),
                    new SqlParameter("@IDKHACHHANG", id)
                };

                        int rowsAffected = kn.ThucThiLenh(updateSql, parameters);

                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "User updated successfully!";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            LoadUserManage(); // Làm mới danh sách người dùng
                        }
                        else
                        {
                            lblMessage.Text = "Update failed. Please try again.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Invalid ID!";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblMessage.Text = "No ID provided!";
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
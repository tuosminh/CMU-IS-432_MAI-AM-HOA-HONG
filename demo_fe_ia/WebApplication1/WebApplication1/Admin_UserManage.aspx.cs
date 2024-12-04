using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace WebApplication1
{
    public partial class Admin_UserManage : System.Web.UI.Page
    {
       
            private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\git_MainV02\\LY_NAM-SPM-\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";
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
                else {
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
                            // Lưu thông tin người dùng vào bảng DeletedUsers trước khi xóa
                            string insertSql = "INSERT INTO DeletedUsers (IDKHACHHANG, TENDANGNHAP, EMAIL, AVTDAIDIEN, AVTBIA, GTBANTHAN, DIACHI, GIOITINH, TUOI, SLFL, NGAYTHAMGIA, ROLE, OPERATINGSTATUS, SDT) " +
                                               "SELECT IDKHACHHANG, TENDANGNHAP, EMAIL, AVTDAIDIEN, AVTBIA, GTBANTHAN, DIACHI, GIOITINH, TUOI, SLFL, NGAYTHAMGIA, ROLE, OPERATINGSTATUS, SDT " +
                                               "FROM KHACHHANG WHERE IDKHACHHANG = @IDKHACHHANG";

                            SqlParameter[] insertParameters = {
                    new SqlParameter("@IDKHACHHANG", SqlDbType.Int) { Value = id }
                };

                            int rowsInserted = kn.ThucThiLenh(insertSql, insertParameters);

                            if (rowsInserted > 0)
                            {
                                // Sau khi lưu vào bảng DeletedUsers, tiến hành xóa người dùng khỏi bảng KHACHHANG
                                string deleteSql = "DELETE FROM KHACHHANG WHERE IDKHACHHANG = @IDKHACHHANG";

                                SqlParameter[] deleteParameters = {
                        new SqlParameter("@IDKHACHHANG", SqlDbType.Int) { Value = id }
                    };

                                int rowsAffected = kn.ThucThiLenh(deleteSql, deleteParameters);

                                if (rowsAffected > 0)
                                {
                                    lblMessage.Text = "Đã xóa thành công!";
                                    lblMessage.ForeColor = System.Drawing.Color.Green;
                                    LoadUserManage(); // Cập nhật lại danh sách người dùng
                                }
                                else
                                {
                                    lblMessage.Text = "Xóa không thành công!";
                                    lblMessage.ForeColor = System.Drawing.Color.Red;
                                }
                            }
                            else
                            {
                                lblMessage.Text = "Lưu thông tin xóa không thành công!";
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                        else
                        {
                            lblMessage.Text = "ID không hợp lệ!";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "Lỗi: " + ex.Message;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }

            private void LoadEmployeeData(int IDKHACHHANG)
            {
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\git_MainV02\\LY_NAM-SPM-\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";

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

            //protected void btnSave_Click(object sender, EventArgs e)
            //{
            //    try
            //    {
            //        // Kiểm tra xem có IDKHACHHANG trong query string không
            //        int id = -1;/-strong/-heart:>:o:-((:-h //        // Kiểm tra nếu có IDKHACHHANG trong query string và ID hợp lệ
            //        if (Request.QueryString["IDKHACHHANG"] != null && int.TryParse(Request.QueryString["IDKHACHHANG"], out id))
            //        {
            //            // Nếu có ID hợp lệ, thực hiện câu lệnh UPDATE
            //            string updateSql = "UPDATE KHACHHANG SET TENDANGNHAP = @TENDANGNHAP, EMAIL = @EMAIL, MATKHAU = @MATKHAU, SDT = @SDT, DIACHI = @DIACHI, NGAYTHAMGIA = @NGAYTHAMGIA, OPERATINGSTATUS = @OPERATINGSTATUS WHERE IDKHACHHANG = @IDKHACHHANG";

            //            SqlParameter[] parameters = {
            //        new SqlParameter("@IDKHACHHANG", id),  // Dùng ID từ query string
            //        new SqlParameter("@TENDANGNHAP", txtName.Value.Trim()),
            //        new SqlParameter("@EMAIL", txtEmail.Value.Trim()),
            //        new SqlParameter("@MATKHAU", txtPassword.Value.Trim()),
            //        new SqlParameter("@SDT", txtSdt.Value.Trim()),
            //        new SqlParameter("@DIACHI", txtVitri.Value.Trim()),
            //        new SqlParameter("@NGAYTHAMGIA", DateTime.Parse(txtDate.Value)),
            //        new SqlParameter("@OPERATINGSTATUS", txtStatus.Value.Trim())
            //    };

            //            int rowsAffected = kn.ThucThiLenh(updateSql, parameters);

            //            if (rowsAffected > 0)
            //            {
            //                lblMessage.Text = "User updated successfully!";
            //                lblMessage.ForeColor = System.Drawing.Color.Green;
            //                LoadUserManage(); // Làm mới danh sách người dùng
            //            }
            //            else
            //            {
            //                lblMessage.Text = "Update failed. Please try again.";
            //                lblMessage.ForeColor = System.Drawing.Color.Red;
            //            }
            //        }
            //        else
            //        {
            //            // Nếu không có ID hoặc ID không hợp lệ, thực hiện thao tác thêm mới người dùng
            //            string insertSql = "INSERT INTO KHACHHANG (TENDANGNHAP, EMAIL, MATKHAU, SDT, DIACHI, NGAYTHAMGIA, OPERATINGSTATUS) " +
            //                               "VALUES (@TENDANGNHAP, @EMAIL, @MATKHAU, @SDT, @DIACHI, @NGAYTHAMGIA, @OPERATINGSTATUS)";

            //            SqlParameter[] parameters = {
            //        new SqlParameter("@TENDANGNHAP", txtName.Value.Trim()),
            //        new SqlParameter("@EMAIL", txtEmail.Value.Trim()),
            //        new SqlParameter("@MATKHAU", txtPassword.Value.Trim()),
            //        new SqlParameter("@SDT", txtSdt.Value.Trim()),
            //        new SqlParameter("@DIACHI", txtVitri.Value.Trim()),
            //        new SqlParameter("@NGAYTHAMGIA", DateTime.Parse(txtDate.Value)),
            //        new SqlParameter("@OPERATINGSTATUS", txtStatus.Value.Trim())
            //    };

            //            int rowsInserted = kn.ThucThiLenh(insertSql, parameters);/-strong/-heart:>:o:-((:-h //            if (rowsInserted > 0)
            //            {
            //                lblMessage.Text = "New user added successfully!";
            //                lblMessage.ForeColor = System.Drawing.Color.Green;
            //                LoadUserManage(); // Làm mới danh sách người dùng
            //            }
            //            else
            //            {
            //                lblMessage.Text = "Failed to add new user!";
            //                lblMessage.ForeColor = System.Drawing.Color.Red;
            //            }
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        lblMessage.Text = "Error: " + ex.Message;
            //        lblMessage.ForeColor = System.Drawing.Color.Red;
            //    }
            //}


            protected void btnUndo_Click(object sender, EventArgs e)
            {
                try
                {
                    string sql = "SELECT TOP 1 * FROM DeletedUsers ORDER BY IDKHACHHANG DESC"; // Lấy người dùng vừa bị xóa gần nhất

                    DataTable dt = kn.LayDuLieu(sql);

                    if (dt.Rows.Count > 0)
                    {
                        DataRow deletedUser = dt.Rows[0];

                        string identityInsertOn = "SET IDENTITY_INSERT KHACHHANG ON";
                        string identityInsertOff = "SET IDENTITY_INSERT KHACHHANG OFF";

                        string insertSql = "INSERT INTO KHACHHANG ( TENDANGNHAP, EMAIL, AVTDAIDIEN, AVTBIA, GTBANTHAN, DIACHI, GIOITINH, TUOI, SLFL, NGAYTHAMGIA, ROLE, OPERATINGSTATUS, SDT) " +
                                           "VALUES ( @TENDANGNHAP, @EMAIL, @AVTDAIDIEN, @AVTBIA, @GTBANTHAN, @DIACHI, @GIOITINH, @TUOI, @SLFL, @NGAYTHAMGIA, @ROLE, @OPERATINGSTATUS, @SDT)";

                        SqlParameter[] insertParameters = {
                new SqlParameter("@IDKHACHHANG", deletedUser["IDKHACHHANG"]),
                new SqlParameter("@TENDANGNHAP", deletedUser["TENDANGNHAP"]),
                new SqlParameter("@EMAIL", deletedUser["EMAIL"]),
                new SqlParameter("@AVTDAIDIEN", deletedUser["AVTDAIDIEN"]),
                new SqlParameter("@AVTBIA", deletedUser["AVTBIA"]),
                new SqlParameter("@GTBANTHAN", deletedUser["GTBANTHAN"]),
                new SqlParameter("@DIACHI", deletedUser["DIACHI"]),
                new SqlParameter("@GIOITINH", deletedUser["GIOITINH"]),
                new SqlParameter("@TUOI", deletedUser["TUOI"]),
                new SqlParameter("@SLFL", deletedUser["SLFL"]),
                new SqlParameter("@NGAYTHAMGIA", deletedUser["NGAYTHAMGIA"]),
                new SqlParameter("@ROLE", deletedUser["ROLE"]),
                new SqlParameter("@OPERATINGSTATUS", deletedUser["OPERATINGSTATUS"]),
                new SqlParameter("@SDT", deletedUser["SDT"])
            };

                        int rowsInserted = kn.ThucThiLenh(insertSql, insertParameters);

                        if (rowsInserted > 0)
                        {// Sau khi khôi phục, xóa người dùng khỏi bảng DeletedUsers
                        string deleteFromDeletedUsersSql = "DELETE FROM DeletedUsers WHERE IDKHACHHANG = @IDKHACHHANG";
                            SqlParameter[] deleteParameters = new SqlParameter[] { new SqlParameter("@IDKHACHHANG", deletedUser["IDKHACHHANG"]) };
                            kn.ThucThiLenh(deleteFromDeletedUsersSql, deleteParameters);

                            lblMessage.Text = "Hoàn tác xóa thành công!";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            LoadUserManage(); // Cập nhật lại danh sách người dùng
                        }
                        else
                        {
                            lblMessage.Text = "Không thể khôi phục người dùng!";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Không có người dùng nào để hoàn tác!";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Lỗi: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }

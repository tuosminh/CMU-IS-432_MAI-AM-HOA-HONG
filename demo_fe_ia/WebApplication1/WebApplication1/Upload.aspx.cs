using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
        }

        protected void btndang_Click(object sender, EventArgs e)
        {
            // Lấy thông tin từ các TextBox
            string uploadTitle = txttitle.Text.Trim(); // Tiêu đề
            string description = txtmota.Text.Trim();  // Mô tả
            string categories = txtLoai.Text.Trim();   // Danh mục

            // Kiểm tra xem FileUpload1 đã được chọn chưa (ảnh nghệ thuật)
            if (FileUpload1.HasFile)
            {
                try
                {
                    // Lấy tên và dữ liệu nhị phân của file ảnh nghệ thuật
                    string artworkFileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    byte[] artworkFileData = FileUpload1.FileBytes;
                    string fileArt = Path.GetFileName(FileUpload2.PostedFile.FileName);
                    byte[] fileArtData = FileUpload2.FileBytes;
                    string fileBanQuyenName = Path.GetFileName(FileUpload3.PostedFile.FileName);
                    byte[] fileBanQuyenData = FileUpload3.FileBytes;


                    // Kết nối tới cơ sở dữ liệu và thực hiện lệnh INSERT
                    string sql = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\ADMIN\\OneDrive\\Documents\\GitHub\\CMU-IS-432_MAI-AM-HOA-HONG\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";
                    using (SqlConnection conn = new SqlConnection(sql))
                    {
                        conn.Open();

                        // Câu lệnh SQL để chèn dữ liệu vào bảng
                        string query = "INSERT INTO BAIDANGUP  (TIEUDE, MOTA, LOAIBAIVIET, ANHBAIDANG, FILEART, FILEBANQUYEN) " +
                                       "VALUES (@TIEUDE, @MOTA, @LOAIBAIVIET, @ANHBAIDANG, @FILEART, @FILEBANQUYEN)";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            // Thêm các tham số vào câu lệnh SQL
                            cmd.Parameters.AddWithValue("@TIEUDE", uploadTitle);
                            cmd.Parameters.AddWithValue("@MOTA", description);
                            cmd.Parameters.AddWithValue("@LOAIBAIVIET", categories);
                            cmd.Parameters.AddWithValue("@ANHBAIDANG", artworkFileData);  // Lưu dữ liệu nhị phân của tệp ảnh
                            cmd.Parameters.AddWithValue("@FILEART", fileArtData);
                            cmd.Parameters.AddWithValue("@FILEBANQUYEN", fileBanQuyenData);
                            // Thực thi câu lệnh SQL
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Hiển thị thông báo thành công
                    lblMessage.Text = "Artwork uploaded and post saved successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                catch (Exception ex)
                {
                    // Xử lý lỗi nếu có
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                // Thông báo nếu người dùng chưa chọn tệp ảnh
                lblMessage.Text = "Please select an image to upload.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
        public class ConvertBinaryToText
        {
            public string ConvertFileToBase64(string artworkFileName)
            {
                // Đọc tệp nhị phân từ file
                byte[] artworkFileData = File.ReadAllBytes(artworkFileName);

                // Mã hóa dữ liệu nhị phân thành chuỗi Base64
                string base64String = Convert.ToBase64String(artworkFileData);

                return base64String;
            }
        }
        public void SaveImageToDatabase(string base64String, string uploadTitle)
        {
            string sqlConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\ADMIN\\OneDrive\\Documents\\GitHub\\CMU-IS-432_MAI-AM-HOA-HONG\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(sqlConnectionString))
            {
                conn.Open();

                string query = "INSERT INTO BAIDANGUP ( ANHBAIDANG) VALUES (@ANHBAIDANG)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ANHBAIDANG", base64String); // Lưu chuỗi Base64 vào cơ sở dữ liệu
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
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
    public partial class Melody : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMusicData();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ulname = txtname.Text.Trim();
            string ultentacgia = txttentacgia.Text.Trim();

            if (FileUpload1.HasFile && FileUpload2.HasFile)
            {
                try
                {
                    // Lấy dữ liệu nhị phân của file ảnh và file nhạc
                    byte[] imageBytes = FileUpload2.FileBytes;
                    byte[] audioBytes = FileUpload1.FileBytes;

                    string sql = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\git_MainV02\\LY_NAM-SPM-\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";

                    using (SqlConnection conn = new SqlConnection(sql))
                    {
                        conn.Open();

                        string query = "INSERT INTO newmusic (TENNHAC, TENTACGIA, ANHBAIDANG, FILEMP3, DATE) " +
                                       "VALUES (@TENNHAC, @TENTACGIA, @ANHBAIDANG, @FILEMP3, @DATE)";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@TENNHAC", ulname);
                            cmd.Parameters.AddWithValue("@TENTACGIA", ultentacgia);
                            cmd.Parameters.AddWithValue("@ANHBAIDANG", imageBytes);
                            cmd.Parameters.AddWithValue("@FILEMP3", audioBytes);
                            cmd.Parameters.AddWithValue("@DATE", DateTime.Now);

                            cmd.ExecuteNonQuery();
                        }
                    }

                    lblMessage.Text = "File uploaded and saved successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                lblMessage.Text = "Please select both an image and an audio file.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

            LoadMusicData();
        }

        private void LoadMusicData()
        {
            string sql = "SELECT * FROM newmusic";
            ds_music.DataSource = kn.LayDuLieuMS(sql);
            ds_music.DataBind();
        }
    }
}
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
    public partial class Search : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\git_MainV02\\LY_NAM-SPM-\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "SELECT * FROM SEARCH";
                DB1.DataSource = kn.LayDuLieu(sql);
                DB1.DataBind();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            if (!string.IsNullOrEmpty(name))
            {
                string query = "SELECT * FROM SANPHAM WHERE TENSANPHAM LIKE @NAME";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@NAME", "%" + name + "%");

                        SqlDataReader reader = cmd.ExecuteReader();
                        DataTable dt = new DataTable();
                        dt.Load(reader);

                        if (dt.Rows.Count > 0)
                        {
                            SearchResultsRepeater.DataSource = dt;
                            SearchResultsRepeater.DataBind();
                            Label1.Text = "";
                        }
                        else
                        {
                            Label1.Text = "No records found.";
                            Label1.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
            else
            {
                Label1.Text = "Please enter a name to search.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
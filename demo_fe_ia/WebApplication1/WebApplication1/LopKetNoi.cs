using System;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public class LopKetNoi
    {
        // Biến kết nối SQL
        private SqlConnection cn;

        // Chuỗi kết nối
        private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\git_MainV02\LY_NAM-SPM-\demo_fe_ia\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True";

        // Phương thức mở kết nối
        private void MoKetNoi()
        {
            if (cn == null)
            {
                cn = new SqlConnection(connectionString);
            }
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
        }

        // Phương thức đóng kết nối
        private void DongKetNoi()
        {
            if (cn != null && cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
        }

        // Phương thức lấy dữ liệu dạng DataTable (không có tham số)
        public DataTable LayDuLieu(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                MoKetNoi();
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw new Exception("Error fetching data: " + ex.Message);
            }
            finally
            {
                DongKetNoi();
            }
            return dt;
        }

        // Phương thức lấy dữ liệu dạng DataTable (có tham số)
        public DataTable LayDuLieu(string sql, SqlParameter[] parameters)
        {
            DataTable dt = new DataTable();
            try
            {
                MoKetNoi();
                using (SqlCommand cmd = new SqlCommand(sql, cn))
                {
                    cmd.Parameters.AddRange(parameters);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error fetching data with parameters: " + ex.Message);
            }
            finally
            {
                DongKetNoi();
            }
            return dt;
        }

        // Phương thức cập nhật dữ liệu (không có tham số)
        public int CapNhatDuLieu(string sql)
        {
            int kq = 0;
            try
            {
                MoKetNoi();
                using (SqlCommand cmd = new SqlCommand(sql, cn))
                {
                    kq = cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error updating data: " + ex.Message);
            }
            finally
            {
                DongKetNoi();
            }
            return kq;
        }

        // Phương thức thực thi lệnh SQL (có tham số)
        public int ThucThiLenh(string sql, SqlParameter[] parameters)
        {
            int rowsAffected = 0;
            try
            {
                MoKetNoi();
                using (SqlCommand cmd = new SqlCommand(sql, cn))
                {
                    cmd.Parameters.AddRange(parameters);
                    rowsAffected = cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error executing command: " + ex.Message);
            }
            finally
            {
                DongKetNoi();
            }
            return rowsAffected;
        }

        // Phương thức lấy dữ liệu dạng SqlDataReader (có tham số)
        public SqlDataReader LayDuLieuReader(string sql, SqlParameter[] parameters)
        {
            SqlDataReader reader;
            try
            {
                MoKetNoi();
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddRange(parameters);
                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection); // Đảm bảo đóng kết nối khi reader bị dispose
            }
            catch (Exception ex)
            {
                throw new Exception("Error fetching data reader: " + ex.Message);
            }
            return reader;
        }

        // Phương thức thực thi lệnh cảnh báo (chỉ là một alias của ThucThiLenh)
        public void ThucThiLenhCanhBao(string sql, SqlParameter[] parameters)
        {
            try
            {
                ThucThiLenh(sql, parameters);
            }
            catch (Exception ex)
            {
                throw new Exception("Error executing warning command: " + ex.Message);
            }
        }

        public DataTable LayDuLieuMS(string sql)
        {
            DataTable dataTable = new DataTable();
            try
            {
                MoKetNoi();
                using (SqlDataAdapter adapter = new SqlDataAdapter(sql, cn))
                {
                    adapter.Fill(dataTable);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
            finally
            {
                DongKetNoi();
            }
            return dataTable;
        }
    }
}

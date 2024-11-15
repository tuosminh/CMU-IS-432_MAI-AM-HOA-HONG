using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    
    public partial class Profile : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            String SQL = "Select * from BAIDANG";
            String sql = "Select * from KHACHHANG";
            string sqlbaidangup = "SELECT * FROM BAIDANGUP ORDER BY IDBAIDANG DESC";

            // Lấy dữ liệu cho DataList
            var baidangData = kn.LayDuLieu(SQL); // Lấy dữ liệu từ bảng BAIDANG
            DSBAIDANG.DataSource = baidangData;
            DSBAIDANG.DataBind();

            var baidangDataup = kn.LayDuLieu(sqlbaidangup); // Lấy dữ liệu từ bảng BAIDANGUP
            DS_BAIDANGUP.DataSource = baidangDataup;
            DS_BAIDANGUP.DataBind();



            DS_FOLLOWING.DataSource = kn.LayDuLieu(sql);
            DS_FOLLOWING.DataBind();
            DS_FOLLOWER.DataSource = kn.LayDuLieu(sql);
            DS_FOLLOWER.DataBind();
        }

        




        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class OrderDetails : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            String sql2 = "";
            string btn12 = Request.QueryString["bt"] + "";
            if (btn12 == "")
            {
                sql2 = "Select * from SANPHAM";
            }
            else sql2 = "Select * from SANPHAM WHERE IDSANPHAM=" + btn12;
            //  string sqltong = "SELECT (GIA + GIASHIP) AS TONGTIEN FROM [dbo].[ShoppingCart];";
            DSSP.DataSource = kn.LayDuLieu(sql2);
            // DSSP.DataSource=kn.CapNhatDuLieu(sqltong);
            DSSP.DataBind();
            //string sql = "Select * from ORDERDETAIL" +
            //    "WHERE Id =btn; ";
            //DSSP.DataSource = kn.LayDuLieu(sql);
            //DSSP.DataBind();
        }


    }


}

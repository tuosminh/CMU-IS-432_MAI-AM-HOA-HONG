using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Photos : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string SQL = "Select * from QUANGCAO";
            DSQUANGCAO.DataSource = kn.LayDuLieu(SQL);
            DSQUANGCAO.DataBind();
            string SQL1 = "Select * from TACPHAM";
            DSTACPHAM.DataSource = kn.LayDuLieu(SQL1);
            DSTACPHAM.DataBind();
        }
    }
}
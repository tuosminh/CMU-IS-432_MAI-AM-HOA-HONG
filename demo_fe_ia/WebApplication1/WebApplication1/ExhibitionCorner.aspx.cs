using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ExhibitionCorner : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql1 = "Select * from REALTIMEARTHUB";
            DSARTHUB.DataSource = kn.LayDuLieu(sql1);
            DSARTHUB.DataBind();
            string sql2 = "Select * from REALTIMEAUCTIONS";
            DSAUCTIONS.DataSource = kn.LayDuLieu(sql2);
            DSAUCTIONS.DataBind();
            string sql3 = "Select * from TOPMUSIC";
            DSTOPMUSIC.DataSource = kn.LayDuLieu(sql3);
            DSTOPMUSIC.DataBind();
            string sql4 = "Select * from TOPPAINTING";
            DSTOPPAITING.DataSource = kn.LayDuLieu(sql4);
            DSTOPPAITING.DataBind();
        }
    }
}
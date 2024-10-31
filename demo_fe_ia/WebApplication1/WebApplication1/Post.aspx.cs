using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack) return;
            String SQL = "Select * from BAIDANG";
            DSBAIDANG.DataSource=kn.LayDuLieu(SQL);
            DSBAIDANG.DataBind();
        }
    }
}
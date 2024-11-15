using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Collection : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string SQL1 = "Select * from IMGCOLLECTION";
            DSIMGCOLLECTION.DataSource = kn.LayDuLieu(SQL1);
            DSIMGCOLLECTION.DataBind();
            string SQL2 = "Select * from AUDIOCOLLECTION";
            DSAUDIOCOLLECTION.DataSource = kn.LayDuLieu(SQL2);
            DSAUDIOCOLLECTION.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}
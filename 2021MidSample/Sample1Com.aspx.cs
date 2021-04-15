using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2021MidSample
{
    public partial class Sample1Com : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string inst = "";
            if (Request.Form.Get("cb_read") != null)
            {
                inst += "看書<br />";
            }
            if (Request.Form.Get("cb_game") != null)
            {
                inst += "打電動<br />";
            }
            if (Request.Form.Get("cb_other") != null)
            {
                inst += "其他<br />";
            }
            lb_Res.Text = Request.Form.Get("tb_Acc")+"<br />"+ Request.Form.Get("tb_Pass")+"<br />" + inst;
        }
    }
}
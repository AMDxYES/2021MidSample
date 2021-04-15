using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2021MidSample
{
	public partial class Sample2 : System.Web.UI.Page
	{
        string[] north = new string[] { "基隆", "台北", "新北" };
        string[] central = new string[] { "苗栗", "台中", "南投" };
        protected void Page_Load(object sender, EventArgs e)
		{
            foreach (string i in north)
            {
                ddl_Place.Items.Add(i);
            }
        }
        string Des = "";
        protected void ddl_Area_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_Place.Items.Clear();
            if (ddl_Area.Items[0].Selected)
            {
                foreach (string i in north)
                {
                    ddl_Place.Items.Add(i);
                }
            }
            else
            {
                foreach (string i in central)
                {
                    ddl_Place.Items.Add(i);
                }
            }
        }

        protected void rbl_Res_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbl_Res.Items[0].Selected)
            {
                tb_Des.Visible = false;
            }
            else
            {
                tb_Des.Visible = true;
            }
        }

        protected void btn_Sub_Click(object sender, EventArgs e)
        {
            if (tb_Des.Visible)
            {
                Des = tb_Des.Text;
            }
            else
            {
                Des = "";
            }
            lb_Msg.Visible = true;
            lb_Msg.Text = ddl_Area.SelectedValue +"<br />"+ddl_Place.SelectedValue+"<br />" +tb_Name.Text+"<br />"+Des;
        }
    }
}
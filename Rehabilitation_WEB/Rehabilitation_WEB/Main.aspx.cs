using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rehabilitation_WEB
{
    public partial class Main : System.Web.UI.Page
    {
        protected Boolean login = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("Sign_in.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            if (login == false)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERT", "alert('訊息');", true);
            }
            else
            {                
                Response.Redirect("Sign_in.aspx");
            }
        }



        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('第四種方式，有白屏！')</script>");
        }
    }           
}
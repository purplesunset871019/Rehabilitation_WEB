using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rehabilitation_WEB
{
    public partial class Sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String account = TextBox1.Text;
            string password = TextBox2.Text;

            if (account=="123" && password=="456")
            {
                Response.Redirect("Doctor_Default.aspx");
            }
            else if(account.Length == 0 || password.Length == 0){
                Response.Write("<script>alert('請輸入帳號密碼')</script>");
            }
            else {
                Response.Write("<script>alert('帳號密碼錯誤')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
        
    }
}
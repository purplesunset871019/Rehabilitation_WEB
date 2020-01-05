using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Rehabilitation_WEB
{
    public partial class Sign_in : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet da = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.ConnectionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";
            con.Open();

            cmd.CommandText = "select * from dbo.Sign_in where account='" + accounttxt.Text + "'and password='" + passwordtxt.Text + "'";
               cmd.Connection = con;
               sda.SelectCommand = cmd;
              sda.Fill(da, "Sign_in");

              cmd2.CommandText = "select Signin_Record from dbo.Sign_Record where EmployeeNumber ='" + accounttxt.Text + "' ";
              cmd2.Connection = con;
               SqlDataReader rd = cmd2.ExecuteReader();
            
            if (da.Tables[0].Rows.Count > 0)
                {

                while (rd.Read())
                {
                    Response.Write(rd[0].ToString());
                    if (rd[0].ToString() == "1")
                     {
                        Response.Write("<script>alert('登入成功')</script>");
                        Response.Redirect("Doctor_Default.aspx");
                    }
                    else
                    {
                        SqlConnection con2 = new SqlConnection();
                        con2.ConnectionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";
                        con2.Open();
                        SqlCommand cmd3 = con2.CreateCommand();
                        cmd3.CommandType = CommandType.Text;
                        cmd3.CommandText = "insert  into dbo.Sign_Record(Signin_Record, EmployeeNumber) values ('1', '" + accounttxt.Text + "') ";
                        cmd3.ExecuteNonQuery();
                        con2.Close();
                        Response.Write("<script>alert('登入成功')</script>");
                        Response.Redirect("Set_up.aspx");
                    }
                }


            }
            else
            { int a = da.Tables[0].Rows.Count;
                Response.Write("<script>alert('帳號密碼錯誤')</script>");

            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
        
    }
}

//  string ConnectionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";
//  SqlConnection conn = new SqlConnection(ConnectionString);
//  conn.Open();
//   string checkuser = "select* from dbo.Rehabilitation where EmployeeNumber = '" + accounttxt.Text + "'and EmployeeCode = '" + passwordtxt.Text + "'";
//  SqlCommand com = new SqlCommand(checkuser, conn);
//  int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
//  conn.Close();
//  if(temp == 1)
//   {
//      conn.Open();
//      string checkPasswordQuery = ""
//  }

// Session["name"] = accounttxt.Text;
//    Response.Redirect("Set_up.aspx");

//   Response.Write(cmd.CommandText + "<br>" + cmd.Connection + "<br>" + sda.SelectCommand + "<br>" + da.Tables[0] + "<br>" + Ordinal_NO);
//Response.Write("<script>alert('登入成功')</script>");
//Response.Redirect("Doctor_Default.aspx");

//   Response.Write("<script>alert('帳號密碼錯誤')</script>");

// SqlDataReader reader = cmd.ExecuteReader();
//   int Ordinal_NO = reader.GetOrdinal("RehabilitationWork");
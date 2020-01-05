using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rehabilitation_WEB
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmployeeNumber.Value = Session["name"].ToString();

            string connetionString;
            SqlConnection conn;

            connetionString = @"data source=localhost; initial catalog = LocalDB; user id = sa; password = 123";
            conn = new SqlConnection(connetionString);

            SqlCommand cmd;

            string sql = "Select EmployeeName, EmployeeJob from dbo.Rehabilitation where EmployeeNumber='" + this.EmployeeNumber.Value + "'";
            cmd = new SqlCommand(sql, conn);

            try
            {
                conn.Open();

                using (SqlDataReader read = cmd.ExecuteReader())
                {
                    while (read.Read())
                    {
                        this.Label1.Text = (read["EmployeeName"].ToString()) + "使用中";
                        this.Label2.Text = (read["EmployeeJob"].ToString());
                    }
                }
            }
            finally
            {
                conn.Close();
            }


        }

    }
}
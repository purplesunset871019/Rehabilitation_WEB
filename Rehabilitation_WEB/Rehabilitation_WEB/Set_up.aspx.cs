using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Rehabilitation_WEB
{
    public partial class Set_up : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Set_up_click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection conn;
            string username = Request["EmployeeName"];
            string Gender = Request["Gender"];
            string EmployeeJob = Request["EmployeeJob"];

            connetionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";

            conn = new SqlConnection(connetionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into test2 (EmployeeName,Gender,EmployeeJob) values('" + username + "','" + Gender + "','" + EmployeeJob + "')";
            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }
}
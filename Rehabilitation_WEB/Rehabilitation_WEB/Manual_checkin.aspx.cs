using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Rehabilitation_WEB
{
    public partial class Manual_checkin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection conn;
            string PatientNumber = Request["PatientNumber"];
            string PricingName = Request["PricingName"];

            connetionString = @"data source=localhost; initial catalog = LocalDB; user id = sa; password = 123";

            conn = new SqlConnection(connetionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"insert into  dbo.Manual_Checkin (PatientNumber, PricingName) values ('" + PatientNumber + "','" + PricingName + "')", conn);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
            //MessageBox.Show("Data Inserted");
            conn.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Rehabilitation_WEB
{
    public partial class Patient_check_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection conn;

            connetionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";

            conn = new SqlConnection(connetionString);

            conn.Open();

            //            Response.Write("Connection MAde");
            //            conn.Close();

            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select EmployeeName,Gender,EmployeeJob from dbo.Rehabilitation";

            command = new SqlCommand(sql, conn);

            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + dataReader.GetValue(2) + "</br>";
            }

            Response.Write(Output);
            dataReader.Close();
            //command.Dispose();
            //conn.Close();

            //SqlCommand command1;
            //SqlDataAdapter adapter = new SqlDataAdapter();
            //String sql = "";

            //sql = "Update LocalDB set EmployeeName="123" ;


            //command = new SqlCommand(sql, conn);

            //adapter.InsertCommand = new SqlCommand(sql, conn);
            //adapter.InsertCommand.ExecuteNonQuery;

            command.Dispose();
            conn.Close();
        }
    }
}
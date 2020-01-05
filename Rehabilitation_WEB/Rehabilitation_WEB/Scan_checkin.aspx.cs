using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Rehabilitation_WEB
{
    public partial class Scan_checkin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string connetionString;
            //SqlConnection conn;

            //connetionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";

            //conn = new SqlConnection(connetionString);

            //conn.Open();

            //SqlCommand command;
            //SqlDataReader dataReader;
            //String sql, Output = " ";
            //sql = "Select EmployeeName,Gender,EmployeeJob from dbo.Rehabilitation";

            //command = new SqlCommand(sql, conn);

            //dataReader = command.ExecuteReader();
            //while (dataReader.Read())
            //{
            //    Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + dataReader.GetValue(2) + "</br>";
            //}

            //Response.Write(Output);
            //dataReader.Close();
            

            //command.Dispose();
            //conn.Close();
            string connetionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";
            SqlConnection conn = new SqlConnection(connetionString);
            //   conn.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            conn.Open();

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Scan_take where Serial_number = '" + scantext + "' ";

            if (!IsPostBack)
            {
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {

                        ListItem item = new ListItem();
                        item.Text = sdr["Order_name"].ToString();
                        item.Value = sdr["Order_number"].ToString();
                        CheckBoxList1.Items.Add(item);

                    }
                }

            }

            conn.Close();

            
        }

        protected void Scan_checkin_save_click(object sender, EventArgs e)
        {

            string connetionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";
            SqlConnection conn = new SqlConnection(connetionString);
            //   conn.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            using (SqlCommand cmd = conn.CreateCommand())
            {
                cmd.CommandText = "INSERT INTO RecordTest (ExcuteTime,Barcode,PricingCode,PricingName,EmployeeNumber) VALUES(GETDATE(),'" + scantext + "',@Order_number,@Order_name,001)";
                cmd.Connection = conn;
                conn.Open();
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@Order_number", item.Value);
                        cmd.Parameters.AddWithValue("@Order_name", item.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                conn.Close();
            }



        }
    }
}

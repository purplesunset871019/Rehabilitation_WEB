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
        public int number;
        protected void Page_Load(object sender, EventArgs e)
        {
            EmployeeNumber.Text = Session["name"].ToString();
            //Session.Remove("name");
            if (!IsPostBack)
            {
                string connetionString;
                SqlConnection conn;
                number = 0;
                bool a = true;
                connetionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";

                conn = new SqlConnection(connetionString);

                SqlCommand cmd;

                string sql = "Select * from dbo.Rehabilitation where EmployeeNumber='" + this.EmployeeNumber.Text + "'";
                cmd = new SqlCommand(sql, conn);

                try
                {
                    conn.Open();
                    while (a)
                    {
                        using (SqlDataReader read = cmd.ExecuteReader())
                        {
                            while (read.Read())
                            {
                                if (number != 0)
                                {

                                    this.EmployeeName.Text = (read["EmployeeName"].ToString());
                                    this.EmployeeNumber.Text = (read["EmployeeNumber"].ToString());
                                    this.EmployeeJob.SelectedValue = (read["EmployeeJob"].ToString());
                                    a = false;
                                }
                                else
                                {
                                    this.EmployeeNumber.Text = (read["EmployeeNumber"].ToString());
                                    number = number + 1;
                                }

                            }
                        }
                    }
                }
                finally
                {
                    conn.Close();
                }
            }
        }

        protected void Set_up_click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection conn;

            connetionString = @"data source=localhost; initial catalog = LocalDB; user id = sa; password = 123";

            conn = new SqlConnection(connetionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update dbo.Rehabilitation SET EmployeeName='" + EmployeeName.Text + "', EmployeeJob='" + EmployeeJob.Text + "' where EmployeeNumber='" + this.EmployeeNumber.Text + "'", conn);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
            number = number + 1;
            Response.Write("<script>alert('修改成功')</script>");

            this.EmployeeName.Text = EmployeeName.Text;
            this.EmployeeJob.SelectedValue = EmployeeJob.Text;
            Session["job"] = EmployeeJob.Text;


        }

    }
}
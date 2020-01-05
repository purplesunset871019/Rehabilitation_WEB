using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rehabilitation_WEB
{
    public partial class Manual_checkin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                EmployeeJob.Value = Session["job"].ToString();
                //Session.Remove("name");

                string str = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";
                SqlConnection con = new SqlConnection(str);
                string com = "select EmployeeJob, PricingCode+' '+PricingName as 'PricingAll' from dbo.Works where EmployeeJob='" + this.EmployeeJob.Value + "'";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                Dropdownlist.DataSource = dt;
                Dropdownlist.DataBind();
                Dropdownlist.DataTextField = "PricingAll";
                Dropdownlist.DataValueField = "PricingAll";
                Dropdownlist.DataBind();
            }


        }

        protected void Manual_checkin_click(object sender, EventArgs e)
        {


            string connetionString;
            connetionString = @"data source=FRANK\SQLEXPRESS; initial catalog = LocalDB; user id = sa; password = 123";
            SqlConnection conn;

            string PatientNumber = Request["PatientNumber"];

            conn = new SqlConnection(connetionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand(@"insert into dbo.Manual_Checkin (PatientNumber, PricingAll) values ('" + PatientNumber + "','" + Dropdownlist.SelectedValue + "')", conn);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('新增成功')</script>");
            conn.Close();


        }
    }
}
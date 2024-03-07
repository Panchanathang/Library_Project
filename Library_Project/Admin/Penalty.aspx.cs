using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Library_Project.Admin
{
    public partial class Penalty : System.Web.UI.Page
    {
        SqlCommand cmd;
        DBConnect dbcon = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {
        //    if (Session["username"].ToString() == "" || Session["username"] == null)
        //    {
        //        Response.Redirect("~/signout.aspx");

        //    }
        //    else
        //    {
                if (!this.IsPostBack)
                {
                    BindGridData();
                }
        //    }
        }
        private void BindGridData()
        {
            cmd = new SqlCommand("sp_PenaltyDetails_forAdmin", dbcon.GetCon());
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            //cmd.Parameters.AddWithValue("@member_id", Session["mid"].ToString());
            GridView1.DataSource = dbcon.Load_Data(cmd);
            GridView1.DataBind();
        }
    }
}
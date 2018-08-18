using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Report : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Emp_id"] == null)
            {

            }
            else
            {
                string empid = Session["Emp_id"].ToString();
                string month = Session["month"].ToString();
                //string empid = Request.QueryString["Emp_id"].ToString();
                //string month = Request.QueryString["month"].ToString();
                cl.usepro("sp_salary_dtl", "'" + empid + "','" + month + "'");
                GridView1.DataSource = cl.ds;
                GridView1.DataBind();
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>javascript:print()</script>");
        Button2.Visible = false;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_salary_dtl : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        { 
        
        
        
        }
        else
        {
            string idd = Request.QueryString["id"].ToString();
            cl.read("disp_sal_dtl", "'" + idd + "'");
            DetailsView1.DataSource = cl.ds;
            DetailsView1.DataBind();
        
        
        
        }
    }
}
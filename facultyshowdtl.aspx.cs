using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_facultyshowdtl : System.Web.UI.Page
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
            cl.detail("facultyentry", "faculty_id", "'" + idd + "'", DetailsView1);
        }

    }
}
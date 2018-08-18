using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_classshowdtl : System.Web.UI.Page
{
    Class1 cl = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {


            }
            else
            {
                string idd=Request.QueryString["id"].ToString();
                cl.detail("Classentry", "class_id", "'" + idd + "'", DetailsView1);
            
            
            }
        
        
        }
    }
}
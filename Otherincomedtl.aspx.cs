using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Otherincomedtl : System.Web.UI.Page
{
    Class1 cl = new Class1();
    public int i;
    string RCid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == "")
        {


        }
        else
        {
            string idd = Request.QueryString["id"].ToString();
            cl.detail("other_payment", "fid", "'"+idd+"'", DetailsView1);
        
        
        }

    }
}
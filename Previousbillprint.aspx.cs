using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Previousbillprint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string c_date1 = TextBox2.Text;


        Response.Redirect("billprint.aspx?id=" + TextBox1.Text + " &idd1=" + c_date1 + "");

    }
}
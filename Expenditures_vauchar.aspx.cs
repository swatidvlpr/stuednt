using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Expenditures_vauchar : System.Web.UI.Page
{
    Class1 cl = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cl.detail("Expendituresdtl", "Voucher_no", "'"+TextBox1.Text+"'", DetailsView1);
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_basic_salary : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cl.usepro("req_name", "");
            DropDownList3.DataSource = cl.ds;
            DropDownList3.DataTextField = "Emp_Reg_ID";
            DropDownList3.DataValueField = "Emp_Reg_ID";
            DropDownList3.DataBind();
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cl.displaycond("Emp_Salary_Structure", "Emp_id", "'"+DropDownList3.SelectedItem.Text+"'", GridView1);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       CleartextBoxes(this);
        GridView1.DataSource = null;
        GridView1.DataBind();
    }


    public void CleartextBoxes(Control parent)
    {

        foreach (Control c in parent.Controls)
        {
            if ((c.GetType() == typeof(TextBox)))
            {

                ((TextBox)(c)).Text = "";
            }

            if ((c.GetType() == typeof(DropDownList)))
            {
                ((DropDownList)c).SelectedIndex = -1;
                //((DropDownList)c).Items.Clear();
            }

            if (c.HasControls())
            {
                CleartextBoxes(c);
            }
        }
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
        cl.display("Emp_Salary_Structure", GridView1);
    }
}

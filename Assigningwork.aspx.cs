using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Assigningwork : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

        {

            cl.ddl("Employee_Registration", "Emp_Name", "Emp_Reg_ID", DropDownList1);
        
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cl.insert("assign_work", "'"+DropDownList1.SelectedItem+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"'");
    }
}
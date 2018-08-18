using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Employee_salary_show : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 2010; i <= 2030; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
            cl.ddl_select("Employee_Registration", "Emp_Reg_ID,Emp_Name", "Emp_Name", "Emp_Reg_ID", "'0'", "'select'", DropDownList1);

        
        
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cl.query("SELECT     Emp_Reg_ID, Emp_Name, Emp_Contact_Number, Emp_Email, Emp_Designation, Intime+' '+In_m as intime, Outtime+' '+Out_m as Outtime, Crt_date, Crt_month, Status, year1 FROM  dbo.Attenance_staff where Emp_Reg_ID='" + DropDownList1.SelectedValue + "' and year1='" + DropDownList3.SelectedValue + "'");

        //cl.displaycond2("Attenance_staff", "Crt_month", "'" + DropDownList2.SelectedValue + "'", "year1", "'" + DropDownList3.SelectedValue + "'", GridView1);
        if (cl.ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script>alert('Record are not Present.........')</script>");

        }
        else
        {
            GridView1.DataSource = cl.ds;
            GridView1.DataBind();

        }

    }
}
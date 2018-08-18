using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EmplaySal_detail : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
           
            Button3.Attributes.Add("onClick", "return OpenNewWP();");
           cl.ddl_select("deductions_salary", "deduct_id,Salary_month", "Salary_month", "Salary_month", "0", "'--Select Month--'", ddlmonth);
           cl.ds.Clear();
           cl.ddl_select("Emp_Salary_Structure", "Emp_id,Emp_id", "Emp_id", "Emp_id", "'--Select id--'", "'--select month--'", DropDownList1);
          // Session["month"] = ddlmonth.SelectedValue;
           //Session["Emp_id"] = DropDownList1.SelectedItem.Text;

           

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cl.usepro("sp_salary_dtl", "'" + DropDownList1.SelectedValue + "','" + ddlmonth.SelectedValue + "'");
        GridView1.DataSource = cl.ds;
        GridView1.DataBind();
    }
    protected void ddlmonth_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>javascript:print()</script>");
        //Response.Write("<script>Report.print();</script>");
        //PrintHelper.PrintWebControl(prt);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Session.Clear();
        Session["month"] = ddlmonth.SelectedValue;
        Session["Emp_id"] = DropDownList1.SelectedItem.Text;
        ////Response.Redirect("Report.aspx?month=" + ddlmonth.SelectedValue+" &Emp_id="+DropDownList1.SelectedItem.Text);
        //Response.Redirect("Report.aspx?month=" + DropDownList1.SelectedItem.Text);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["month"] = ddlmonth.SelectedValue;
        Session["Emp_id"] = DropDownList1.SelectedItem.Text;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Indivisual_salary_show : System.Web.UI.Page
{

    Class1 cl = new Class1();
    string RCid;
    public int total = 0;


    decimal totalPrice = 0M;
    int totalItems = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cl.ddl_select("Employee_Registration", "Emp_Reg_ID,Emp_Name", "Emp_Name", "Emp_Reg_ID", "'0'", "'---Select Name---'", DropDownList3);

            for (int i = 1990; i <= 2050; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }

            DropDownList2.Items.Insert(00, new ListItem("---Select Year---", "NA"));
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedIndex == 00)
        {

           // Response.Write("<script>alert('Select Month And Year.....')</script>");

        }
        else
        {
            cl.read("display_sal_name", "'"+DropDownList3.SelectedValue+"','" + DropDownList2.SelectedValue + "'");
            GridView1.DataSource = cl.ds;
            GridView1.DataBind();
        }

        if (TextBox1.Text == "")
        {

            // Response.Write("<script>alert('Select Month And Year.....')</script>");

        }
        else
        {
            cl.read("display_sal_id", "'" + TextBox1.Text + "','" + DropDownList2.SelectedValue + "'");
            GridView1.DataSource = cl.ds;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //Label lblPrice = (Label)e.Row.FindControl("paidmoney");

            Label lblPrice = (Label)e.Row.FindControl("Label1");

            decimal price = Decimal.Parse(lblPrice.Text);


            totalPrice += price;

            totalItems += 1;
        }

        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblTotalPrice = (Label)e.Row.FindControl("lbltotal");


            lblTotalPrice.Text = totalPrice.ToString();



        } 
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
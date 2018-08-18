using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_monthwise_sal : System.Web.UI.Page
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
            for (int i = 2016; i <= 2050; i++)
            {
                DropDownList2.Items.Add(i.ToString());

            }
            DropDownList2.Items.Insert(00, new ListItem("---Select Year---", "NA"));
            cl.usepro("req_name", "");
            DropDownList3.DataSource = cl.ds;
            DropDownList3.DataTextField = "Emp_Reg_ID";
            DropDownList3.DataValueField = "Emp_Reg_ID";
            DropDownList3.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownList1.SelectedIndex == 0 && DropDownList2.SelectedIndex == 00)
            {

                if (DropDownList3.SelectedIndex == 0)
                {
                    Response.Write("<script>alert('Select id.....')</script>");
                }
                else
                {
                    cl.query("Select * from Payment_Salary where Emp_id='" + DropDownList3.SelectedValue + "'");
                    GridView1.DataSource = cl.ds;
                    GridView1.DataBind();
                }

            }
            else
            {
                if (DropDownList1.SelectedIndex == 0)
                {
                    cl.query("Select * from Payment_Salary where year='" + DropDownList2.SelectedValue + "'");
                    GridView1.DataSource = cl.ds;
                    GridView1.DataBind();
                }

                else
                {
                    //  cl.read("display_sal", "'" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "'");
                    cl.query("select * from Payment_Salary where month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "'");
                    GridView1.DataSource = cl.ds;
                    GridView1.DataBind();

                }

            }
        }
        catch
        { 
        
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

            lblTotalPrice.Text = totalPrice.ToString()
        } 
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
}
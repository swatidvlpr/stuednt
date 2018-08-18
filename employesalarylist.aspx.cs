using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class admin_employesalarylist : System.Web.UI.Page
{
    Class1 cl = new Class1();

    public int total = 0;


    decimal totalPrice = 0M;
    int totalItems = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 2000; i < 2028; i++)
            {
                DropDownList2.Items.Add(i.ToString());


            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedValue == "00")
        {
            if (DropDownList2.SelectedItem.Text == "0000")
            {

            }
            else
            {

                SqlDataAdapter da = new SqlDataAdapter("select * from deductions_salary where year='" + DropDownList2.SelectedValue + "' ", cl.con);
                DataTable tb1 = new DataTable();

                da.Fill(tb1);

                GridView1.DataSource = tb1;
                GridView1.DataBind();
            }

        }
        else
        {
            // cl.displaycond("fee_payment", "month", "'" + DropDownList1.SelectedValue + "'", GridView1);

            SqlDataAdapter da = new SqlDataAdapter("select * from deductions_salary where month='" + DropDownList1.SelectedValue + "'", cl.con);
            DataTable tb = new DataTable();

            da.Fill(tb);

            GridView1.DataSource = tb;
            GridView1.DataBind();
            DropDownList1.SelectedIndex = 0;


        }
        
       
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //Label lblPrice = (Label)e.Row.FindControl("paidmoney");

            Label lblPrice = (Label)e.Row.FindControl("Label3");

            decimal price = Decimal.Parse(lblPrice.Text);


            totalPrice += price;

            totalItems += 1;
        }

        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblTotalPrice = (Label)e.Row.FindControl("Label4");


            lblTotalPrice.Text = totalPrice.ToString();



        } 

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        SqlDataAdapter da = new SqlDataAdapter("select * from deductions_salary where month='" + DropDownList1.SelectedValue + "'", cl.con);
        DataTable tb = new DataTable();

        da.Fill(tb);

        GridView1.DataSource = tb;
        GridView1.DataBind();
        DropDownList1.SelectedIndex = 0;

    }
}
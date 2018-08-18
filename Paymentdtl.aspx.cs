using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_Paymentdtl : System.Web.UI.Page
{
    Class1 cl = new Class1();

    public int total = 0;


    decimal totalPrice = 0M;
    int totalItems = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["idd"] == null)
            {



            }
            else
            {
                string sid = Request.QueryString["idd"].ToString();
                SqlDataAdapter da = new SqlDataAdapter("select * from fee_payment where Reg_id='" + sid + "' ", cl.con);
                DataTable table = new DataTable();

                da.Fill(table);

                GridView1.DataSource = table;
                GridView1.DataBind();

            
            
            }


        
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
            Label lblTotalPrice = (Label)e.Row.FindControl("lblTotal");


            lblTotalPrice.Text = totalPrice.ToString("N");



        } 


    }
}
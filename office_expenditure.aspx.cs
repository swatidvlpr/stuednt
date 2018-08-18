using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

using System.IO;
using System.Threading;
using System.Configuration;
using System.Text;
using System.Drawing;

using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class admin_office_expenditure : System.Web.UI.Page
{
    Class1 cl = new Class1();

    public int total = 0;
    //decimal totalPrice1 = 0M;


    decimal totalPrice = 0M;
    int totalItems = 0;
    int totalItems1 = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            for (int i = 2016; i < 2050; i++)
            {
                DropDownList2.Items.Add(i.ToString());


            }
            //DropDownList2.Items.Insert(0, new ListItem("---Select Year---", "NA"));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0 && DropDownList2.SelectedIndex==0)
        {
           

        }
        else
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from sending_Transtions where year='" + DropDownList2.SelectedValue + "' ", cl.con);
                DataTable tb1 = new DataTable();

                da.Fill(tb1);

                GridView1.DataSource = tb1;
                GridView1.DataBind();
            
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from sending_Transtions where month='" + DropDownList1.SelectedValue + "' and year ='" + DropDownList2.SelectedValue + "'", cl.con);
                DataTable tb = new DataTable();

                da.Fill(tb);

                GridView1.DataSource = tb;
                GridView1.DataBind();
            
            
            
            }
            // cl.displaycond("fee_payment", "month", "'" + DropDownList1.SelectedValue + "'", GridView1);

            
            //DropDownList1.SelectedIndex = 0;


        }

        //if (DropDownList2.SelectedItem.Text == "0000")
        //{

        //}
        //else
        //{

          
        //}
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //Label lblPrice = (Label)e.Row.FindControl("paidmoney");

            Label lblPrice = (Label)e.Row.FindControl("lbltotal");

            decimal price = Decimal.Parse(lblPrice.Text);


            totalPrice += price;

            totalItems += 1;
        }

        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblTotalPrice = (Label)e.Row.FindControl("lbltxttotal");


            lblTotalPrice.Text = totalPrice.ToString("N");



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
    protected void Button3_Click(object sender, EventArgs e)
    {
        ExportGridToExcel();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    private void ExportGridToExcel()
    {

        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "Total Expenditure Show" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        GridView1.GridLines = GridLines.Both;
        GridView1.HeaderStyle.Font.Bold = true;
        GridView1.RenderControl(htmltextwrtter);

        GridView1.Columns.RemoveAt(0);
        GridView1.DataBind();
        Response.Write(strwritter.ToString());
        Response.End();

    }
}
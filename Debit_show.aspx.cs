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

public partial class admin_Debit_show : System.Web.UI.Page
{
    Class1 cl = new Class1();

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
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            

            Label lblPrice = (Label)e.Row.FindControl("Label1");

            decimal price = Decimal.Parse(lblPrice.Text);


            totalPrice += price;

            totalItems += 1;
        }

        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblTotalPrice = (Label)e.Row.FindControl("Label2");


            lblTotalPrice.Text = Convert.ToDecimal(totalPrice).ToString("N");



        } 
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {

        }

        else
        {
            DropDownList1.SelectedItem.Text = "--Select Month--";
            DropDownList2.SelectedItem.Text = "---Select year---";
            cl.ds.Clear();
         
            cl.query("select * from Outgoing where date='" + TextBox2.Text + "'");
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                cl.ds.Clear();
                

            }

            else
            {
                GridView1.DataSource = cl.ds;
                GridView1.DataBind();
            
            
            }

        }

        if (DropDownList1.SelectedIndex ==0 && DropDownList2.SelectedIndex == 0)
        { 
        
        
        }
        else
        {
            if (DropDownList1.SelectedIndex == 0)
            {

                cl.query("select * from Outgoing where year='" + DropDownList2.SelectedValue + "'");
                if (cl.ds.Tables[0].Rows.Count == 0)
                {

                  

                }

                else
                {
                    TextBox2.Text = "";
                    GridView1.DataSource = cl.ds;
                    GridView1.DataBind();
                }
            }

            else
            {
               

                cl.query("select * from Outgoing where month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "'");
                if (cl.ds.Tables[0].Rows.Count == 0)
                {

                    //  Response.Write("<script>alert('No Record Found')</script>");

                }

                else
                {
                    TextBox2.Text = "";
                    GridView1.DataSource = cl.ds;
                    GridView1.DataBind();
                }
            }
        
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
        string FileName = "Creadit Show" + DateTime.Now + ".xls";
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
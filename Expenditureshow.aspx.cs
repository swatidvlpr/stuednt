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

public partial class Admin_Expenditureshow : System.Web.UI.Page
{
    Class1 cl = new Class1();

    public int total = 0;


    decimal totalPrice = 0M;
    int totalItems = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
{
        for (int i = 2016; i <= 2050; i++)
        {
            DropDownList2.Items.Add(i.ToString());


        }
}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            if (TextBox1.Text == "")
            {





            }
            else
            {

                // TextBox1.Text = "";
                cl.displaycond("Expendituresdtl", "Voucher_no", "'" + TextBox1.Text + "'", GridView1);
                if (cl.ds.Tables[0].Rows.Count == 0)
                {
                    // Response.Write("<script>alert('Record are not Present.........')</script>");

                }




            }






            if (TextBox2.Text == "")
            {

            }

            else
            {
                TextBox1.Text = "";
                cl.displaycond("Expendituresdtl", "ddate", "'" + TextBox2.Text + "'", GridView1);
                if (cl.ds.Tables[0].Rows.Count == 0)
                {
                    cl.ds.Clear();
                    //Response.Write("<script>alert('Record are not Present.........')</script>");

                }

            }








            //if (DropDownList2.SelectedItem.Text == "---Select year---")
            //{




            //}
            //else
            //{

            //    cl.displaycond("Expendituresdtl", "Date_YY", "'" + DropDownList2.SelectedValue + "'", GridView1);




            //}






            //if (DropDownList1.SelectedValue == "0" && DropDownList2.SelectedValue == "0")
            //{
            //    //Response.Write("<script>alert('Select Month and Year.........')</script>");


            //}
            //else
            //{

            //    if (DropDownList2.SelectedValue == "0")
            //    {
            //        Response.Write("<script>alert('Select Year.........')</script>");


            //    }
            //    else
            //    {

            //        cl.usepro("sp_disp_Expenditure", "'" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "'");

            //        if (cl.ds.Tables[0].Rows.Count == 0)
            //        {

            //            Response.Write("<script>alert('No Record Found')</script>");

            //        }

            //        else
            //        {
            //            GridView1.DataSource = cl.ds;
            //            GridView1.DataBind();
            //        }

            //    }




            //}

            if (DropDownList1.SelectedIndex == 0 && DropDownList2.SelectedIndex == 0)
            {


                if (DropDownList3.SelectedIndex == 0)
                {




                }
                else
                {

                    //cl.displaycond("Expendituresdtl", "Head", "'" + DropDownList3.SelectedItem.Text + "'", GridView1);

                    cl.displaycond("Expendituresdtl", "Head", "'" + DropDownList3.SelectedItem.Text + "'", GridView1);


                }

            }
            else
            {
                if (DropDownList1.SelectedIndex == 0)
                {
                    cl.read1("Expendituresdtl", "Date_YY", "'" + DropDownList2.SelectedValue + "'");
                    if (cl.ds.Tables[0].Rows.Count == 0)
                    {

                        //  Response.Write("<script>alert('Select Year')</script>");

                    }
                    else
                    {

                        GridView1.DataSource = cl.ds;
                        GridView1.DataBind();



                    }
                }

                else
                {

                    cl.ds.Clear();
                    cl.usepro("sp_disp_Expenditure", "'" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "'");
                    if (cl.ds.Tables[0].Rows.Count == 0)
                    {

                        //  Response.Write("<script>alert('No Record Found')</script>");

                    }

                    else
                    {
                        GridView1.DataSource = cl.ds;
                        GridView1.DataBind();
                    }


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
            Label lblTotalPrice = (Label)e.Row.FindControl("Label2");


            lblTotalPrice.Text = Convert.ToDecimal(totalPrice).ToString("N");



        } 
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

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
        string FileName = "Expenditure Show" + DateTime.Now + ".xls";
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
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
public partial class admin_Otherincome_head : System.Web.UI.Page
{
    Class1 cl = new Class1();
    public int total = 0;
    decimal totalPrice1 = 0M;
    decimal totalPrice2 = 0M;
    Label lblnm;

    decimal totalPrice = 0M;

    //decimal totalPrice1 = 0M;
    int totalItems = 0;
  
    int totalItems1 = 0;

    int totalItems2 = 0;

    SqlDataAdapter da;
    SqlDataAdapter da1;

    DataTable tb1;

    DataTable tb;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cl.read("disp_source1", "");
            DropDownList3.DataSource = cl.ds;
            DropDownList3.DataTextField = "Other_sourse_nm";
            DropDownList3.DataValueField = "other_source_id";
            DropDownList3.DataBind();

           
        
        }
        for (int i = 2016; i <= 2050; i++)
        {
            DropDownList2.Items.Add(i.ToString());


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            if (DropDownList1.SelectedIndex == 0 && DropDownList2.SelectedIndex == 0)
            {

                // Response.Write("<script>alert('Select month.........')</script>");

                cl.displaycond("Assighn_Income_rate", "Name", "'" + DropDownList4.SelectedItem.Text + "'", GridView1);
                GridView3.Visible = false;
            }
            else
            {


                if (DropDownList1.SelectedIndex == 0)
                {
                    cl.displaycond("other_payment", "year", "'" + DropDownList2.SelectedValue + "'", GridView3);
                }
                else
                {
                    GridView3.Visible = true;
                    GridView1.Visible = false;
                    cl.displaycond2("other_payment", "month", "'" + DropDownList1.SelectedValue + "'", "year", "'" + DropDownList2.SelectedValue + "'", GridView3);

                }

            }

            if (TextBox2.Text == "")
            {



            }

            else
            {
                GridView3.Visible = true;
                GridView1.Visible = false;
                cl.displaycond("other_payment", "date", "'" + TextBox2.Text + "'", GridView3);
                if (cl.ds.Tables[0].Rows.Count == 0)
                {
                    // Response.Write("<script>alert('Record are not Present.........')</script>");

                }
                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;


            }


        }
        catch 
        {
        
        
        }
        

       

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //cl.ddlcond("Assighn_Income_rate", "Name", "Source_id", "Sourcehdnm", "'" + DropDownList3.SelectedItem.Text + "'", DropDownList4);

        cl.query("select Source_id,Name from Assighn_Income_rate where Sourcehdnm='" + DropDownList3.SelectedItem.Text + "' union select 0,'--Select--'");
        DropDownList4.DataSource = cl.ds;
        DropDownList4.DataTextField = "Name";
        DropDownList4.DataValueField = "Source_id";
        DropDownList4.DataBind();

    }
    
    
    
    
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            cl.displaycond("Assighn_Income_rate", "Name", "'" + DropDownList4.SelectedItem.Text + "'", GridView1);
        }
        catch
        { 
        
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType != DataControlRowType.DataRow) return;
        GridView Gv1 = (GridView)e.Row.FindControl("GridView2");
        lblnm = (Label)e.Row.FindControl("Label9");
        // int id = int.Parse(GridView1.DataKeys[e.Row.RowIndex].Value.ToString());
        string id = GridView1.DataKeys[e.Row.RowIndex].Value.ToString();
        DataTable tb = new DataTable();
        SqlDataAdapter adp;
      string str="SELECT     headernm, Amount, payment_type, chq_dd_dtl, remarks, date, month, year, income_id, payment, due, name, Status FROM   dbo.other_payment where name='" + id + "' ";
        adp = new SqlDataAdapter(str, cl.con);
        adp.Fill(tb);
        Gv1.DataSource = tb;
        Gv1.DataBind();
        
        
    }


    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //Label lblPrice = (Label)e.Row.FindControl("paidmoney");

            Label lblPrice = (Label)e.Row.FindControl("Label12");

            decimal price = Decimal.Parse(lblPrice.Text);


            totalPrice += price;

            totalItems += 1;
        }

        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblTotalPrice = (Label)e.Row.FindControl("Label5");
            


            lblTotalPrice.Text = Convert.ToDecimal(totalPrice).ToString("N");

            cl.ds.Clear();
            cl.query("SELECT due FROM other_payment where name='" + lblnm.Text + "' ORDER BY fid DESC");

            Label lbldue = (Label)e.Row.FindControl("Label3");
            string str=cl.ds.Tables[0].Rows[0]["due"].ToString();
            lbldue.Text = Convert.ToDecimal(str).ToString("N");



        } 




    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
        cl.ds.Clear();

        if (DropDownList1.SelectedIndex == 0 && DropDownList2.SelectedIndex == 0)
        {

            // Response.Write("<script>alert('Select month.........')</script>");

            cl.displaycond("Assighn_Income_rate", "Name", "'" + DropDownList4.SelectedItem.Text + "'", GridView1);
            GridView3.Visible = false;
        }
        else
        {

            //if (DropDownList2.SelectedIndex == 0)
            //{
            //    Response.Write("<script>alert('Select Year.........')</script>");
            //}
            //else
            //{
            //    TextBox2.Text = "";
            //    // TextBox1.Text = "";

            //    cl.displaycond("Assighn_Income_rate", "year", "'" + DropDownList2.SelectedValue + "'", GridView1);



            //}


            ////TextBox2.Text = "";
            //////TextBox1.Text = "";
            ////if (DropDownList1.SelectedIndex == 0)
            ////{
            ////    cl.ds.Clear();

            ////    //cl.displaycond("Assighn_Income_rate", "year", "'" + DropDownList2.SelectedValue + "'", GridView1);
            ////    cl.query("SELECT     Sourcehdnm, Name, Total_amount, date, month, year FROM   dbo.Assighn_Income_rate where year='" + DropDownList2.SelectedValue + "'");
            ////    GridView1.DataSource = cl.ds;
            ////    GridView1.DataBind();

            ////}
            ////else
            ////{
            ////    cl.ds.Clear();
            ////    //cl.displaycond2("Assighn_Income_rate", "month", "'" + DropDownList1.SelectedValue + "'", "year", "'" + DropDownList2.SelectedValue + "'", GridView1);
            ////    cl.query("SELECT     Sourcehdnm, Name, Total_amount, date, month, year FROM   dbo.Assighn_Income_rate where month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "'");
            ////    GridView1.DataSource = cl.ds;
            ////    GridView1.DataBind();


            ////    //if (cl.ds.Tables[0].Rows.Count == 0)
            ////    //{
            ////    //    // Response.Write("<script>alert('Record not Present.........')</script>");

            ////    //}


            ////}
            if (DropDownList1.SelectedIndex == 0)
            {
                cl.displaycond("other_payment", "year", "'" + DropDownList2.SelectedValue + "'", GridView3);
            }
            else
            {
                GridView3.Visible = true;
                GridView1.Visible = false;
                cl.displaycond2("other_payment", "month", "'" + DropDownList1.SelectedValue + "'", "year", "'" + DropDownList2.SelectedValue + "'", GridView3);

            }

        }

        if (TextBox2.Text == "")
        {



        }

        else
        {
            GridView3.Visible = true;
            GridView1.Visible = false;
            cl.displaycond("other_payment", "date", "'" + TextBox2.Text + "'", GridView3);
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                // Response.Write("<script>alert('Record are not Present.........')</script>");

            }
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;


        }
      
        
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
        string FileName = "Other Income Show" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        GridView3.GridLines = GridLines.Both;
        GridView3.HeaderStyle.Font.Bold = true;
        GridView3.RenderControl(htmltextwrtter);

        GridView3.Columns.RemoveAt(0);
        GridView3.DataBind();
        Response.Write(strwritter.ToString());
        Response.End();

    }
}
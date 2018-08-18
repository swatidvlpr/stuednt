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

public partial class admin_Faculty_payment_show : System.Web.UI.Page
{
    Class1 cl = new Class1();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownList1.SelectedIndex == 0 && DropDownList2.SelectedIndex == 0)
            {
                if (TextBox1.Text == "")
                {
                    if (TextBox2.Text == "")
                    {

                    }
                    else
                    {

                        cl.displaycond("faculty_payment", "date", "'" + TextBox2.Text + "'", GridView1);


                    }
                }
                else
                {

                    cl.displaycond("faculty_payment", "Fac_id", "'" + TextBox1.Text + "'", GridView1);


                }


            }
            else
            {
                if (DropDownList1.SelectedIndex == 0)
                {

                    cl.displaycond("faculty_payment", "year", "'" + DropDownList2.SelectedValue + "'", GridView1);
                }
                else
                {

                    cl.displaycond2("faculty_payment", "month", "'" + DropDownList1.SelectedValue + "'", "year", "'" + DropDownList2.SelectedValue + "'", GridView1);

                }


            }
        }
        catch
        { 
        
        
        
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
        string FileName = "Faculty Payment Show" + DateTime.Now + ".xls";
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
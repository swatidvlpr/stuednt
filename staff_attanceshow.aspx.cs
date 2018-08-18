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

public partial class Admin_staff_attanceshow : System.Web.UI.Page
{
    Class1 cl = new Class1();

    
    public int total = 0;
    decimal totalPrice1 = 0M;

    TimeSpan totalPrice = new TimeSpan();
   // TimeSpan totalPrice = 00:00:00;
    //DateTime totalPrice = new DateTime(00:00:00);
    //DateTime totalPrice = 00:00;
    //int totalItems = 0;
    //int totalItems1 = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 2015; i <= 2050; i++)
            {
                DropDownList3.Items.Add(i.ToString());


            }
            //cl.ddl("Employee_Registration", "Emp_Name", "Emp_Reg_ID", DropDownList1);
            cl.ddl_select("Employee_Registration", "Emp_Name,Emp_Reg_ID", "Emp_Reg_ID","Emp_Reg_ID","'0'","'---Select Id---'", DropDownList1);



        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //try
        //{

        if (DropDownList1.SelectedIndex == 0 && DropDownList2.SelectedIndex == 0 && DropDownList3.SelectedIndex == 0)
        {




        }
        else
        {
            if (DropDownList1.SelectedIndex == 0)
            {

               // Response.Write("<script>alert('Select Month.........')</script>");

            }
            else
            {

                if (DropDownList3.SelectedIndex == 0)
                {
                   // Response.Write("<script>alert('Select Year.........')</script>");
                }
                else
                {
                    cl.ds.Clear();
                    //cl.displaycond2("Attenance_staff", "Emp_Reg_ID", "'" + DropDownList1.SelectedValue + "'", "Crt_month", "'" + DropDownList2.SelectedValue + "'", GridView1);
                    cl.query("SELECT     Emp_Reg_ID, Emp_Name, Emp_Contact_Number,Emp_Designation,Emp_Email, Emp_Designation, Intime+' '+In_m as intime, Outtime+' '+Out_m as Outtime, Crt_date, Crt_month, Status, year1,duration,Remark FROM  dbo.Attenance_staff where Emp_Reg_ID='" + DropDownList1.SelectedItem.Text + "' and Crt_month='" + DropDownList2.SelectedValue + "' and year1='" + DropDownList3.SelectedValue + "'");


                    // cl.displaycond("Attenance_staff", "Emp_Reg_ID", "'" + DropDownList1.SelectedValue + "'", GridView1);
                    if (cl.ds.Tables[0].Rows.Count == 0)
                    {
                        Response.Write("<script>alert('Record not Present.........')</script>");

                    }

                    else
                    {
                        //if (cl.ds.Tables[0].Rows[0]["duration"] == "")
                        //{ }
                        //else
                        //{
                        GridView1.DataSource = cl.ds;
                        GridView1.DataBind();
                        //}


                    }


                



                
                }


            
            }
        
        
        }

            //if (DropDownList1.SelectedIndex == 0)
            //{
            //    //if (DropDownList2.SelectedIndex == 0)
            //    //{


            //    //}
            //    //else
            //    //{
                    


            //    //}
            //}
            //else
            //{
            //    cl.ds.Clear();
            //    //cl.displaycond2("Attenance_staff", "Emp_Reg_ID", "'" + DropDownList1.SelectedValue + "'", "Crt_month", "'" + DropDownList2.SelectedValue + "'", GridView1);
            //    cl.query("SELECT     Emp_Reg_ID, Emp_Name, Emp_Contact_Number,Emp_Designation,Emp_Email, Emp_Designation, Intime+' '+In_m as intime, Outtime+' '+Out_m as Outtime, Crt_date, Crt_month, Status, year1,duration,Remark FROM  dbo.Attenance_staff where Emp_Reg_ID='" + DropDownList1.SelectedItem.Text + "' and Crt_month='" + DropDownList2.SelectedValue + "' and year1='" + DropDownList3.SelectedValue + "'");


            //    // cl.displaycond("Attenance_staff", "Emp_Reg_ID", "'" + DropDownList1.SelectedValue + "'", GridView1);
            //    if (cl.ds.Tables[0].Rows.Count == 0)
            //    {
            //        Response.Write("<script>alert('Record not Present.........')</script>");

            //    }

            //    else
            //    {
            //        //if (cl.ds.Tables[0].Rows[0]["duration"] == "")
            //        //{ }
            //        //else
            //        //{
            //            GridView1.DataSource = cl.ds;
            //            GridView1.DataBind();
            //        //}


            //    }
            //    //DropDownList2.SelectedIndex = 0;
            //    //DropDownList3.SelectedIndex = 0;
            //}


            



        //}
        //catch (Exception ee)
        //{



        //}


        ////if (DropDownList2.SelectedIndex == 0  &&  DropDownList3.SelectedIndex == 0)
        ////{



        ////}

        ////else
        ////{
        ////    cl.ds.Clear();

        ////    cl.query("SELECT     Remark,Emp_Reg_ID, Emp_Name, Emp_Contact_Number, Emp_Email,Emp_Designation,Intime+' '+In_m as intime, Outtime+' '+Out_m as Outtime, Crt_date, Crt_month, Status, year1,duration FROM  dbo.Attenance_staff where Crt_month='" + DropDownList2.SelectedValue + "' and year1='" + DropDownList3.SelectedValue + "'");

        ////    //cl.displaycond2("Attenance_staff", "Crt_month", "'" + DropDownList2.SelectedValue + "'", "year1", "'" + DropDownList3.SelectedValue + "'", GridView1);
        ////    if (cl.ds.Tables[0].Rows.Count == 0)
        ////    {
        ////        Response.Write("<script>alert('Record not Present.........')</script>");

        ////    }
        ////    else
        ////    {
        ////        GridView1.DataSource = cl.ds;
        ////        GridView1.DataBind();

        ////    }



        ////    DropDownList1.SelectedIndex = 0;
        ////}




       

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //Label lblPrice = (Label)e.Row.FindControl("paidmoney");

            Label lblPrice = (Label)e.Row.FindControl("lbltotal");

            if (lblPrice.Text == "")
            {
            
            }
            else
            {
                TimeSpan price = TimeSpan.Parse(lblPrice.Text);


                totalPrice += price;
            }

            //totalItems += 1;
        }

        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblTotalPrice = (Label)e.Row.FindControl("lbltxttotal");


            lblTotalPrice.Text = totalPrice.ToString();



        }


        ////if (e.Row.RowType == DataControlRowType.DataRow)
        ////{
        ////    string[] empTotalTime = new string[3] { "0", "0", "0" };
        ////    for (int counter = 0; counter < GridView1.Rows.Count; counter++)
        ////    {
        ////        string[] singleTime = GridView1.Rows[counter].Cells[8].Text.Split(':');
        ////        empTotalTime[0] = (Convert.ToInt32(empTotalTime[0]) + Convert.ToInt32(singleTime[0])).ToString();
        ////        empTotalTime[1] = (Convert.ToInt32(empTotalTime[1]) + Convert.ToInt32(singleTime[1])).ToString();
        ////        empTotalTime[2] = (Convert.ToInt32(empTotalTime[2]) + Convert.ToInt32(singleTime[2])).ToString();
        ////    }
        ////    ((Label)e.Row.FindControl("lbltotal")).Text = empTotalTime[0] + ":" + empTotalTime[1] + ":" + empTotalTime[2];
        ////}







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
        string FileName = "staff attendance" + DateTime.Now + ".xls";
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
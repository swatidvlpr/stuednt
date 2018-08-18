using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Registrationsshow : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i <= 31; i++)
        {

            DropDownList1.Items.Add(i.ToString());

        }

        for (int i = 1960; i <= 2050; i++)
        {

            DropDownList3.Items.Add(i.ToString());

        }
        string[] str = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
           
        foreach (string ss in str)
        {
            DropDownList2.Items.Add(ss);

        }

        if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {


            }
            else
            {
                string idd=Request.QueryString["id"].ToString();
                cl.detail("Stud_reg", "Stud_id", "'"+idd+"'", DetailsView1);
                //if (cl.ds.Tables[0].Rows.Count == 0)
                //{
                //    Response.Write("<script>alert('Record are not Present.........')</script>");

                //}
            
            
            
            }
        
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text=="")
        {
        
        
        
        }
        else
        {
            cl.detail("Stud_reg", "Reg_id", "'"+TextBox1.Text+"'", DetailsView1);
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Record not Found.........')</script>");

            }
        }

     if(TextBox2.Text=="")
     {
     
     
     }
        else
     {
         string dob = DropDownList1.SelectedItem.Text + "/" + DropDownList2.SelectedItem.Text + "/" + DropDownList3.SelectedItem.Text;
         cl.read("disp_name_dob", "'"+TextBox2.Text+"','"+dob+"'");
         DetailsView1.DataSource=cl.ds;
         DetailsView1.DataBind();
         if (cl.ds.Tables[0].Rows.Count == 0)
         {
             Response.Write("<script>alert('Record not Found.........')</script>");

         }
     
     
     }
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);

        DetailsView1.DataSource = null;
        DetailsView1.DataBind();
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
    protected void Edit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("");
    }
}
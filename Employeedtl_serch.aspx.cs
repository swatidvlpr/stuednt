using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Employeedtl_serch : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 1; i <= 31; i++)
            {

               ddlday.Items.Add(i.ToString());

            }

            for (int i = 1950; i <= 2050; i++)
            {

                ddlyr.Items.Add(i.ToString());

            }
            string[] str = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
            foreach (string ss in str)
            {
                ddlmonth.Items.Add(ss);

            }

            if (Request.QueryString["id"] == null)
            { 
            
            
            }
            else
            {
                string idd = Request.QueryString["id"].ToString();
                cl.displaycond("Employee_Registration", "Emp_Reg_ID", "'" + idd + "'", GridView1);
                TextBox1.Text = cl.ds.Tables[0].Rows[0]["Emp_Reg_ID"].ToString();
            }
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {


        }
        else
        {
            cl.displaycond("Employee_Registration", "Emp_Reg_ID", "'" + TextBox1.Text + "'", GridView1);
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Record not Found.........')</script>");

            }
        }
        if (TextBox2.Text == "")
        { 
        
        }
        else
        {
            string dob = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyr.SelectedItem.Text;
            cl.displaycond2("Employee_Registration", "Emp_Name", "'" + TextBox2.Text + "'", "Emp_DOB", "'"+dob+"'", GridView1);
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Record not Found.........')</script>");

            }
        
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        cl.delete("Employee_Registration", "Emp_Reg_ID", "'" + id + "'");
        cl.delete("Emp_photo", "Emp_Reg_ID", "'" + id + "'");
       // cl.display("Employee_Registration", GridView1);
        if (TextBox1.Text == "")
        {


        }
        else
        {
            cl.displaycond("Employee_Registration", "Emp_Reg_ID", "'" + TextBox1.Text + "'", GridView1);
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                //Response.Write("<script>alert('Record not Found.........')</script>");

            }
        }
        if (TextBox2.Text == "")
        {

        }
        else
        {
            string dob = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyr.SelectedItem.Text;
            cl.displaycond2("Employee_Registration", "Emp_Name", "'" + TextBox2.Text + "'", "Emp_DOB", "'" + dob + "'", GridView1);
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                //Response.Write("<script>alert('Record not Found.........')</script>");

            }

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
      //  cl.ds.Clear();
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
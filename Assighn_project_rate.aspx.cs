using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Assighn_project_rate : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cl.read("disp_source", "");
            DropDownList1.DataSource = cl.ds;
            DropDownList1.DataTextField = "Other_sourse_nm";
            DropDownList1.DataValueField = "other_source_id";
            DropDownList1.DataBind();

            Panel1.Visible = false;
        }
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Other")
        {
            Panel1.Visible = true;
        }
        else
        {

        }
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        using (SqlCommand cmd = new SqlCommand("INSERT INTO Sourse_other (Other_sourse_nm) VALUES (@Other_sourse_nm)", cl.con))
        {

            cmd.Parameters.AddWithValue("@Other_sourse_nm", txtheadname.Text);
            cl.con.Open();
            cmd.ExecuteNonQuery();
            cl.con.Close();


            cl.ds.Clear();
            cl.read("disp_source", "");
            DropDownList1.DataSource = cl.ds;
            DropDownList1.DataTextField = "Other_sourse_nm";
            DropDownList1.DataValueField = "other_source_id";
            DropDownList1.DataBind();

            Panel1.Visible = false;
            txtheadname.Text = "";

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        using (SqlCommand cmd = new SqlCommand("INSERT INTO Assighn_Income_rate(Sourcehdnm,Name,Total_amount,date,month,year) VALUES (@Sourcehdnm,@Name,@Total_amount,@date,@month,@year)", cl.con))
        {

            cmd.Parameters.AddWithValue("@Sourcehdnm",DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Total_amount",TextBox2.Text);
            cmd.Parameters.AddWithValue("@date",TextBox3.Text);
            cmd.Parameters.AddWithValue("@month",Convert.ToDateTime(TextBox3.Text).ToString("MM"));
            cmd.Parameters.AddWithValue("@year", Convert.ToDateTime(TextBox3.Text).ToString("yyyy"));
            cl.con.Open();
            cmd.ExecuteNonQuery();
            cl.con.Close();

            Label1.Text = "Submitted Sucessfully....";
            //cl.ds.Clear();
            //cl.read("disp_source", "");
            //DropDownList1.DataSource = cl.ds;
            //DropDownList1.DataTextField = "Other_sourse_nm";
            //DropDownList1.DataValueField = "other_source_id";
            //DropDownList1.DataBind();

            //Panel1.Visible = false;
            //txtheadname.Text = "";

        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
        TextBox2.Text = "00.00";
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
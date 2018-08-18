using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_faculty_entry : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cl.cmd = new SqlCommand("",cl.con);
        cl.cmd = new SqlCommand("add_fuculty", cl.con);
        cl.cmd.CommandType = CommandType.StoredProcedure;
        cl.cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cl.cmd.Parameters.AddWithValue("@designation", TextBox2.Text);
        cl.cmd.Parameters.AddWithValue("@address", TextBox3.Text);
        cl.cmd.Parameters.AddWithValue("@mobileno", TextBox4.Text);
        cl.cmd.Parameters.AddWithValue("@alternat_mobno", TextBox5.Text);
        cl.cmd.Parameters.AddWithValue("@emailid", TextBox11.Text);
        cl.cmd.Parameters.AddWithValue("@subject", TextBox6.Text);
        cl.cmd.Parameters.AddWithValue("@Chapter", TextBox7.Text);
        cl.cmd.Parameters.AddWithValue("@total_classes", TextBox8.Text);
        cl.cmd.Parameters.AddWithValue("@fee_per_clsses", TextBox9.Text);
        cl.cmd.Parameters.AddWithValue("@total_payment",TextBox10.Text);
        cl.cmd.Parameters.AddWithValue("@Fuculty_id", TextBox12.Text);
        cl.cmd.Parameters.AddWithValue("@Date_Of_Joining", TextBox13.Text);
                                                            
        cl.cmd.Parameters.AddWithValue("@join_mm",Convert.ToDateTime(TextBox13.Text).ToString("MM"));
        cl.cmd.Parameters.AddWithValue("@join_yr", Convert.ToDateTime(TextBox13.Text).ToString("yyyy"));
        cl.cmd.Parameters.AddWithValue("@Class", TextBox14.Text);
       
        try
        {
            cl.con.Open();
            cl.cmd.ExecuteNonQuery();
            cl.con.Close();
            Label1.Text = "Submitted Sucessfully...";
        }
        catch
        {


        }

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "0";
            TextBox9.Text = "00.00";
            TextBox10.Text = "00.00";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";

    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        int i = Convert.ToInt32(TextBox8.Text);
        double ii = Convert.ToDouble(TextBox9.Text);
        double iii = i * ii;
        TextBox10.Text = iii.ToString("N");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
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

        TextBox8.Text = "0";
        TextBox9.Text = "00.00";
        TextBox10.Text = "00.00";
    }
}
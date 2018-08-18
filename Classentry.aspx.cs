using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_Classentry : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cl.query("Select Fuculty_id,name from facultyentry union select '--Select--','--Select--'");
            DropDownList1.DataSource = cl.ds;
            DropDownList1.DataTextField = "Fuculty_id";
            DropDownList1.DataValueField = "Fuculty_id";
            DropDownList1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
        cl.cmd = new SqlCommand("",cl.con);
        cl.cmd = new SqlCommand("add_class", cl.con);
        cl.cmd.CommandType = CommandType.StoredProcedure;

     

        cl.cmd.Parameters.AddWithValue("@Faculty_id", DropDownList1.SelectedValue);
        cl.cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
        cl.cmd.Parameters.AddWithValue("@Class", TextBox2.Text);
        cl.cmd.Parameters.AddWithValue("@date", TextBox3.Text);
        cl.cmd.Parameters.AddWithValue("@Subject", TextBox4.Text);
        cl.cmd.Parameters.AddWithValue("@Chapter", TextBox12.Text);
        cl.cmd.Parameters.AddWithValue("@chapter_details", TextBox5.Text);

        string startTime = TextBox6.Text + DropDownList2.SelectedItem.Text;
       
        cl.cmd.Parameters.AddWithValue("@Intime",startTime);

        string endTime = TextBox11.Text + DropDownList3.SelectedItem.Text;
        cl.cmd.Parameters.AddWithValue("@Outime",endTime);
        cl.cmd.Parameters.AddWithValue("@duration", TextBox7.Text);
        cl.cmd.Parameters.AddWithValue("@no_of_Class", TextBox8.Text);
        cl.cmd.Parameters.AddWithValue("@PerClass",TextBox9.Text);
        cl.cmd.Parameters.AddWithValue("@Totalpayment", TextBox10.Text);
        cl.cmd.Parameters.AddWithValue("@month",Convert.ToDateTime(TextBox3.Text).ToString("MM"));
        cl.cmd.Parameters.AddWithValue("@year", Convert.ToDateTime(TextBox3.Text).ToString("yyyy"));
        string status = "0";
        cl.cmd.Parameters.AddWithValue("@status",status);
        
       
            cl.con.Open();
            cl.cmd.ExecuteNonQuery();
            cl.con.Close();
            Label1.Text = "Submitted Sucessfully.....";

        }
        catch
        {
            

        }

        DropDownList1.SelectedIndex = 0;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "00:00:00";

        TextBox7.Text = "";
        TextBox8.Text = "0";
        TextBox9.Text = "00.00";
        TextBox10.Text = "00.00";
        TextBox11.Text = "00:00:00";
        TextBox12.Text = "";
        DropDownList2.SelectedIndex = 0;
        DropDownList3.SelectedIndex = 0;



    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cl.query("Select * from facultyentry where Fuculty_id='"+DropDownList1.SelectedItem.Text+"'");
        if (cl.ds.Tables[0].Rows.Count == 0)
        { }
        else
        {
            TextBox1.Text = cl.ds.Tables[0].Rows[0]["name"].ToString();
        }

    }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {
        //string startTime = TextBox6.Text + DropDownList2.SelectedItem.Text;
        //string endTime = TextBox11.Text + DropDownList3.SelectedItem.Text;

        //TimeSpan duration = DateTime.Parse(endTime).Subtract(DateTime.Parse(startTime));
        //TextBox7.Text = duration.ToString();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string startTime = TextBox6.Text + DropDownList2.SelectedItem.Text;
        string endTime = TextBox11.Text + DropDownList3.SelectedItem.Text;

        TimeSpan duration = DateTime.Parse(endTime).Subtract(DateTime.Parse(startTime));
        TextBox7.Text = duration.ToString();
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
        TextBox8.Text = "0";
        TextBox9.Text = "00.00";
        TextBox10.Text = "00.00";
        TextBox6.Text = "00:00:00";
        TextBox11.Text = "00:00:00";
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
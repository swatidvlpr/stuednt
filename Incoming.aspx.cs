using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Incoming : System.Web.UI.Page
{
    Class1 cl = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          //  cl.display("incomming", GridView1);
            
        
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //cl.insert1("incomming", "amount, date, name, remark","'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'");
            SqlCommand cmd = new SqlCommand("insert into incomming(amount,date,name,remark,month,year,c_date) values(@amount,@date,@name,@remark,@month,@year,@c_date) ", cl.con);
            {
                //cmd.CommandType=CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@amount", TextBox1.Text);
                cmd.Parameters.AddWithValue("@date", TextBox2.Text);
                cmd.Parameters.AddWithValue("@name", TextBox3.Text);
                cmd.Parameters.AddWithValue("@remark", TextBox4.Text);
                cmd.Parameters.AddWithValue("@month", Convert.ToDateTime(TextBox2.Text).ToString("MM"));
                //System.DateTime.Now.ToString("MM"));
                cmd.Parameters.AddWithValue("@year", Convert.ToDateTime(TextBox2.Text).ToString("yyyy"));
                cmd.Parameters.AddWithValue("@c_date", Convert.ToDateTime(TextBox2.Text).ToString());
                try
                {

                    cl.con.Open();
                    cmd.ExecuteNonQuery();
                    Label4.Text = "Submitted Sucessfully.....";
                    // Response.Write("<script>alert('Sumbited Sucessfully.....')</script>");
                    cl.con.Close();

                }
                catch
                {
                    //Response.Write("<script>alert('co....)</script>");
                }

                //cl.display("incomming", GridView1);
            }
            //type_trans,       total,                          month,                                                  year,                                                                date
            cl.insert1("Income_Transtions", "type_trans,total,month, year, date,income_id,name", "'Credit','" + TextBox1.Text + "','" + Convert.ToDateTime(TextBox2.Text).ToString("MM") + "','" + Convert.ToDateTime(TextBox2.Text).ToString("yyyy") + "','" + Convert.ToDateTime(TextBox2.Text).ToString("dd/MM/yyyy") + "','','" + TextBox3.Text + "'");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

        }
        catch 
        {
        
        }
        
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int idd = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlCommand cmd = new SqlCommand("delete from incomming where incoming_id=@incoming_id", cl.con);
        {
            cmd.Parameters.AddWithValue("@incoming_id",idd);
            try
            {
                cl.con.Open();
                cmd.ExecuteNonQuery();
                cl.con.Close();
                Response.Write("<script>alert('Deleted Sucessfully .....')</script>");

                cl.display("incomming", GridView1);
            }
            catch
            {

                cl.display("incomming", GridView1);
            }
        
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
        TextBox1.Text = "00.00";
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
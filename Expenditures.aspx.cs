using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Expenditures : System.Web.UI.Page
{
    Class1 cl = new Class1();
    public int i;
    Class1 sa = new Class1();
    string RCid;
    public int total = 0;
    decimal totalPrice = 0M;
    int totalItems = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           

            for (i = 1; i <= 31; i++)
            {
                ddldd.Items.Add(i.ToString());
            }

            

            for (i = 1990; i <= 2025; i++)
            {
                ddlyy.Items.Add(i.ToString());
            }

            cl.display("Header_name_master",GridView2);
        }
        btnupdate.Visible = false;
        txtcdno.Visible = false;
        Label10.Visible = false;

        Panel1.Visible = false;
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddldd.SelectedIndex == 0 && ddlmm.SelectedIndex == 0 && ddlyy.SelectedIndex == 0)
            {
                Response.Write("<script>alert('Select Day ,Month and Year...')</script>");

            }
            else
            {
                if (ddlmm.SelectedIndex == 0 && ddlyy.SelectedIndex == 0)
                {
                    Response.Write("<script>alert('Select Month and Year...')</script>");

                }
                else
                {

                    if (ddlyy.SelectedIndex == 0)
                    {
                        Response.Write("<script>alert('Select Year...')</script>");

                    }
                    else
                    {


                        sa.auto2("sending_Transtions", "income_id", "OTHE");
                        RCid = sa.cid;
                        string datte = ddldd.SelectedValue + "/" + ddlmm.SelectedValue + "/" + ddlyy.SelectedValue;
                        cl.usepro("sp_add_Expenditures", "'" + TextBox1.Text + "','" + rbtrupee.SelectedItem.Text + "','" + ddldd.SelectedItem.Text + "','" + ddlmm.SelectedValue + "','" + ddlyy.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + datte + "','" + txtcdno.Text + "'");
                        //cl.insert1("sending_Transtions", "type_trans,total", "'Expenditurefee_T','" + TextBox5.Text + "'");
                        cl.insert1("sending_Transtions", "type_trans,total,month, year,date,income_id,name", "'" + DropDownList1.SelectedItem.Text + "','" + TextBox5.Text + "','" + ddlmm.SelectedValue + "','" + ddlyy.SelectedValue + "','" + datte + "','" + RCid + "','" + TextBox1.Text + "'");
                        // sa.insert1("sending_Transtions", "type_trans,total,month, year, date,income_id", "'Employee','" + txt_total.Text + "','" + Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("MM") + "','" + Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("yyyy") + "','" + Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("dd/MM/yyyy") + "','" + RCid + "'");
                        Response.Write("<script>alert('Submitted Sucessfully .........')</script>");
                        cl.displaycond("Expendituresdtl", "Voucher_no", "'" + TextBox1.Text + "'", GridView1);
                        TextBox1.Text = "";
                        txtcdno.Text = "";
                        DropDownList1.SelectedIndex = 0;
                        //TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                    }
                }
            }

        }
        catch
        { 
        
        
        }

    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        cl.usepro("sp_Expenditureshow", "");
        GridView1.DataSource = cl.ds;
        GridView1.DataBind();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string expnd = Convert.ToInt32(GridView1.SelectedValue).ToString();
        cl.usepro("sp_uptexpend", "'" + expnd + "','" + TextBox1.Text + "','" + rbtrupee.SelectedItem.Text + "','" + ddldd.SelectedItem.Text + "','" + ddlmm.SelectedItem.Text + "','" + ddlyy.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + txtcdno.Text + "'");
        cl.usepro("sp_Expenditureshow", "");
        GridView1.DataSource = cl.ds;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string expnd = Convert.ToInt32(GridView1.SelectedValue).ToString();
        cl.usepro("sp_editdata", "'"+expnd+"'");
        TextBox1.Text = cl.ds.Tables[0].Rows[0]["Voucher_no"].ToString();
        txtcdno.Text = cl.ds.Tables[0].Rows[0]["payment_type"].ToString();
        ddldd.SelectedItem.Text = cl.ds.Tables[0].Rows[0]["Date_DD"].ToString();
        ddlmm.SelectedItem.Text = cl.ds.Tables[0].Rows[0]["Date_MM"].ToString();
        ddlyy.SelectedItem.Text = cl.ds.Tables[0].Rows[0]["Date_YY"].ToString();
        //string head = cl.ds.Tables[0].Rows[0]["Head"].ToString();

        //for (int j = 0; j < DropDownList1.Items.Count; j++)
        //{
        //    if (DropDownList1.Items[j].Text == head)
        //    {
        //        //DropDownList1.SelectedItem.Text = head;

        //        DropDownList1.Items[j].Selected = true;
        //        break;
        //    }
        //}

        DropDownList1.SelectedItem.Text = cl.ds.Tables[0].Rows[0]["Head"].ToString();
        TextBox4.Text = cl.ds.Tables[0].Rows[0]["Description"].ToString();
        string amt = cl.ds.Tables[0].Rows[0]["Amount"].ToString();
        TextBox5.Text = Convert.ToDecimal(amt).ToString("N");
        btnsave.Visible = false;
        btnupdate.Visible = true;

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
            Label lblTotalPrice = (Label)e.Row.FindControl("lbltotal");


            lblTotalPrice.Text = totalPrice.ToString();



        } 

    }
    protected void ddlmm_SelectedIndexChanged(object sender, EventArgs e)
    {

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



    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
    
    }
    protected void rbtrupee_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbtrupee.SelectedItem.Text == "Cash")
        {
            txtcdno.Visible = false;
            Label10.Visible = false;
        }
        else
        {
            txtcdno.Visible = true;
            Label10.Visible = true;
            txtcdno.Focus();
        }

        if (rbtrupee.SelectedItem.Text == "Cash")
        {
            txtcdno.Visible = false;
            Label10.Visible = false;
        }
        else
        {
            txtcdno.Visible = true;
            Label10.Visible = true;
            txtcdno.Focus();
        }
    }


    protected void btnreset_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
        TextBox5.Text = "00.00";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cl.insert1("Header_name_master", "head_name", "'" + TextBox6.Text + "'");
        }
        catch
        {
        }

    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int hid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        cl.delete("Header_name_master", "head_id", "'"+hid+"'");
        cl.display("Header_name_master", GridView2);
    }
}
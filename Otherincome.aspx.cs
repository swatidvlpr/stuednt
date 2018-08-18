using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_Otherincome : System.Web.UI.Page
{
    Class1 cl = new Class1();
    public int i;
    string RCid;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {
                cl.read("disp_otherpaymentg", "'" +DropDownList1.SelectedValue + "'");
                GridView1.DataSource = cl.ds;
                GridView1.DataBind();
                txtcdno.Visible = false;


                cl.ds.Clear();
                cl.read("disp_source1", "");
                DropDownList1.DataSource = cl.ds;
                DropDownList1.DataTextField = "Other_sourse_nm";
                DropDownList1.DataValueField = "other_source_id";
                DropDownList1.DataBind();

               // Panel1.Visible = false;




                if (Request.QueryString["idd"] == null)
                {
                    //cl.read("disp_otherpaymentg", "'" + txtheadname.Text + "'");
                    //GridView1.DataSource = cl.ds;
                    //GridView1.DataBind();
                    //txtcdno.Visible = false;


                    //cl.ds.Clear();
                    //cl.read("disp_source", "");
                    //DropDownList1.DataSource = cl.ds;
                    //DropDownList1.DataTextField = "Other_sourse_nm";
                    //DropDownList1.DataValueField = "other_source_id";
                    //DropDownList1.DataBind();

                    //Panel1.Visible = false;




                }
                else
                {
                    //Panel1.Visible = false;
                    cl.ds.Clear();
                    string idd2 = Request.QueryString["idd"].ToString();
                    cl.read1("other_payment", "fid", "'" + idd2 + "'");


                    

                   

                    cl.ddlcond("Assighn_Income_rate", "Name", "Source_id", "Sourcehdnm", "'" + DropDownList1.SelectedItem.Text + "'", DropDownList2);
                    //TextBox1.Text = cl.ds.Tables[0].Rows[0]["date"].ToString();
                    DropDownList2.SelectedItem.Text = cl.ds.Tables[0].Rows[0]["name"].ToString();
                    //txtheadname.Text = cl.ds.Tables[0].Rows[0]["headernm"].ToString();
                    string str = cl.ds.Tables[0].Rows[0]["due"].ToString();
                    txtAmount.Text = Convert.ToDecimal(str).ToString("N"); ;
                    //string mode = cl.ds.Tables[0].Rows[0]["payment_type"].ToString();
                    //for (int i = 0; i < rbtrupee.Items.Count; i++)
                    //{
                    //    if (rbtrupee.Items[i].Text == mode)
                    //    {
                    //        rbtrupee.Items[i].Selected = true;
                    //        if (rbtrupee.Items[i].Text == "Cash")
                    //        {

                    //            txtcdno.Visible = false;
                    //        }

                    //        else
                    //        {
                    //            txtcdno.Visible = true;
                    //            //txtcdno.Text = cl.ds.Tables[0].Rows[0]["chq_dd_dtl"].ToString();



                    //        }

                    //    }


                    //}


                    //txtremark.Text = cl.ds.Tables[0].Rows[0]["remarks"].ToString();

                    //cl.read("disp_source1", "");
                    //DropDownList1.DataSource = cl.ds;
                    //DropDownList1.DataTextField = "Other_sourse_nm";
                    //DropDownList1.DataValueField = "other_source_id";
                    //DropDownList1.DataBind();
                    //string str1 = cl.ds.Tables[0].Rows[0]["headernm"].ToString();
                    //for (int i = 0; i < DropDownList1.Items.Count; i++)
                    //{
                    //    if (DropDownList1.Items[i].Text == str1)
                    //    {

                    //        DropDownList1.Items[i].Selected = true;
                    //    }

                    //}



                    string headname = cl.ds.Tables[0].Rows[0]["headernm"].ToString();


                    cl.read("disp_source", "");
                    DropDownList1.DataSource = cl.ds;
                    DropDownList1.DataTextField = "Other_sourse_nm";
                    DropDownList1.DataValueField = "other_source_id";
                    DropDownList1.DataBind();


                    for (int i = 0; i < DropDownList1.Items.Count; i++)
                    {
                        if (DropDownList1.Items[i].Text == headname)
                        {
                            DropDownList1.Items[i].Selected = true;

                        }
                        else
                        {
                            DropDownList1.Items[i].Selected = false;


                        }



                    }
                   // btnpaid.Text = "Update";
                    Label10.Visible = false;
                    lblpay0.Visible = false;
                    
                    txtcdno.Visible = false;

                }









            }
            else
            {
                //Panel1.Visible = false;
                string idd1 = Request.QueryString["id"].ToString();
                cl.read1("other_payment", "fid", "'"+idd1+"'");


                TextBox1.Text = cl.ds.Tables[0].Rows[0]["date"].ToString();
                DropDownList2.SelectedItem.Text=cl.ds.Tables[0].Rows[0]["name"].ToString();
                //txtheadname.Text = cl.ds.Tables[0].Rows[0]["headernm"].ToString();
                string str=cl.ds.Tables[0].Rows[0]["Amount"].ToString();
                txtAmount.Text = Convert.ToDecimal(str).ToString("N"); ; 
                string mode = cl.ds.Tables[0].Rows[0]["payment_type"].ToString();
                for (int i = 0; i < rbtrupee.Items.Count; i++)
                {
                    if (rbtrupee.Items[i].Text == mode)
                    {
                        rbtrupee.Items[i].Selected = true;
                        if (rbtrupee.Items[i].Text == "Cash")
                        {

                            txtcdno.Visible = false;
                        }

                        else
                        {
                            txtcdno.Visible = true;
                            txtcdno.Text = cl.ds.Tables[0].Rows[0]["chq_dd_dtl"].ToString();
                        
                        
                        
                        }
                    
                    }
                
                
                }


                txtremark.Text = cl.ds.Tables[0].Rows[0]["remarks"].ToString();

                string headname = cl.ds.Tables[0].Rows[0]["headernm"].ToString();


                cl.read("disp_source", "");
                DropDownList1.DataSource = cl.ds;
                DropDownList1.DataTextField = "Other_sourse_nm";
                DropDownList1.DataValueField = "other_source_id";
                DropDownList1.DataBind();


                for (int i = 0; i < DropDownList1.Items.Count; i++)
                {
                    if (DropDownList1.Items[i].Text == headname)
                    {
                        DropDownList1.Items[i].Selected = true;

                    }
                    else
                    {
                        DropDownList1.Items[i].Selected = false;


                    }



                }
                btnpaid.Text = "Update";

            }




            






          
        }
        
        Label10.Visible = false;
    }
    //protected void btnsave_Click(object sender, EventArgs e)
    //{
    //    //// string datte=ddldd.SelectedItem.Text+"/"+ddlmm.SelectedItem.Text+"/"+ddlyy.SelectedItem.Text;
    //    //cl.usepro("Add_Other_Income", "'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "'");
    //    ////cl.insert1("sending_Transtions", "type_trans,total", "'Expenditurefee_T','" + TextBox5.Text + "'");
    //    //cl.insert1("Income_Transtions", "type_trans,total,month, year,date", "'Other+('"+TextBox3.Text+"')','" + TextBox5.Text + "','" + Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("MM") + "','" + Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("yyyy") + "','" + Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("dd/MM/yyyy") + "'");

    //    ////TextBox1.Text = "";
    //    ////TextBox2.Text = "";
    //    //TextBox3.Text = "";
    //    //TextBox4.Text = "";
    //    //TextBox5.Text = "";
    //}
    protected void btnview_Click(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnpaid_Click(object sender, EventArgs e)
    {
        if (btnpaid.Text == "Update")
        {
            string idd1 = Request.QueryString["id"].ToString();
            cl.update("other_payment", "headernm='" + DropDownList1.SelectedItem.Text + "',name='"+DropDownList2.SelectedItem.Text+"',date='"+TextBox1.Text+"', Amount='" + txtAmount.Text + "', payment_type='" + rbtrupee.SelectedItem.Text + "', chq_dd_dtl='" + txtcdno.Text + "', remarks='" + txtremark.Text + "'", "fid", "'" + idd1 + "'");
        }
        else
        {
            cl.auto2("Income_Transtions", "income_id", "OTHE");
            RCid = cl.cid;
            //@headernm,@Amount,@payment_type,@chq_dd_dtl,@remarks,@date,@month,@year
            SqlCommand cmd = new SqlCommand("add_other_payment", cl.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@headernm",DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Amount", txtAmount.Text);
            cmd.Parameters.AddWithValue("@payment_type", rbtrupee.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@chq_dd_dtl", txtcdno.Text);
            cmd.Parameters.AddWithValue("@remarks", txtremark.Text);
            cmd.Parameters.AddWithValue("@date",TextBox1.Text);

            cmd.Parameters.AddWithValue("@month",Convert.ToDateTime(TextBox1.Text).ToString("MM"));
            //System.DateTime.Now.ToString("MM"));
            cmd.Parameters.AddWithValue("@year",Convert.ToDateTime(TextBox1.Text).ToString("yyyy"));
            cmd.Parameters.AddWithValue("@income_id", RCid);
            cmd.Parameters.AddWithValue("@payment",txtpayment.Text);
            cmd.Parameters.AddWithValue("@due",txtdue.Text);
            cmd.Parameters.AddWithValue("@name", DropDownList2.SelectedItem.Text);
            string status = "paid";
            cmd.Parameters.AddWithValue("@Status", status);
            try
            {
                cl.con.Open();
                cmd.ExecuteNonQuery();
                cl.con.Close();
                lblms.Text = "Submitted Successfully... ";
                cl.ds.Clear();
                cl.read("disp_otherpaymentg", "'" + DropDownList1.SelectedItem.Text + "'");
                GridView1.DataSource = cl.ds;
                GridView1.DataBind();

            }
            catch (Exception ee)
            {


            }
            cl.insert1("Income_Transtions", "type_trans,total,month, year, date,income_id,name", "'" + DropDownList1.SelectedItem.Text + "','" + txtpayment.Text + "','" + Convert.ToDateTime(TextBox1.Text).ToString("MM") + "','" + Convert.ToDateTime(TextBox1.Text).ToString("yyyy") + "','" + Convert.ToDateTime(TextBox1.Text).ToString("dd/MM/yyyy") + "','" + RCid + "','" + DropDownList2.SelectedItem.Text+ "'");
            txtAmount.Text = "";
            txtcdno.Text = "";
            DropDownList1.SelectedIndex = 0;
            txtremark.Text = "";
            TextBox1.Text = "";
        }
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
    }
   
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fidd = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        cl.read("del_otherpaymentg", "'"+fidd+"'");
        cl.read("disp_otherpaymentg", "");
        GridView1.DataSource = cl.ds;
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if (DropDownList1.SelectedItem.Text == "Other")
        //{
        //    Panel1.Visible = true;
        //}
        //else
        //{ 
        
        //}
       // cl.ddlcond("Assighn_Income_rate","Name","Source_id", "Sourcehdnm", "'" + DropDownList1.SelectedItem.Text + "'", DropDownList2);
        cl.query("select Source_id,Name from Assighn_Income_rate where Sourcehdnm='" + DropDownList1.SelectedItem.Text + "' union select 0,'--Select--'");
        DropDownList2.DataSource = cl.ds;
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "Source_id";
        DropDownList2.DataBind();

    }
  
    protected void txtpayment_TextChanged(object sender, EventArgs e)
    {
        decimal tamount = Convert.ToDecimal(txtAmount.Text);
        decimal payment = Convert.ToDecimal(txtpayment.Text);
        decimal due = tamount - payment;
        txtdue.Text = due.ToString("N");

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        cl.displaycond("other_payment", "name", "'" + DropDownList2.SelectedItem.Text + "'", GridView1);


    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //try
        //{
            cl.read1("Assighn_Income_rate", "Name", "'" + DropDownList2.SelectedItem.Text + "'");
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                //string tamount = cl.ds.Tables[0].Rows[0]["Total_amount"].ToString();
                //txtAmount.Text = Convert.ToDecimal(tamount).ToString("N"); ;
            }
            else
            {
                cl.ds.Clear();
                cl.query("SELECT TOP 1 * FROM other_payment where name='" + DropDownList2.SelectedItem.Text + "' ORDER BY fid DESC");

                if (cl.ds.Tables[0].Rows.Count == 0)
                {
                    cl.query("SELECT Top 1 * FROM Assighn_Income_rate where name='" + DropDownList2.SelectedItem.Text + "' ORDER BY Source_id DESC");
                    string tamount = cl.ds.Tables[0].Rows[0]["Total_amount"].ToString();
                    txtAmount.Text = Convert.ToDecimal(tamount).ToString("N");
                
                }
                else
                {
                    string tamount = cl.ds.Tables[0].Rows[0]["due"].ToString();
                    txtAmount.Text = Convert.ToDecimal(tamount).ToString("N"); ;
                }
            }
        //}
        //catch
        //{ 
        
        
        //}


    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
        txtAmount.Text = "00.00";
        txtpayment.Text = "00.00";
        txtdue.Text = "00.00";
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
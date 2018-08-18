using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_faculty_payment : System.Web.UI.Page
{
    Class1 cl = new Class1();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 1990; i <= 2050; i++)
            {
                DropDownList2.Items.Add(i.ToString());


            }
          
           // DropDownList2.Text = DateTime.Now.Year.ToString();
            //string mnth= DateTime.Now.Month.ToString();

           // DropDownList1.Text = System.DateTime.Now.ToString("MM");
        }
        txtcdno.Visible = false;
        Label10.Visible = false;
        
    }
    protected void rbtrupee_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbtrupee.SelectedItem.Text == "Cash")
        {
            txtcdno.Visible = false;
            Label10.Visible = false;
            //Label1.Visible = false;
        }
        else
        {

            txtcdno.Visible = true;
            Label10.Visible = true;

        }
    }
    protected void txtremark_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtid_TextChanged(object sender, EventArgs e)
    {
        if (txtid.Text == "")
        { 
        
        
        
        }
        else
        {



            cl.query("select  * from facultyentry  where Fuculty_id='" + txtid.Text + "'");
            if (cl.ds.Tables[0].Rows.Count == 0)
            { }
            else
            {

                txtname.Text = cl.ds.Tables[0].Rows[0]["name"].ToString();
                cl.ds.Clear();

                //cl.read("previous_due", "'" + txtid.Text + "'");
                //if (cl.ds.Tables[0].Rows.Count == 0)
                //{ }
                //else
                //{
                //    string duee = cl.ds.Tables[0].Rows[0]["due"].ToString();
                //    txtpreviousdue.Text = Convert.ToDecimal(duee).ToString("N");
                //    //cl.ds.Clear();
                //}
            }
        }


    }
    protected void txtdt_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
        cl.cmd = new SqlCommand("", cl.con);
        cl.cmd = new SqlCommand("add_faculty_payment", cl.con);
        cl.cmd.CommandType = CommandType.StoredProcedure;

        //@Fac_id,@name,@month,@year,@Total_class,@fee_per_class,@Total_payment, @previous_due,@total_balance,@payment,@due,@paymenttype,
        //@paymentdtl,@paidby,@date,@Remark,@status

        cl.cmd.Parameters.AddWithValue("@Fac_id",txtid.Text);
        cl.cmd.Parameters.AddWithValue("@name",txtname.Text);
        cl.cmd.Parameters.AddWithValue("@month", DropDownList1.SelectedValue);
        cl.cmd.Parameters.AddWithValue("@year", DropDownList2.SelectedValue);
        string totalcls = "";
        cl.cmd.Parameters.AddWithValue("@Total_class", totalcls);
        string percls = "";
        cl.cmd.Parameters.AddWithValue("@fee_per_class", percls);
        cl.cmd.Parameters.AddWithValue("@Total_payment",txttotalpay.Text);
        cl.cmd.Parameters.AddWithValue("@previous_due", txtpreviousdue.Text);
       // string startTime = TextBox6.Text + DropDownList2.SelectedItem.Text;
        cl.cmd.Parameters.AddWithValue("@total_balance", TextBox1.Text);

        cl.cmd.Parameters.AddWithValue("@payment",txtpayment.Text);

        //string endTime = TextBox11.Text + DropDownList3.SelectedItem.Text;

        cl.cmd.Parameters.AddWithValue("@due",txtdue.Text);
        cl.cmd.Parameters.AddWithValue("@paymenttype",rbtrupee.SelectedItem.Text);

        cl.cmd.Parameters.AddWithValue("@paymentdtl", txtcdno.Text);
        cl.cmd.Parameters.AddWithValue("@paidby",txtremark.Text);
        cl.cmd.Parameters.AddWithValue("@date", txtdt.Text);
        cl.cmd.Parameters.AddWithValue("@Remark",txtdtlremark.Text);
        string status = "1";
        cl.cmd.Parameters.AddWithValue("@status", status);
        
            cl.con.Open();
            cl.cmd.ExecuteNonQuery();
            cl.con.Close();
            Label12.Text = "Submitted Sucessfully.....";






        }
        catch
        {


        }

        cl.query("select  * from Classentry  where Faculty_id='" + txtid.Text + "' and month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "' and status=0");
         if (cl.ds.Tables[0].Rows.Count == 0)
         { 
         
         }
         else
         {
             for (int i = 0; i < cl.ds.Tables[0].Rows.Count; i++)
             {
                 cl.query("update Classentry set status=1 where Faculty_id='" + txtid.Text + "' and month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "' and status=0");

             
             }

         }

         cl.insert1("sending_Transtions", "type_trans,total,month, year, date,income_id,name", "'Faculty payment','" + txtpayment.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + Convert.ToDateTime(txtdt.Text).ToString("dd/MM/yyyy") + "','','" + txtid.Text  + "'");

         txtcdno.Text = "";
         txtname.Text = "";
         DropDownList1.SelectedIndex = 0;
         DropDownList2.SelectedIndex = 0;
         //txttotalclass.Text = "0";
         //txtfperclass.Text = "00.00";
         txttotalpay.Text = "00.00";
         txtpreviousdue.Text = "00.00";
         TextBox1.Text = "00.00";
         txtpayment.Text = "00.00";
         txtdue.Text = "00.00";
         txtcdno.Text = "";
         txtremark.Text = "";
         txtdt.Text = "";
         txtdtlremark.Text = "";
        
       
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        cl.query("select * from Classentry where Faculty_id='" + txtid.Text + "' and month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "'  and status=0");
        if (cl.ds.Tables[0].Rows.Count == 0)
        {
            //cl.query("SELECT TOP 1 * FROM faculty_payment where Fac_id='" + txtid.Text + "' and month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "'  ORDER BY fac_payment_id DESC");

            cl.query("SELECT TOP 1 * FROM faculty_payment where Fac_id='" + txtid.Text + "' and year='" + DropDownList2.SelectedValue + "'  ORDER BY fac_payment_id DESC");


            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                TextBox1.Text = txttotalpay.Text;
            }
            else
            {
                string p_payment = cl.ds.Tables[0].Rows[0]["due"].ToString();
                txtpreviousdue.Text = Convert.ToDecimal(p_payment).ToString("N");

                double ttaldue = Convert.ToDouble(txttotalpay.Text);
                double priousdue = Convert.ToDouble(txtpreviousdue.Text);
                double due = ttaldue + priousdue;
                TextBox1.Text = due.ToString("N");

            }
        }
        else
        {


            cl.ds.Clear();
            string qls = "select  Sum(no_of_Class) as TotalClass, Sum(Totalpayment) as Totalpayment from Classentry  where Faculty_id='" + txtid.Text + "' and month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "' and status=0";
            cl.da = new SqlDataAdapter(qls, cl.con);
            cl.da.Fill(cl.ds);

            string totalpay = cl.ds.Tables[0].Rows[0]["Totalpayment"].ToString();
            txttotalpay.Text = Convert.ToDecimal(totalpay).ToString("N");
            //txttotalclass.Text = cl.ds.Tables[0].Rows[0]["TotalClass"].ToString();
            //txttotalclass.Text = cl.ds.Tables[0].Rows[0]["TotalClass"].ToString();
            cl.ds.Clear();
            cl.query("select  * from Classentry  where Faculty_id='" + txtid.Text + "' and month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "'and status=0");
            if (cl.ds.Tables[0].Rows.Count == 0)
            { }
            else
            { 

            txtname.Text = cl.ds.Tables[0].Rows[0]["Name"].ToString();
           // string perclasss = cl.ds.Tables[0].Rows[0]["PerClass"].ToString();
           // txtfperclass.Text = Convert.ToDecimal(perclasss).ToString("N");
            }
            cl.ds.Clear();
            
            
            //cl.query("SELECT     Fac_id, month, year, due FROM  dbo.faculty_payment where Fac_id='" + txtid.Text + "' and month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "'");

            //cl.query("SELECT TOP 1 * FROM faculty_payment where Fac_id='" + txtid.Text + "' and month='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "'  ORDER BY fac_payment_id DESC");

            cl.query("SELECT TOP 1 * FROM faculty_payment where Fac_id='" + txtid.Text + "' and year='" + DropDownList2.SelectedValue + "'  ORDER BY fac_payment_id DESC");
           
            
            
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
               TextBox1.Text=txttotalpay.Text;
            }
            else
            {
                string p_payment = cl.ds.Tables[0].Rows[0]["due"].ToString();
                txtpreviousdue.Text = Convert.ToDecimal(p_payment).ToString("N");

                    double ttaldue = Convert.ToDouble(txttotalpay.Text);
                    double priousdue = Convert.ToDouble(txtpreviousdue.Text);
                    double due = ttaldue + priousdue;
                    TextBox1.Text = due.ToString("N");
             
            }

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

       
          // }
        //}
    }
    protected void txtpayment_TextChanged(object sender, EventArgs e)
    {
        double bal = Convert.ToDouble(TextBox1.Text);
        double payment = Convert.ToDouble(txtpayment.Text);
        double c_due = bal - payment;
        txtdue.Text = c_due.ToString("N");


    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    //protected void txtfperclass_TextChanged(object sender, EventArgs e)
    //{
    //    double tot_class = Convert.ToDouble(txttotalclass.Text);
    //    double fee_p_clas = Convert.ToDouble(txtfperclass.Text);
    //    double total_pay = tot_class * fee_p_clas;
    //    txttotalpay.Text = total_pay.ToString("N");

    //    double totalpreviousdue = Convert.ToDouble(txtpreviousdue.Text);

    //    double total_balance = total_pay + totalpreviousdue;
    //    TextBox1.Text = total_balance.ToString("N");



        
    //}
    protected void txttotalpay_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
        txttotalpay.Text = "00.00";
        txtpreviousdue.Text = "00.00";
        TextBox1.Text = "00.00";
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
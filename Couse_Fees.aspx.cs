using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Couse_Fees : System.Web.UI.Page
{
    Class1 sa = new Class1();
    string RCid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        
        txtcdno.Visible = false;
        Label10.Visible = false;
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
        
        }
      
    }
    protected void btnpaid_Click(object sender, EventArgs e)
    {
        sa.auto2("fee_payment", "Reciept_id", "SMRC");
        RCid = sa.cid;
      

        if (rbtrupee.SelectedItem.Text == "Cash")
        {

            decimal c_fee = Convert.ToDecimal(txtcorcefee.Text);
            string cc_fee = c_fee.ToString("N");
        
            sa.usepro("Add_fee_payment", "'" + RCid + "','" + txtregid.Text + "','" + txtsname.Text + "','" + cc_fee + "','" + txtpay.Text + "','" + rbtrupee.SelectedItem.Text + "','" + txtdue.Text + "','NA','" + txtremark.Text + "','" + TextBox1.Text + "','" + Convert.ToDateTime(TextBox1.Text).ToString("MM") + "','" + Convert.ToDateTime(TextBox1.Text).ToString("yyyy") + "','" + Convert.ToDateTime(TextBox1.Text).ToString("dd/MM/yyyy") + "','" + txtno_install.Text + "','" + txt_per_install.Text + "','"+TextBox2.Text+"'");
            lblms.Text = "Submitted Successfully";
        }
        else
        {
            sa.usepro("Add_fee_payment", "'" + RCid + "','" + txtregid.Text + "','" + txtsname.Text + "','" + txtcorcefee.Text + "','" + txtpay.Text + "','" + rbtrupee.SelectedItem.Text + "','" + txtdue.Text + "','" + txtcdno.Text + "','" + txtremark.Text + "','" + TextBox1.Text + "','" + Convert.ToDateTime(TextBox1.Text).ToString("MM") + "','" + Convert.ToDateTime(TextBox1.Text).ToString("yyyy") + "','" + Convert.ToDateTime(TextBox1.Text).ToString("dd/MM/yyyy") + "','" + txtno_install.Text + "','" + txt_per_install.Text + "','" + TextBox2.Text + "'");
            lblms.Text = "Submitted Successfully";
        }
                                                                                           //type_trans,            total,                  month,                                                                      year,                                           date,           income_id,          name
        sa.insert1("Income_Transtions", "type_trans,total,month, year, date,income_id,name", "'Training fee','" + txtpay.Text + "','" + Convert.ToDateTime(TextBox1.Text).ToString("MM") + "','" + Convert.ToDateTime(TextBox1.Text).ToString("yyyy") + "','" + TextBox1.Text + "','" + RCid + "','" + txtsname.Text + "'");

       

        sa.ds.Clear();
        sa.displaycond2("fee_payment", "Reg_id", "'" + txtregid.Text + "'", "date", "'" + TextBox1.Text + "'", GridView1);
        //txtregid.Text = "";
        txtsname.Text = "";
        txtcorcefee.Text = "";
        txtpay.Text = "00.00";
       // TextBox1.Text = "";
        txtdue.Text = "";
        txtno_install.Text = "";
        txt_per_install.Text = "00.00";
        txtcdno.Text = "";
        txtremark.Text = "";

    }
    protected void btnprint_Click(object sender, EventArgs e)
    {
     
       // string c_date = Convert.ToDateTime(TextBox1.Text).ToString();
        string c_date =TextBox1.Text;

        string strPopup = "<script language='javascript' ID='script1'>"

             // Passing intId to popup window.
            // + "window.open('memberwork.aspx?data=" + HttpUtility.UrlEncode(str.ToString())

                // window.open('Billingprint.aspx?id=' + txtNameClientObject +'&idd=' + txtNameClientObject1 +'&idd1=' + txtNameClientObject2, null, 'height=850,width=850,titlebar=0,statusbar=0;toolbar=0,location=0,screenx=0,screeny=0,directories=0,status=0,menuBar=0,scrollBars=yes,left=0,top=0,resizable=0');

              + "window.open('billprint.aspx?id=" + HttpUtility.UrlEncode(txtregid.Text) + "&idd=" + c_date.ToString()


             //+ "','new window', 'top=90, left=200, width=300, height=100, dependant=no, location=0, alwaysRaised=no, menubar=no, resizeable=no, scrollbars=n, toolbar=no, status=no, center=yes')"

                + "','new window', 'top=90, left=200, width=630, height=400, dependant=no, location=0, alwaysRaised=no, menubar=no, resizeable=no, scrollbars=n, toolbar=no, status=no, center=yes')"

             + "</script>";

        ScriptManager.RegisterStartupScript((Page)HttpContext.Current.Handler, typeof(Page), "Script1", strPopup, false);



    }
    protected void txtpay_TextChanged(object sender, EventArgs e)
    {
        double c_fee = Convert.ToDouble(txtcorcefee.Text);
        double p_fee = Convert.ToDouble(txtpay.Text);
        double total = c_fee - p_fee;
        txtdue.Text = total.ToString("N");
    }
    protected void txtno_install_TextChanged(object sender, EventArgs e)
    {
        //double ii = Convert.ToDouble(txtdue.Text);
        //double iii =Convert.ToDouble(txtno_install.Text);
        //double iiii = ii / iii;
        //txt_per_install.Text= iiii.ToString("N");
    }
    protected void txtregid_TextChanged(object sender, EventArgs e)
    {
        sa.usepro("show_courcefee", "'" + txtregid.Text + "'");
        if (sa.ds.Tables[0].Rows.Count == 0)
        {


        }

        else
        {
            //sa.read1("fee_payment", "Reg_id", "'"+ddlreg.SelectedValue+"'");
            sa.ds.Clear();
            sa.query("select * from fee_payment where Reg_id ='" +txtregid.Text+ "' order by Reciept_id desc ");
            if (sa.ds.Tables[0].Rows.Count == 0)
            {
                sa.ds.Clear();
                sa.query("select * from Stud_reg where Reg_id ='" + txtregid.Text + "'");
                decimal c_fee = Convert.ToDecimal(sa.ds.Tables[0].Rows[0]["Total_Course_fees"].ToString());
                txtcorcefee.Text = c_fee.ToString("N");

                txtsname.Text = sa.ds.Tables[0].Rows[0]["Stud_nm"].ToString();

            }
            else
            {

                decimal c_fee = Convert.ToDecimal(sa.ds.Tables[0].Rows[0]["due"].ToString());
                txtcorcefee.Text = c_fee.ToString("N");

                txtsname.Text = sa.ds.Tables[0].Rows[0]["Snm"].ToString();
               // txtno_install.Text = sa.ds.Tables[0].Rows[0]["No_Of_Installment"].ToString();
                //txt_per_install.Text = sa.ds.Tables[0].Rows[0]["Per_Installment"].ToString();
            }






            sa.ds.Clear();
            sa.displaycond("fee_payment", "Reg_id", "'" + txtregid.Text + "'", GridView1);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
        txtpay.Text = "00.00";
        txt_per_install.Text = "00.00";
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
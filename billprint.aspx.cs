using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Currency;
public partial class admin_billprint : System.Web.UI.Page
{
    Currencytowordconvert mycurrency = new Currencytowordconvert();
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Button2.Attributes.Add("onClick", "javascript:history.back(-1); return false;");
       if (Request.QueryString["id"] == null)
        {




        }
        else
        {
            if (Request.QueryString["idd1"] == null)
           {
            string sid = Request.QueryString["id"].ToString();
            string cdt = Request.QueryString["idd"].ToString();
            //cl.read("disp_bill", "'"+sid+"','"+Convert.ToDateTime(cdt).ToString("dd/MM/yyyy")+"'");
            cl.read("disp_bill", "'" + sid + "','" +cdt + "'");
            FormView1.DataSource =cl.ds;
            FormView1.DataBind();
            string rpee = cl.ds.Tables[0].Rows[0]["paidmoney"].ToString();
            decimal rupee = Convert.ToDecimal(rpee);

            Label lb = (Label)this.FormView1.FindControl("lbl_rupee_in_word");
            //int dynamic = FormView1.itr.Rows.Count;
            //for (int d = 0; d <= dynamic - 1; d++)
            //{

            //    if (((TextBox)gdv_dyanmic.Rows[d].FindControl("txt_hours")).Text!="")
            //        {
            //        string strddl = ((DropDownList)gdv_dyanmic.Rows[d].FindControl("ddlcategory")).SelectedItem.Text;

            //        string strdetail2 = ((TextBox)gdv_dyanmic.Rows[d].FindControl("txt_details")).Text.ToString();
            //        if (strdetail2 != "")
            //        {
            //            strdetail = Convert.ToString(strdetail2);
            //        }
            //        else
            //        {
            //            strdetail = "";
            //        }



            lb.Text = Convert.ToString(mycurrency.currencyToword(Convert.ToDouble((rupee))));
           
           
           
           }
           else
           {
               string sid = Request.QueryString["id"].ToString();
               string cdt = Request.QueryString["idd1"].ToString();
               cl.read("disp_bill1", "'" + sid + "','" + cdt + "'");
               FormView1.DataSource = cl.ds;
               FormView1.DataBind();
               string rpee = cl.ds.Tables[0].Rows[0]["paidmoney"].ToString();
               decimal rupee = Convert.ToDecimal(rpee);

               Label lb = (Label)this.FormView1.FindControl("lbl_rupee_in_word");
               //int dynamic = FormView1.itr.Rows.Count;
               //for (int d = 0; d <= dynamic - 1; d++)
               //{

               //    if (((TextBox)gdv_dyanmic.Rows[d].FindControl("txt_hours")).Text!="")
               //        {
               //        string strddl = ((DropDownList)gdv_dyanmic.Rows[d].FindControl("ddlcategory")).SelectedItem.Text;

               //        string strdetail2 = ((TextBox)gdv_dyanmic.Rows[d].FindControl("txt_details")).Text.ToString();
               //        if (strdetail2 != "")
               //        {
               //            strdetail = Convert.ToString(strdetail2);
               //        }
               //        else
               //        {
               //            strdetail = "";
               //        }



               lb.Text = Convert.ToString(mycurrency.currencyToword(Convert.ToDouble((rupee))));
           
           

           
           }

        

            //lbl_grand.Text = Convert.ToString(total + vat + Convert.ToDecimal(previous_bal) - Convert.ToDecimal(adjustment));
            //string money = cl.ds.Tables[0].Rows[0]["paidmoney"].ToString();
            //decimal rupee = Convert.ToDecimal(money);
            //Label8.Text = Convert.ToString(mycurrency.currencyToword(Convert.ToDouble((rupee))));
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>javascript:print()</script>");
        Button1.Visible = false;
        Button2.Visible = false;
    }
}
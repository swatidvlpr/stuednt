using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Staff_attance : System.Web.UI.Page
    {
    Class1 cl = new Class1();
    public string curnt_inputtme1;
    public string curnt_outputtme1;
    double status;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cl.ddl("Employee_Registration", "Emp_Reg_ID", "Emp_Name", DropDownList1);

            DropDownList1.Items.Insert(00, new ListItem("---Select ID---", "NA"));
            if (Session["EmpID"] != null)
            {
                //cl.usepro("sp_retrivedata", "Emp_Reg_ID", "'" + Session["EmpID"].ToString() + "'");
                //cl.usepro("sp_retrivedata", "'" + Session["EmpID"].ToString() + "','"+System.DateTime.Now.ToString()+"'");
                cl.usepro("sp_retrivedata", "'" + DropDownList1.SelectedValue + "','" + System.DateTime.Now.ToString() + "'");
                if (cl.ds.Tables[0].Rows.Count != 0)
                {
                    TextBox1.Text = cl.ds.Tables[0].Rows[0]["Emp_Reg_ID"].ToString();
                    TextBox2.Text = cl.ds.Tables[0].Rows[0]["Emp_Name"].ToString();
                    TextBox3.Text = cl.ds.Tables[0].Rows[0]["Emp_Contact_Number"].ToString();
                    TextBox4.Text = cl.ds.Tables[0].Rows[0]["Emp_Email"].ToString();
                    TextBox5.Text = cl.ds.Tables[0].Rows[0]["Emp_Designation"].ToString();
                   // Button2.Enabled = false;
                    //TextBox6.Text = cl.ds.Tables[0].Rows[0]["Intime"].ToString();

                }
                else
                {
                    //Response.Redirect("Default.aspx");
                    ////TextBox1.Text = Session["EmpID"].ToString();
                    ////TextBox2.Text = Session["ename"].ToString();
                    ////TextBox3.Text = Session["emp_mobile"].ToString();
                    ////TextBox4.Text = Session["Email"].ToString();
                    ////TextBox5.Text = Session["emp_desg"].ToString();
                    //string curr_dt = Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("T");
                }


                //if (curr_dt == "11:00:52 AM")
                //{
                //    TextBox7.ReadOnly = true;
                //}
            }
            

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        DateTime crnttime = DateTime.Now;
        TimeZoneInfo tzn = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
        DateTime IndianTme = TimeZoneInfo.ConvertTime(crnttime, tzn);
        //string time = IndianTme.ToString("dd/MM/yyyy");
        string time = IndianTme.ToString("dd/MM/yyyy");
        //string time = IndianTme.ToString("h:mm:ss tt");
        //string curnt_dt = time;
        HiddenField3.Value = time;
        Label5.Text = HiddenField3.Value;
      
        HiddenField4.Value = IndianTme.ToString("MM");
        //Label6.Text = HiddenField4.Value;
        //string month = IndianTme.ToString("MM");

        //***US****

        string startTime = TextBox6.Text + DropDownList2.SelectedItem.Text;
        string endTime = TextBox7.Text + DropDownList3.SelectedItem.Text;
       
        TimeSpan duration = DateTime.Parse(endTime).Subtract(DateTime.Parse(startTime));
        HiddenField5.Value = duration.ToString();

        string str="06:30:00";
        TimeSpan t1 = TimeSpan.Parse(str);

        //t1 < t2

        if (duration <= t1)
        {

            string status2 = "0.5";
            status = Convert.ToDouble(status2);
                    
        }
        else
        { 
         string status2 = "1";
         status = Convert.ToDouble(status2);
        
        
        }

        //string timee = TextBox6.Text + "" + DropDownList2.SelectedItem.Text;

        //if (timee == "01:00AM")
        //{
        //    string status1 = "0.5";
        //    status = Convert.ToDouble(status1);


        //}
        //else
        //{
        //    string status2 = "1";
        //    status = Convert.ToDouble(status2);


        //}

        //if (timee == "1:00AM")
        //{
        //    string status1 = "0.5";
        //    status = Convert.ToDouble(status1);


        //}
        //else
        //{
        //    string status2 = "1";
        //    status = Convert.ToDouble(status2);


        //}

       




        //curnt_outputtme = Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("T");
        //string month = DateTime.Now.ToString("MM");

        //cl.usepro("sp_add_staff_attance1", "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" +TextBox6.Text+ "','" +TextBox7.Text+ "','" + HiddenField3.Value + "','" + HiddenField4.Value + "',1");
                                              //   Emp_Reg_ID,                              Emp_Name,               Emp_Contact_Number,         Emp_Email,          Emp_Designation,        Intime,                         In_m,                               Outtime,               Out_m,                                    Crt_date,                      Crt_month,                          Status,                          year1,                              duration,                Remark
        cl.usepro("sp_add_staff_attance1", "'" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox7.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox12.Text + "','" + Convert.ToDateTime(TextBox12.Text).ToString("MM") + "','" + status + "','" + Convert.ToDateTime(TextBox12.Text).ToString("yyyy") + "','" + HiddenField5.Value + "','" + TextBox10.Text + "'");
        Label2.Visible = true;
        Label2.Text = "Submitted Successfully";

        TextBox12.Text = "";
        TextBox6.Text = "00:00:00";
        TextBox7.Text = "00:00:00";
        TextBox10.Text = "";
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
    
        
    }
    //protected void Button2_Click1(object sender, EventArgs e)
    //{
    //    //*** US****
        
    //    DateTime crnttime = DateTime.Now;
    //    TimeZoneInfo tzn = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    //    DateTime IndianTme = TimeZoneInfo.ConvertTime(crnttime, tzn);
    //    //string time = IndianTme.ToString("dd/MM/yyyy h:mm:ss tt");
    //    string time = IndianTme.ToString("h:mm:ss tt");
    //    HiddenField1.Value = time;


    //    //***US****


    //   //HiddenField1.Value = Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("T");
    //   //HiddenField1.Value = dt;
    //   //decimal ii=Convert.ToInt32(HiddenField1.Value) - 9.30;
    //   //HiddenField3.Value = 
    //   //HiddenField1.Value = DateTime.Now.ToString("h:mm:ss tt");
    //    Label3.Text = HiddenField1.Value;
    //}
    //protected void Button3_Click1(object sender, EventArgs e)
    //{



    //    //*** US****


    //    DateTime crnttime = DateTime.Now;
    //    TimeZoneInfo tzn = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
    //    DateTime IndianTme = TimeZoneInfo.ConvertTime(crnttime, tzn);
    //    //string time = IndianTme.ToString("dd/MM/yyyy h:mm:ss tt");
    //    string time = IndianTme.ToString("h:mm:ss tt");
    //    HiddenField2.Value = time;


    //    //***US****

      
    //    //HiddenField2.Value = Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("T");
    //    //HiddenField2.Value = DateTime.Now.ToString("h:mm:ss tt");
    //    Label4.Text = HiddenField2.Value;
    //}
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //TextBox1.Text = Session["EmpID"].ToString();
        //TextBox2.Text = Session["ename"].ToString();
        //TextBox3.Text = Session["emp_mobile"].ToString();
        //TextBox4.Text = Session["Email"].ToString();
        //TextBox5.Text = Session["emp_desg"].ToString();
        cl.read("retrn_emp", "'"+DropDownList1.SelectedItem.Text+"'");
        if (cl.ds.Tables[0].Rows.Count!=0)
        {
            TextBox1.Text = cl.ds.Tables[0].Rows[0]["Emp_Name"].ToString();
            TextBox2.Text = cl.ds.Tables[0].Rows[0]["Emp_Name"].ToString();
            TextBox3.Text = cl.ds.Tables[0].Rows[0]["Emp_Contact_Number"].ToString();
            TextBox4.Text = cl.ds.Tables[0].Rows[0]["Emp_Email"].ToString();
            TextBox5.Text = cl.ds.Tables[0].Rows[0]["Current_designation"].ToString();
            Label2.Visible = false;
        }
        else
        { 
        
        
        
        }






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
    }
}
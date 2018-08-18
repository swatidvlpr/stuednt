using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_Staff_Entry : System.Web.UI.Page
{
    Class1 cl = new Class1();
    string empid,category;
    //string catgory;
    string day;
    protected void Page_Load(object sender, EventArgs e)
    {
        btn_udt.Visible = false;
        if (!IsPostBack)
        {



            for (int i = 1; i <= 31; i++)
            {

                ddlday.Items.Add(i.ToString());

            }

            for (int i = 1950; i <= 2200; i++)
            {

                ddlyr.Items.Add(i.ToString());

            }
            string[] str = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
            foreach (string ss in str)
            {
                ddlmonth.Items.Add(ss);

            }



            if (Request.QueryString["id"] != null)
            {
                Button1.Visible = false;
                btn_udt.Visible = true;
                string id = Request.QueryString["id"].ToString();
                cl.usepro("sp_up_staf", "'" + id + "'");
                //string dob = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyr.SelectedItem.Text;

                TextBox1.Text = cl.ds.Tables[0].Rows[0]["Emp_Name"].ToString();
                TextBox2.Text = cl.ds.Tables[0].Rows[0]["Emp_Present_Address"].ToString();
                TextBox3.Text = cl.ds.Tables[0].Rows[0]["mobileno2"].ToString();
                TextBox4.Text = cl.ds.Tables[0].Rows[0]["fathernm"].ToString();
                //TextBox5.Text = cl.ds.Tables[0].Rows[0]["Emp_Permanent_Pin"].ToString();
                TextBox6.Text = cl.ds.Tables[0].Rows[0]["Emp_Contact_Number"].ToString();


                string dob = cl.ds.Tables[0].Rows[0]["Emp_DOB"].ToString();


                for (int i = 1; i < ddlday.Items.Count; i++)
                {
                    string[] words = dob.Split('/');
                    foreach (string word in words)
                    {
                        //Console.WriteLine(word);
                        day = word.ToString();
                        if (ddlday.Items[i].Text == day)
                        {
                            ddlday.Items[i].Selected = true;

                        }
                    }
                }

                for (int i = 1; i < ddlmonth.Items.Count; i++)
                {
                    string[] words = dob.Split('/');
                    foreach (string word in words)
                    {
                        //Console.WriteLine(word);
                        day = word.ToString();
                        if (ddlmonth.Items[i].Text == day)
                        {
                            ddlmonth.Items[i].Selected = true;

                        }
                    }
                }

                for (int i = 1; i < ddlyr.Items.Count; i++)
                {
                    string[] words = dob.Split('/');
                    foreach (string word in words)
                    {
                        //Console.WriteLine(word);
                        day = word.ToString();
                        if (ddlyr.Items[i].Text == day)
                        {
                            ddlyr.Items[i].Selected = true;

                        }
                    }
                }






                TextBox8.Text = cl.ds.Tables[0].Rows[0]["Emp_Email"].ToString();

                DropDownList1.SelectedItem.Text = cl.ds.Tables[0].Rows[0]["Emp_Gender"].ToString();

                TextBox9.Text = cl.ds.Tables[0].Rows[0]["Emp_Designation"].ToString();
                TextBox10.Text = cl.ds.Tables[0].Rows[0]["Emp_Country"].ToString();

                string cat = cl.ds.Tables[0].Rows[0]["Emp_Catagory"].ToString();
                for (int i = 0; i < RadioButtonList1.Items.Count; i++)
                {
                    if (RadioButtonList1.Items[i].Text == cat)
                    {
                        RadioButtonList1.Items[i].Selected = true;

                    }
                }
                TextBox16.Text = cl.ds.Tables[0].Rows[0]["Current_designation"].ToString();
                TextBox11.Text = cl.ds.Tables[0].Rows[0]["Emp_DOJ"].ToString();
                TextBox12.Text = cl.ds.Tables[0].Rows[0]["Emp_Qualification"].ToString();

                TextBox13.Text = cl.ds.Tables[0].Rows[0]["Emp_Total_Experiance"].ToString();
                TextBox14.Text = cl.ds.Tables[0].Rows[0]["Emp_Last_Org"].ToString();


                TextBox15.Text = cl.ds.Tables[0].Rows[0]["Emp_Reg_ID"].ToString();
                //TextBox14.Text = cl.ds.Tables[0].Rows[0]["Emp_Last_Org"].ToString();



            }
            else
            {
                //cl.auto4("Employee_Registration", "Emp_Reg_ID", "EMP");
                //empid = cl.cid;
                //TextBox15.Text = empid;
            
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string dob = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyr.SelectedItem.Text;

            //cl.auto4("Employee_Registration", "Emp_Reg_ID", "EMP");
            //empid = cl.cid;


            if (RadioButtonList1.SelectedItem.Text == "General")
            {

                category = "General";

            }

            if (RadioButtonList1.SelectedItem.Text == "OBC")
            {

                category = "OBC";


            }

            if (RadioButtonList1.SelectedItem.Text == "ST")
            {

                category = "General";

            }

            if (RadioButtonList1.SelectedItem.Text == "SC")
            {

                category = "General";

            }


            //string ss = "../img" + "/" + FileUpload2.FileName;
            //FileUpload2.SaveAs(Server.MapPath(ss));
            //Emp_Reg_ID,               Emp_Name,             Emp_Present_Address,   Emp_Present_Pin,         Emp_Permanent_Address,  Emp_Permanent_Pin,     Emp_Contact_Number,         Emp_DOB,     Emp_Email,                  Emp_Gender,                               Emp_Designation,          Emp_Country,           Emp_Catagory,          Emp_DOJ,            Emp_Qualification,        Emp_Total_Experiance,      Emp_Last_Org,          Current_designation,       Emp_Resume
                                                // Emp_Reg_ID,              Emp_Name,           Emp_Present_Address, Emp_Present_Pin,           fathernm,           Emp_Contact_Number,     Emp_DOB,        Emp_Email,                  Emp_Gender,                          Emp_Designation,           Emp_Country,            Emp_Catagory,           Emp_DOJ,            Emp_Qualification,      Emp_Total_Experiance,       Emp_Last_Org,       Current_designation
            cl.usepro("sp_Employee_add", "'" +TextBox15.Text+ "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + dob + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + category + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','"+TextBox16.Text+"'");


            int imageSize = FileUpload1.PostedFile.ContentLength;
            Stream imageStream = FileUpload1.PostedFile.InputStream;

            byte[] imageContent = new byte[imageSize];
            int intStatus = imageStream.Read(imageContent, 0, imageSize);

            SqlCommand myCommand = new SqlCommand("sp_emp_photo", cl.con);
            myCommand.CommandType = CommandType.StoredProcedure;

            SqlParameter claddmid = new SqlParameter("@Emp_Reg_ID", SqlDbType.VarChar);
            claddmid.Value = TextBox15.Text;
            myCommand.Parameters.Add(claddmid);

            SqlParameter cl_image = new SqlParameter("@Emp_Photo", SqlDbType.Image);
            cl_image.Value = imageContent;
            myCommand.Parameters.Add(cl_image);

            try
            {
                cl.con.Open();
                myCommand.ExecuteNonQuery();
                cl.con.Close();
                msg.Text = "Submitted successfully !!!";
                // display();
            }
            catch (Exception ee)
            {
                string msg = ee.Message.ToString();
                //msg.Text = ee.Message.ToString();
            }
            ClearInputs(Page.Controls);

        }
        else
        {
            string dob = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyr.SelectedItem.Text;

            //cl.auto4("Employee_Registration", "Emp_Reg_ID", "EMP");
            //empid = cl.cid;


            if (RadioButtonList1.SelectedItem.Text == "General")
            {

                category = "General";

            }

            if (RadioButtonList1.SelectedItem.Text == "OBC")
            {

                category = "OBC";


            }

            if (RadioButtonList1.SelectedItem.Text == "ST")
            {

                category = "General";

            }

            if (RadioButtonList1.SelectedItem.Text == "SC")
            {

                category = "General";

            }


            //string ss = "../img" + "/" + FileUpload2.FileName;
            //FileUpload2.SaveAs(Server.MapPath(ss));
            //Emp_Reg_ID,         Emp_Name,             Emp_Present_Address,   Emp_Present_Pin,         Emp_Permanent_Address,  Emp_Permanent_Pin,     Emp_Contact_Number,         Emp_DOB,             Emp_Email,                  Emp_Gender,                        Emp_Designation,            Emp_Country,         Emp_Catagory,       Emp_DOJ,                Emp_Qualification,          Emp_Total_Experiance,                                   Emp_Last_Org,         Current_designation,       Emp_Resume

                                                 // Emp_Reg_ID,			Emp_Name,				Emp_Present_Address,	mobileno2,				fathernm,			 Emp_Contact_Number,	Emp_DOB,			Emp_Email,			    Emp_Gender,				                Emp_Designation,	Emp_Country,			    Emp_Catagory,		Emp_DOJ,			    Emp_Qualification,		Emp_Total_Experiance,		Emp_Last_Org,		Current_designation                       
            cl.usepro("sp_Employee_add", "'" + TextBox15.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + dob + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + category + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox16.Text + "'");


            int imageSize = FileUpload1.PostedFile.ContentLength;
            Stream imageStream = FileUpload1.PostedFile.InputStream;

            byte[] imageContent = new byte[imageSize];
            int intStatus = imageStream.Read(imageContent, 0, imageSize);

            SqlCommand myCommand = new SqlCommand("sp_emp_photo", cl.con);
            myCommand.CommandType = CommandType.StoredProcedure;

            SqlParameter claddmid = new SqlParameter("@Emp_Reg_ID", SqlDbType.VarChar);
            claddmid.Value = empid;
            myCommand.Parameters.Add(claddmid);

            //myCommand.Parameters.Add(cl_image);
            //SqlParameter cl_image = new SqlParameter("@Emp_Photo", SqlDbType.Image);
            //cl_image.Value = imageContent;

            try
            {
                cl.con.Open();
                myCommand.ExecuteNonQuery();
                cl.con.Close();
                //msg.Text = "Submitted successfully !!!";
                // display();
            }
            catch (Exception ee)
            {
                string msg = ee.Message.ToString();
                //msg.Text = ee.Message.ToString();
            }
            ClearInputs(Page.Controls);
        
        
        }
        






    }
    protected void TextBox12_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btn_udt_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        if (FileUpload1.HasFile)
        {

            if (RadioButtonList1.SelectedItem.Text == "General")
            {

                category = "General";

            }

            if (RadioButtonList1.SelectedItem.Text == "OBC")
            {

                category = "OBC";


            }

            if (RadioButtonList1.SelectedItem.Text == "ST")
            {

                category = "General";

            }

            if (RadioButtonList1.SelectedItem.Text == "SC")
            {

                category = "General";

            }


     string dob = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyr.SelectedItem.Text;



            cl.usepro("sp_updt_staff", "'" + id + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + dob + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox16.Text + "'");



        int imageSize = FileUpload1.PostedFile.ContentLength;
        Stream imageStream = FileUpload1.PostedFile.InputStream;

        byte[] imageContent = new byte[imageSize];
        int intStatus = imageStream.Read(imageContent, 0, imageSize);

        SqlCommand myCommand = new SqlCommand("sp_updt_staffphoto", cl.con);
        myCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter claddmid = new SqlParameter("@Emp_Reg_ID", SqlDbType.VarChar);
        claddmid.Value = id;
        myCommand.Parameters.Add(claddmid);

        SqlParameter cl_image = new SqlParameter("@Emp_Photo", SqlDbType.Image);
        cl_image.Value = imageContent;
        myCommand.Parameters.Add(cl_image);

        //try
        //{
            cl.con.Open();
            myCommand.ExecuteNonQuery();
            cl.con.Close();
            //msg.Text = "Added Successfully !!!";
            // display();
        //}
        //catch (Exception ee)
        //{
        //    string msg = ee.Message.ToString();
        //    //msg.Text = ee.Message.ToString();
        //}
        ClearInputs(Page.Controls);
        }
        else
        {
            if (RadioButtonList1.SelectedItem.Text == "General")
            {

                category = "General";

            }

            if (RadioButtonList1.SelectedItem.Text == "OBC")
            {

                category = "OBC";


            }

            if (RadioButtonList1.SelectedItem.Text == "ST")
            {

                category = "General";

            }

            if (RadioButtonList1.SelectedItem.Text == "SC")
            {

                category = "General";

            }

            id = Request.QueryString["id"].ToString();


            string dob = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyr.SelectedItem.Text;


          
             // Emp_Reg_ID,	    Emp_Name,			Emp_Present_Address,	    mobileno2,			fathernm,			     Emp_Contact_Number,	Emp_DOB,		Emp_Email,			    Emp_Gender,				                Emp_Designation,	        Emp_Country,			    Emp_Catagory,		                    Emp_DOJ,			    Emp_Qualification,		Emp_Total_Experiance,		Emp_Last_Org,		Current_designation                       
           
            cl.usepro("sp_updt_staff", "'" + id + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + dob + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox16.Text + "'");



            int imageSize = FileUpload1.PostedFile.ContentLength;
            Stream imageStream = FileUpload1.PostedFile.InputStream;

            byte[] imageContent = new byte[imageSize];
            int intStatus = imageStream.Read(imageContent, 0, imageSize);

            SqlCommand myCommand = new SqlCommand("sp_updt_staffphoto", cl.con);
            myCommand.CommandType = CommandType.StoredProcedure;

            SqlParameter claddmid = new SqlParameter("@Emp_Reg_ID", SqlDbType.VarChar);
            claddmid.Value = id;
            myCommand.Parameters.Add(claddmid);

            //SqlParameter cl_image = new SqlParameter("@Emp_Photo", SqlDbType.Image);
            //cl_image.Value = imageContent;
            //myCommand.Parameters.Add(cl_image);

            try
            {
                cl.con.Open();
                myCommand.ExecuteNonQuery();
                cl.con.Close();
                //msg.Text = "Added Successfully !!!";
                // display();
            }
            catch (Exception ee)
            {
                string msg = ee.Message.ToString();
                //msg.Text = ee.Message.ToString();
            }
            ClearInputs(Page.Controls);
        }

        Response.Redirect("staffdtl.aspx?id="+id);
    
    
    }

    //private void CleanForm()
    //{
    //    foreach (var c in this.Controls)
    //    {
    //        if (c is TextBox)
    //        {
    //            ((TextBox)c).Text = String.Empty;
    //        }
    //    }
    //}



    void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            ClearInputs(ctrl.Controls);
        }
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
    }
}
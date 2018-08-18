using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_notice : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cl.usepro("sp_ddlstudy", "");
           ddlscent.DataSource = cl.ds;
           ddlscent.DataTextField = "Study_Center_Name";
           ddlscent.DataValueField = "stud_cent_id";
           ddlscent.DataBind();
           cl.ds.Clear();
           //cl.usepro("sp_ddlcourse", "");
           //ddluni.DataSource = cl.ds;
           //ddluni.DataTextField = "University_nm";
           //ddluni.DataValueField = "Uid";
           //ddluni.DataBind();
           //cl.usepro("sp_ddlbatch1", "");
           //ddlbat.DataSource = cl.ds;
           //ddlbat.DataTextField = "Batch";
           //ddlbat.DataValueField = "Batch_id";
           //ddlbat.DataBind();

        }
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;

        Button5.Visible = false;
        Button9.Visible = false;
        Button13.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Button1.Visible = true;
        string ss="../img"+"/"+filedoc.FileName;
        filedoc.SaveAs(Server.MapPath(ss));
        cl.insert("Common_Notice", "'" + txtnhead.Text + "','" + ss + "','" + txtnosub.Text + "'");
        txtnhead.Text = "";
        txtnosub.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Button1.Visible = true;
        gridnot1.Visible = true;
        cl.display("Common_Notice", gridnot1);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Button1.Visible = true;
        gridnot1.Visible = false;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
         Button1.Visible = true;
         string bb = Convert.ToInt32(gridnot1.SelectedValue).ToString();
         string ss="../img"+"/"+filedoc.FileName;
        filedoc.SaveAs(Server.MapPath(ss));
        cl.update("Common_Notice", "notice_heading='" + txtnhead.Text + "',doc_data='" + ss + "',notice_subject='" + txtnosub.Text + "'", "Notice_id", "'" + bb + "'");
        txtnhead.Text = "";
        txtnosub.Text = "";
    }

    protected void gridnot1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Button5.Visible = true;
        Button1.Visible = false;
        string ii = Convert.ToInt32(gridnot1.SelectedValue).ToString();
        cl.read1("Common_Notice","Notice_id","'" + ii + "'");
        txtnhead.Text = cl.ds.Tables[0].Rows[0]["notice_heading"].ToString();
        txtnosub.Text = cl.ds.Tables[0].Rows[0]["notice_subject"].ToString();

    }
    protected void gridnot1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Panel1.Visible = true;
        int gg = Convert.ToInt32(gridnot1.DataKeys[e.RowIndex].Value);
        cl.usepro("sp_delnot", "'" + gg + "'");
        cl.display("Common_Notice", gridnot1);
    }
   


    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Button6.Visible = true;
      
        string ss="../img"+"/"+filedoc1.FileName;
        filedoc1.SaveAs(Server.MapPath(ss));
        cl.insert("Study_center_notice","'"+ddlscent.SelectedValue+"','"+txtnhead1.Text+"','"+ss+"','"+txtnosub1.Text+"'");
        ddlscent.SelectedIndex = 0;
        txtnhead1.Text = "";
        txtnosub1.Text = "";
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Button6.Visible = true;
        gridnot2.Visible = true;
        cl.display("Study_center_notice", gridnot2);
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Button6.Visible = true;
        gridnot2.Visible = false;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Button6.Visible = true;
        string bb = Convert.ToInt32(gridnot2.SelectedValue).ToString();
        string ss = "../img" + "/" + filedoc1.FileName;
        filedoc1.SaveAs(Server.MapPath(ss));
        cl.update("Study_center_notice", "Notice_heading='" + txtnhead1.Text + "',Documents='" + ss + "',Notice_Sub='" + txtnosub1.Text + "'", "study_notice_id", "'" + bb + "'");
        ddlscent.SelectedIndex = 0;
        txtnhead1.Text = "";
        txtnosub1.Text = "";
        ddlscent.Enabled = true;
        cl.display("Study_center_notice", gridnot2);
    }

    protected void gridnot2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Panel2.Visible = true;
        int gg = Convert.ToInt32(gridnot2.DataKeys[e.RowIndex].Value);
        cl.usepro("sp_delnot1", "'" + gg + "'");
        cl.display("Study_center_notice", gridnot2);
    }

    protected void gridnot2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Button9.Visible = true;
        Button6.Visible = false;
        ddlscent.Enabled = false;
        string ii = Convert.ToInt32(gridnot2.SelectedValue).ToString();
        cl.usepro("sp_display6", "'"+ii+"'");
        //cl.read("Study_center_notice", "study_notice_id", "'" + ii + "'");
        ddlscent.SelectedItem.Text = cl.ds.Tables[0].Rows[0]["Study_Center_Name"].ToString();
        txtnhead1.Text = cl.ds.Tables[0].Rows[0]["Notice_heading"].ToString();
        txtnosub1.Text = cl.ds.Tables[0].Rows[0]["Notice_Sub"].ToString();
    }


    protected void Button10_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Button10.Visible = true;
        cl.insert("Notice_staff", "'"+txtnhead2.Text+"','"+txtnosub2.Text+"','"+txtnoticedt.Text+"'");
        //cl.insert("Notice_student","'"+ddluni.SelectedValue+"','"+ddlbat.SelectedValue+"','"+ddlcou.SelectedValue+"','"+ddlsem.SelectedValue+"','"+ss+"','"+txtnhead2.Text+"','"+txtnosub2.Text+"'");
        //ddluni.SelectedIndex = 0;
        //ddlbat.SelectedIndex = 0;
        //ddlcou.SelectedIndex = 0;
        //ddlsem.SelectedIndex = 0;
        txtnhead2.Text = "";
        txtnosub2.Text = "";
        txtnoticedt.Text = "";
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Button10.Visible = true;
        gridnot3.Visible = true;
        cl.display("Notice_staff", gridnot3);
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Button10.Visible = true;
        gridnot3.Visible = false;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Button10.Visible = true;
        string bb = Convert.ToInt32(gridnot3.SelectedValue).ToString();
        //string ss = "../img" + "/" + filedoc2.FileName;
        //filedoc2.SaveAs(Server.MapPath(ss));
        //cl.update("Notice_student", "documention='"+ss+"',Notice_heading='"+txtnhead2.Text+"',Notice_subject='"+txtnosub2.Text+"'", "stud_ntic_id", "'" + bb + "'");
        cl.update("Notice_staff", "Notice_heading='" + txtnhead2.Text + "',Notice_subject='" + txtnosub2.Text + "',notice_dt='" + txtnoticedt.Text + "'", "staff_ntic_id", "'" + bb + "'");
        ddlscent.SelectedIndex = 0;
        txtnhead1.Text = "";
        txtnosub1.Text = "";
        //ddluni.Enabled = true;
        //ddlbat.Enabled = true;
        //ddlcou.Enabled = true;
        //ddlsem.Enabled = true;
        cl.display("Notice_student", gridnot3);
    }
    protected void gridnot3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Panel3.Visible = true;
        int gg = Convert.ToInt32(gridnot3.DataKeys[e.RowIndex].Value);
        cl.usepro("sp_delnot2", "'" + gg + "'");
        cl.display("Notice_student", gridnot3);
    }
    protected void gridnot3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Button13.Visible = true;
        Button10.Visible = false;
        string ii = Convert.ToInt32(gridnot3.SelectedValue).ToString();
        cl.usepro("sp_display7","'"+ii+"'");
        txtnhead2.Text = cl.ds.Tables[0].Rows[0]["Notice_heading"].ToString();
        txtnosub2.Text = cl.ds.Tables[0].Rows[0]["Notice_subject"].ToString();
        txtnoticedt.Text = cl.ds.Tables[0].Rows[0]["notice_dt"].ToString();
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblnot.SelectedItem.Text == "All")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        else if (rblnot.SelectedItem.Text == "Study Center")
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel3.Visible = false;
        }
        else if (rblnot.SelectedItem.Text == "Staff")
        {
            Panel3.Visible = true;
            Panel1.Visible = false;
            Panel2.Visible = false;
        }
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;

    }
    //protected void ddluni_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Panel3.Visible = true;
    //    cl.usepro("sp_cours", "'" + ddluni.SelectedValue + "'");
    //    ddlcou.DataSource = cl.ds;
    //    ddlcou.DataTextField = "Course_nm";
    //    ddlcou.DataValueField = "Cour_id";
    //    ddlcou.DataBind();
    //    cl.ds.Clear();
    //    cl.usepro("sp_cours", "'" + ddluni.SelectedValue + "'");
    //    ddlsem.DataSource = cl.ds;
    //    ddlsem.DataTextField = "Type";
    //    ddlsem.DataValueField = "Type";
    //    ddlsem.DataBind();
    //}
    //protected void ddlcou_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}
}
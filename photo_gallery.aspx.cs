using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_photo_gallery : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //string ss = "../img" + "/" + FileUpload1.FileName;
        //FileUpload1.SaveAs(Server.MapPath(ss));

        //cl.insert("Photo_gallary", "'"+TextBox1.Text+"','" + ss + "'");

        int imageSize = FileUpload1.PostedFile.ContentLength;
        Stream imageStream = FileUpload1.PostedFile.InputStream;

        byte[] imageContent = new byte[imageSize];
        int intStatus = imageStream.Read(imageContent, 0, imageSize);

        SqlCommand myCommand = new SqlCommand("addalbum", cl.con);
        myCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter Photonm = new SqlParameter("@Photonm", SqlDbType.VarChar);
        Photonm.Value =TextBox1.Text;
        myCommand.Parameters.Add(Photonm);

        SqlParameter cl_image = new SqlParameter("@Photo", SqlDbType.Image);
        cl_image.Value = imageContent;
        myCommand.Parameters.Add(cl_image);

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
        //display();


        TextBox1.Text = "";
        


       




    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int gg = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
        cl.usepro("sp_delphoto", "'" + gg + "'");
        cl.display("Photo_gallary", GridView2);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        cl.display("Photo_gallary", GridView2);
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        GridView2.Visible = false;
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        cl.display("Photo_gallary", GridView2);

    }
}
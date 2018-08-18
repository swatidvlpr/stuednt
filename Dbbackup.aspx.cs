using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using System.Data.SqlClient;

public partial class Admin_Dbbackup : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //SqlDataAdapter ad = new SqlDataAdapter("BACKUP DATABASE [Account_Restaurants] TO  DISK = N'D:\\DB_BAK\\Account_Restaurants.bak' WITH NOFORMAT, NOINIT,  NAME = N'Account_Restaurants-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10", con);
            //DataSet ds = new DataSet();
            //ad.Fill(ds);

            con.Open();
            string str = "USE Account_Restaurants;";
            string str1 = "BACKUP DATABASE text TO DISK = 'D:\\DB_BAK\\Student_mangement.bak' WITH FORMAT,MEDIANAME = 'Z_SQLServerBackups',NAME = 'Full Backup of Student_mangement';";
            SqlCommand cmd1 = new SqlCommand(str, con);
            SqlCommand cmd2 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            //MessageBox.Show("success");
           
            msg.Text = "Backup Created in 'D' Drive"; 
            con.Close(); 
        }
        catch (Exception)
        {
            msg.Text = "Backup Not Complete";
        } 
    }
}
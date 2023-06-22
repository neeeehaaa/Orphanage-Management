using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace internal1
{
    public partial class reg1 : System.Web.UI.Page
    {
        string s1;
        int id1;
        protected void Page_Load(object sender, EventArgs e)
        {
        ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            TextBox13.ReadOnly = true;
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\DELL\\source\\repos\\internal1\\App_Data\\registration.mdf\";Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select max(id) from [Dbo].[rtable]", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                s1 = dr[0].ToString(); 
            }
            if(s1 == "")
            {
                s1 = "100";
            }
            id1 = Convert.ToInt32(s1);
            id1++;
            TextBox13.Text = id1.ToString();

        }
        private const string ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\DELL\\source\\repos\\internal1\\App_Data\\registration.mdf\";Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {
            String s = "", ext = "", s1 = "";
            if((FileUpload1.HasFile) && (FileUpload1.FileBytes.Length < 1000000))
            {
                s = Path.GetFileName(FileUpload1.FileName);
                ext = Path.GetExtension(FileUpload1.FileName);
                if(ext == ".jpg" || ext == ".jpeg")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Newfolder1/") + s);
                    Label15.Text = "File Uploaded Succesfully";
                    s1 = "~/NewFolder1" + s;
                }
                else
                {
                    Label15.Text = "File Not Found";
                }
            }
            else
            {
                Label15.Text = "File Not Found";
            }
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            string sr = "insert into rtable values('" + TextBox13.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + RadioButtonList1.SelectedItem + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedItem + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox8.Text  + "','" + s1 + "')";
            SqlCommand cmd = new SqlCommand(sr, con);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            s1 = "";
            Response.Write("<script> alert('User is successfully register')</script>");
            Response.Redirect("login1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login1.aspx");
        }
    }
}
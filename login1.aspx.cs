using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace internal1
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\DELL\\source\\repos\\internal1\\App_Data\\registration.mdf\";Integrated Security=True");

            string sr = "select * from rtable where students_name=@students_name";
            SqlCommand cmd = new SqlCommand(sr, con);
            cmd.Parameters.AddWithValue("@students_name", TextBox1.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["id"] = TextBox1.Text;
                Response.Redirect("after1.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Text = "You're Name or Password is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("reg1.aspx");
        }
    }
}
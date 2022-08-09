using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int i;
            try
            {
                SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\umama\\source\\repos\\WebApplication8\\WebApplication8\\App_Data\\PremDb.mdf; Integrated Security = True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into RTable values(@p1,@p2,@p3,@p4,@p5)", con);
                cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
                cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
                cmd.Parameters.AddWithValue("@p4", TextBox4.Text);
                cmd.Parameters.AddWithValue("@p5", TextBox5.Text);

                i = cmd.ExecuteNonQuery();
                if (i != 0)
                    Response.Write("<script>alert ('Record inserted')</script>");
                else
                    Response.Write(" <script> alert('error') </script> ");


                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\umama\\source\\repos\\WebApplication8\\WebApplication8\\App_Data\\PremDb.mdf; Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from RTable", con);
            SqlDataReader dr = cmd.ExecuteReader();

            GridView1.DataBind();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int i;
            SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\umama\\source\\repos\\WebApplication8\\WebApplication8\\App_Data\\PremDb.mdf; Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from RTable where Student_Name=@p1", con);
            cmd.Parameters.AddWithValue("@p1", "Prem");
            i = cmd.ExecuteNonQuery();
            if (i != 0)
                Response.Write("<script>alert ('Record deleted')</script>");
            else
                Response.Write(" <script> alert('not found') </script> ");


            con.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = ListBox1.SelectedValue;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ListBox1.SelectedIndex == 0)
                Response.Write(TextBox1.Text);
            else
            if (ListBox1.SelectedIndex == 1)
                Response.Write(TextBox1.Text);
            else
            if (ListBox1.SelectedIndex == 2)
                Response.Write(TextBox1.Text);
            else
            if (ListBox1.SelectedIndex == 3)
                Response.Write(TextBox1.Text);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string a, b;
            a = TextBox3.Text;
            b = TextBox4.Text;
            Label2.Text = a + b;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
                Label2.ForeColor = System.Drawing.Color.Green;
            if (RadioButtonList1.SelectedIndex == 1)
                Label2.ForeColor = System.Drawing.Color.Red;
            if (RadioButtonList1.SelectedIndex == 2)
                Label2.ForeColor = System.Drawing.Color.Blue;

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CheckBoxList1.SelectedIndex == 0)
                Label2.Font.Bold = true;
            else
                Label2.Font.Bold = false;
            if (CheckBoxList1.SelectedIndex == 1)
                Label2.Font.Italic = true;
            else
                Label2.Font.Italic = false;
            if (CheckBoxList1.SelectedIndex == 2)

                Label2.Font.Underline = true;
            else
                Label2.Font.Underline = false;
        }
    }
}
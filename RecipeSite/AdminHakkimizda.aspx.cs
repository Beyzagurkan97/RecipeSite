using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace RecipeSite
{
    public partial class AdminHakkimizda : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();

        protected void Page_Load(object sender, EventArgs e)
        {

            Panel3.Visible = false;

            if (Page.IsPostBack==false)
            {

            
            SqlCommand komut = new SqlCommand("Select * from About", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();
        }
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update About set text=@t1", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}



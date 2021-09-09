using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace RecipeSite
{
    public partial class AdminMesajDetay : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["messageId"];                          //buradaki m Mesajın m'si
            SqlCommand komut = new SqlCommand("Select * From Messages where messageId=@mId ",bgl.baglanti());
            komut.Parameters.AddWithValue("@mId",id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}
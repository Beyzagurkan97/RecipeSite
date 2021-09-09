using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string foodId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            foodId = Request.QueryString["foodId"];

            SqlCommand komut = new SqlCommand("Select foodName From Foods where foodId=@p1 ",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", foodId);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları listeleme

            SqlCommand komut2 = new SqlCommand("Select * From Comments where foodId=@p2 ",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2" ,foodId);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)                            //buradaki @y harfi yorumdan geliyor
        {
            SqlCommand komut = new SqlCommand("insert into Comments (commentNameSurname,commentMail,commentContent,foodId) values (@yAdSoyad,@yMail,@yIcerik,@foodId)",bgl.baglanti());
            komut.Parameters.AddWithValue("@yAdSoyad", TextBox1.Text);
            komut.Parameters.AddWithValue("@yMail", TextBox2.Text);
            komut.Parameters.AddWithValue("@yIcerik", TextBox3.Text);
            komut.Parameters.AddWithValue("@foodId",foodId);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yorumunuz Alınmıştır...");
        }
    }
}
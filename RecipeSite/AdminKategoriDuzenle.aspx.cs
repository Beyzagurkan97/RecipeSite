using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class AdminKategoriDuzenle : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["categoryId"];
            if (Page.IsPostBack==false)                         //sayfayı yeniden yüklemesin diye yani sayfanın bu halini al üzerinde daha
                                                                // bir şey yapma  manasında if bloğu kullnaırz !!! ÖNEMLİ !!!
            {
                //buradaki @k kategorinin k si
                SqlCommand komut = new SqlCommand("Select * From Categories where categoryId=@kId", bgl.baglanti());
                komut.Parameters.AddWithValue("@kId", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();

                    bgl.baglanti().Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Categories set CategoryName=@kAd,categoryPiece=@kAdet where categoryId=@kId ",bgl.baglanti());
            komut.Parameters.AddWithValue("@kAd", TextBox1.Text); 
            komut.Parameters.AddWithValue("@kAdet", TextBox2.Text);
            komut.Parameters.AddWithValue("kId", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}
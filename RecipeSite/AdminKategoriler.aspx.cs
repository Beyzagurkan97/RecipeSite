using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class AdminKategoriler : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["categoryId"];
                islem = Request.QueryString["islem"];

            }



            SqlCommand komut = new SqlCommand("Select * From Categories",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            // SİLME İŞLEMİ

            if (islem =="sil")
            {
                SqlCommand komutSil = new SqlCommand("Delete From Categories where categoryId=@kId", bgl.baglanti());
                komutSil.Parameters.AddWithValue("@kId",id);
                komutSil.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Kategori Silindi");
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {                                               //buradaki @k kategorilerin k si
            SqlCommand komut = new SqlCommand("insert into Categories (CategoryName) values (@kAd)",bgl.baglanti());
            komut.Parameters.AddWithValue("@kAd", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write(" Kategori Eklendi");


        }
    }
}
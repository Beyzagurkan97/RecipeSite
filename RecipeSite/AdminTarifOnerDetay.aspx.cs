using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace RecipeSite
{
    public partial class AdminTarifOnerDetay : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["recipeId"];

            if (Page.IsPostBack==false)
            {

            
                                                //tariten gelen t veritabnında recipes kısmı
            SqlCommand komut = new SqlCommand("select * from Recipes where recipeId=@tId", bgl.baglanti());
            komut.Parameters.AddWithValue("@tId",id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[5].ToString();
                TextBox5.Text = dr[6].ToString();

            }
            bgl.baglanti().Close();

                //kategori listesi
                SqlCommand komut2 = new SqlCommand("Select * From Categories", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();


                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "categoryId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Durum Güncelleme                                                        //t tarften geliyo
            SqlCommand komut = new SqlCommand("update Recipes set recipeStatus=1 where recipeId=@tId", bgl.baglanti());
            komut.Parameters.AddWithValue("@tId", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği Ana Sayfaya Ekleme
            SqlCommand komut2 = new SqlCommand("insert into Foods (foodName,foodMaterials,foodRecipes,categoryId) values(@yAd,@yMalzeme,@yTarif,@cId)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@yAd", TextBox1.Text);
            komut2.Parameters.AddWithValue("@yMalzeme", TextBox2.Text);
            komut2.Parameters.AddWithValue("@yTarif", TextBox3.Text);
            komut2.Parameters.AddWithValue("@cId", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}
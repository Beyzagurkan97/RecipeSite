using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class AdminYemekler : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();

        string islem = "";
        string id = "";


        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack==false)
            {
               

                id = Request.QueryString["foodId"];
                islem = Request.QueryString["islem"];



                //kategori listesi
                SqlCommand komut2 = new SqlCommand("Select * From Categories", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();


                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "categoryId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }


            //yemek listesi

            SqlCommand komut = new SqlCommand("Select * From Foods", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //yemek silme 

            if (islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete From Foods where foodId=@yId", bgl.baglanti());
                komut2.Parameters.AddWithValue("yId", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();
                


                SqlCommand komut3 = new SqlCommand("update Categories set categoryPiece=categoryPiece-1 where categoryId=@kId", bgl.baglanti());
                komut3.Parameters.AddWithValue("@kId", DropDownList1.SelectedValue);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();

                Response.Write("Yemek Silindi");



            }



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

        protected void BtnEkle0_Click(object sender, EventArgs e)
        {                                                           //burada @y yemek @k kategoriyi ifade ediyor
            SqlCommand komut = new SqlCommand("Insert into Foods (foodName,foodMaterials,foodRecipes,categoryId) values (@yAd,@yMalzeme,@yTarif,@kId)", bgl.baglanti());
            komut.Parameters.AddWithValue("@yAd",TextBox1.Text);
            komut.Parameters.AddWithValue("@yMalzeme", TextBox2.Text);
            komut.Parameters.AddWithValue("@yTarif", TextBox3.Text);
            komut.Parameters.AddWithValue("@kId",DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            


            SqlCommand komut2 = new SqlCommand("update Categories set categoryPiece=categoryPiece+1 where categoryId=@kId", bgl.baglanti());
            komut2.Parameters.AddWithValue("@kId", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            Response.Write("Yemek Eklendi");
        }
    }
}
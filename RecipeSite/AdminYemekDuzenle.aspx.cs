using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class AdminYemekDuzenle : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["foodId"];
            if (Page.IsPostBack == false)                         //sayfayı yeniden yüklemesin diye yani sayfanın bu halini al üzerinde daha
                                                                  // bir şey yapma  manasında if bloğu kullnaırz !!! ÖNEMLİ !!!
            {
                //buradaki @y yemeğin y si
                SqlCommand komut = new SqlCommand("Select * From Foods where foodId=@yId", bgl.baglanti());
                komut.Parameters.AddWithValue("@yId", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();

                    bgl.baglanti().Close();

                    if (Page.IsPostBack == false)
                    {
                        //kategori listesi
                        SqlCommand komut2 = new SqlCommand("Select * From Categories", bgl.baglanti());
                        SqlDataReader dr2 = komut2.ExecuteReader();


                        DropDownList1.DataTextField = "CategoryName";
                        DropDownList1.DataValueField = "categoryId";

                        DropDownList1.DataSource = dr2;
                        DropDownList1.DataBind();

                    }
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)                        //burada @k kategoriden @y yemekten gelir
        {

            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

            //yemek ekleme
            SqlCommand komut = new SqlCommand("Update Foods set foodName=@yAdi,foodMaterials=@yMalzeme,foodRecipes=@yTarif,categoryId=@kId,foodImage=@resim where foodId=@yId",bgl.baglanti());
            komut.Parameters.AddWithValue("@yAdi",TextBox1.Text);
            komut.Parameters.AddWithValue("@yMalzeme", TextBox2.Text);
            komut.Parameters.AddWithValue("@yTarif", TextBox3.Text);
            komut.Parameters.AddWithValue("@kId", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@yId", id);
            komut.Parameters.AddWithValue("@resim","~/resimler/"+FileUpload1.FileName);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
           


            //kategori sayısını arttırma

            SqlCommand komut2 = new SqlCommand("update Categories set categoryPiece=categoryPiece+1 where categoryId=@kId",bgl.baglanti());
            komut2.Parameters.AddWithValue("@kId",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            Response.Write("Yemek Bilgileri Güncellendi");
             
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //tüm yemeklerin durumunu false yaptık
            SqlCommand komut = new SqlCommand("Update Foods set status=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //günün yememği id ye göre yemeklerin durumu true yaptık              //y fooddaki yemekten geliyor
            SqlCommand komut2 = new SqlCommand("Update Foods set status=1 where foodId=@yId", bgl.baglanti());
            komut2.Parameters.AddWithValue("@yId", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            Response.Write("Günün Yemeği Güncellendi !!");
        }
    }
}
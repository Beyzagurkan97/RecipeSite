using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace RecipeSite
{
    public partial class AdminYorumDetay : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["commentId"];          //buradaki @c commnetten y demedim yemek ile karışmasın diye

            if (Page.IsPostBack==false)
            {

            


            SqlCommand komut = new SqlCommand("Select commentNameSurname,commentMail,commentContent,foodName From Comments inner join" +
               " Foods on Comments.foodId=Foods.foodId where commentId=@cId", bgl.baglanti());
            komut.Parameters.AddWithValue("@cId", id);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TxtAd.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                TxtIcerik.Text = dr[2].ToString();
                TxtYemek.Text = dr[3].ToString();   //iki tablo birleştiği içiçn yukarıdaki sorguda inner join kullandık

            }
            bgl.baglanti().Close();

        
        }
    }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {                                                     //burada @c comment(yorum) c'si
            SqlCommand komut = new SqlCommand("Update Comments set commentContent=@cIcerik,commentConfirm=@cOnay" +
                " where commentId=@cId ", bgl.baglanti());
            komut.Parameters.AddWithValue("@cIcerik", TxtIcerik.Text);
            komut.Parameters.AddWithValue("@cOnay", "True");
            komut.Parameters.AddWithValue("@cId", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yorum Onaylama İşlemi Başarılı !!");
        }
    }

}
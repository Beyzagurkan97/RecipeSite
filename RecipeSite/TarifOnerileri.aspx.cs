using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class TarifOnerileri : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnTarifOner_Click(object sender, EventArgs e)                                                      //başlarındaki @t harf tarifin kısaltması
        {
            SqlCommand komut = new SqlCommand("insert into Recipes (recipeName,recipeMaterial,recipeMaking,recipeImage,recipeOwner,recipeOwnerMail) values (@tAd,@tMalzeme,@tYapilis,@tResim,@tOneren,@tOnerenMail)" ,bgl.baglanti());
            komut.Parameters.AddWithValue("@tAd", TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@tMalzeme", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@tYapilis", TxtYapilis.Text);
            komut.Parameters.AddWithValue("@tResim", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@tOneren", TxtTarifOneren.Text);
            komut.Parameters.AddWithValue("@tOnerenMail", TxtMailAdresi.Text);
            komut.ExecuteNonQuery();                
            bgl.baglanti().Close();
            Response.Write("Tarif Öneriniz Alınmıştır");

        }

        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Iletisim : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {                                         //burdaki @m ifadesi mesajın kısaltmasıdır
            SqlCommand komut = new SqlCommand("insert into Messages(messageSender,messageTitle,messageMail,messageContent) values (@mGonderen,@mBaslik,@mMail,@mIcerik)",bgl.baglanti());
            komut.Parameters.AddWithValue("@mGonderen", TxtGonderen.Text);
            komut.Parameters.AddWithValue("@mBaslik",TxtKonu.Text);
            komut.Parameters.AddWithValue("@mMail", TxtMail.Text);
            komut.Parameters.AddWithValue("@mIcerik", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Mesajınız İletildi..");
           

        }
    }
}
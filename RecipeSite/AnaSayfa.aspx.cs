using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class HomePage : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Foods",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();        //veri okuyucu nesnesi
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}
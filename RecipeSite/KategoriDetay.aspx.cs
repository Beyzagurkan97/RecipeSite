using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlSinif bgl = new sqlSinif();
        string categoryId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            categoryId = Request.QueryString["categoryId"];
            SqlCommand komut = new SqlCommand("Select * from Foods where categoryId=@p1 ",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", categoryId);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}
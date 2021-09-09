using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlSinif bgl = new sqlSinif();        //sınfı çağıralım bgl adından bir nesne türettik
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Categories" ,bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();  //okutmak için 
            DataList1.DataSource = oku;  //datalistin veri kaynağı okuduğu değerler olsun 
            DataList1.DataBind();      //bu metod ile işlemlieri datalist e aktar
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_yorumlar inner join Tbl_Yemekler on tbl_yorumlar.yemekid = Tbl_yemekler.yemekid where yorumid= @p1", bgl.baglanti());             komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Txt_Ad.Text = dr[0].ToString();
                Txt_mail.Text = dr[1].ToString();
                Txt_icerik.Text = dr[2].ToString();
                Txt_yemek.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();

        }
    }
}
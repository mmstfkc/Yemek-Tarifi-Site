using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSite
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Txt_TarifAd.Text = dr[1].ToString();
                Txt_Malzeme.Text = dr[2].ToString();
                Txt_Yapilis.Text = dr[3].ToString();
                Txt_Oneren.Text = dr[5].ToString();
                Txt_Mail.Text = dr[6].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}
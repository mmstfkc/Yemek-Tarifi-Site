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
            if (Page.IsPostBack == false)
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

                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }
        }

        protected void Btn_Onayla_Click(object sender, EventArgs e)
        {
            //Durum güncelleme
            SqlCommand komut = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            // Yemekler kısmına ekleme
            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", Txt_TarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", Txt_Malzeme.Text);
            komut2.Parameters.AddWithValue("@p3", Txt_Yapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
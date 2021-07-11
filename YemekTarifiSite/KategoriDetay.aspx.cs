using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("select * from tbl_yemekler where kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader rd = komut.ExecuteReader();
            DataList2.DataSource = rd;
            DataList2.DataBind();
        }
    }
}
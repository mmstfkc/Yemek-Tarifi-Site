﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from tbl_hakkimizda", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            DataList2.DataSource = rd;
            DataList2.DataBind();
        }
    }
}
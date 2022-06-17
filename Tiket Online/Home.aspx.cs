using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Tiket_Online.Classes;

namespace Tiket_Online
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TampilData();
            }
        }
        private void TampilData()
        {
            DataTable Dt = new DataTable();
            Dt = ClsHome.TampilData();
            RptTampilDaftar.DataSource = Dt;
            RptTampilDaftar.DataBind();
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            ClsHome.SimpanData(TxtTanggal.Text, DDLNamaBus.SelectedValue, TxtTujuan.Text, TxtKeberangkatan.Text, TxtJamBerangkat.Text, TxtJamTiba.Text, TxtKursi.Text);
            TampilData();
        }
    }
}
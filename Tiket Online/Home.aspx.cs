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
                Bersih();
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
            Bersih();
        }
        public void Bersih()
        {
            TxtTanggal.Text = string.Empty;
            DDLNamaBus.SelectedValue = "--Pilih Bus--";
            TxtTujuan.Text = string.Empty;
            TxtKeberangkatan.Text = string.Empty;
            TxtJamBerangkat.Text = string.Empty;
            TxtJamTiba.Text = string.Empty;
            TxtKursi.Text = string.Empty;
        }
        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            ClsHome.EditData(TxtEditTangga1.Text, DDLEditBus.SelectedValue, TxtEditTujuan.Text, TxtEditKeberangkatan.Text, TxtEditJamBe.Text, TxtEditJamTi.Text, TxtEditKursi.Text, Convert.ToInt32(TxtEditId.Text));
            TampilData();
            Bersih();
        }
        protected void BtnHapus_Click(object sender, EventArgs e)
        {
            ClsHome.HapusData(Convert.ToInt32(TxtEditId.Text));
            TampilData();
            Bersih();
        }
    }
}
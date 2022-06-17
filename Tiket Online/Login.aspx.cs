using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Tiket_Online.Classes;

namespace Tiket_Online
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            DataTable DtLogin = new DataTable();
            DtLogin = ClsLogin.DtLogin(TxtUser.Text, TxtPassword.Text);

            if(DtLogin.Rows.Count !=0)
            {
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                LblWarning.Text = "Username atau Password Anda Salah!";
            }
            
        }
    }
}
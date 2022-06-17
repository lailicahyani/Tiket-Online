using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Tiket_Online.Classes;

namespace Tiket_Online.Classes
{
    public class ClsHome
    {
        public static DataTable TampilData()
        {
            try
            {
                DataTable DtTampil = new DataTable();
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter Da = new SqlDataAdapter();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from tblDaftar order by Tanggal asc";
                Da.SelectCommand = cmd;
                Da.Fill(DtTampil);
                Sqlconn.Close();
                return DtTampil;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
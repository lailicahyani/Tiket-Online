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

        public static void SimpanData(string Tanggal, string NamaBus, string Tujuan, string Keberangkatan, string JamBerangkat, string JamTiba, string Kursi)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert tblDaftar values('"+Tanggal+"', '"+NamaBus+"', '"+Tujuan+"', '"+Keberangkatan+"', '"+JamBerangkat+"', '"+JamTiba+"','"+Kursi+"')";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void EditData(string tanggal, string nama, string tujuan, string berangkat, string jamb, string jamt, string kursi, int id)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update tblDaftar set Tanggal= '"+tanggal+"', NamaBus= '"+nama+"', Tujuan= '"+tujuan+"', Keberangkatan= '"+berangkat+"', JamBerangkat= '"+jamb+"', JamTiba = '"+jamt+"', Kursi = '"+kursi+"' where ID = '"+id+"'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void HapusData(int id)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from tblDaftar where ID = '" + id + "'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
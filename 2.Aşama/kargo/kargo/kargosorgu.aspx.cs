using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

namespace kargo
{
    public partial class kargosorgu : System.Web.UI.Page
    {
        public StringBuilder icerik = new StringBuilder();
        public string g_ad, g_adres,a_ad,a_adres,fiyat,durum,c_s;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == "")
                Response.Redirect("default.aspx");
            else
            {
                int sid = Convert.ToInt32(Request.QueryString["id"]);
                string CS = "Data Source=LENOVA-G580\\SQLEXPRESS;Initial Catalog=Kargo_Otomasyon;Integrated Security=True";
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tbl_kargo where kargo_no=" + sid, con);
                SqlDataReader oku = cmd.ExecuteReader();
                if (oku.Read())
                {
                    g_ad = oku["gonderen_adsoyad"].ToString();
                    g_adres = oku["gonderen_adsoyad"].ToString();
                    a_ad = oku["alici_adsoyad"].ToString();
                    a_adres = oku["alici_adres"].ToString();
                    fiyat = oku["fiyat"].ToString()+" TL";
                    durum = oku["durum"].ToString();
                }
                else
                {
                    Response.Redirect("kargobulunamadi.aspx");
                }
                oku.Close();
                con.Close();
            }
        }
    }
}
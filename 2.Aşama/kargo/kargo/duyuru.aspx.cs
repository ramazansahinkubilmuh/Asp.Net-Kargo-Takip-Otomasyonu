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
    public partial class duyuru : System.Web.UI.Page
    {
        public StringBuilder icerik = new StringBuilder();
        public string sayfabaslik;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == "")
                icerik.Append("Böyle bir sayfa bulunamadı.");
            else
            {
                int sid = Convert.ToInt32(Request.QueryString["id"]);
                string CS = "Data Source=LENOVA-G580\\SQLEXPRESS;Initial Catalog=Kargo_Otomasyon;Integrated Security=True";
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tbl_duyurular where duyuruid=" + sid, con);
                SqlDataReader oku = cmd.ExecuteReader();
                if (oku.Read())
                {
                    icerik.Append(oku["icerik"].ToString());
                    sayfabaslik = oku["baslik"].ToString();
                }
                else
                {
                    icerik.Append("Böyle bir duyuru bulunamadı.");
                    sayfabaslik = "Duyuru Yok";
                }
                oku.Close();
                con.Close();
            }
        }
    }
}
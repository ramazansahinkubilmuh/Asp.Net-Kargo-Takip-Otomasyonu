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
    public partial class sayfa2 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Select * from tbl_sayfalar where sayfaid=" + sid, con);
                SqlDataReader oku = cmd.ExecuteReader();
                if (oku.Read())
                {
                    icerik.Append(oku["sayfaicerik"].ToString());
                    sayfabaslik = oku["sayfabaslik"].ToString();
                }
                else
                {
                    icerik.Append("Böyle bir sayfa bulunamadı.");
                    sayfabaslik = "Sayfa Yok";
                }
                oku.Close();
                con.Close();
            }
        }
    }
}
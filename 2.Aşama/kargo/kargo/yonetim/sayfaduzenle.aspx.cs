using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace kargo.yonetim
{
    public partial class sayfaduzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["giris"] != "evet")
                Response.Redirect("default.aspx");
            if (!IsPostBack){
                int sid = Convert.ToInt32(Request.QueryString["id"]);
                string CS = "Data Source=LENOVA-G580\\SQLEXPRESS;Initial Catalog=Kargo_Otomasyon;Integrated Security=True";
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tbl_sayfalar where sayfaid=" + sid, con);
                SqlDataReader oku = cmd.ExecuteReader();
                if (oku.Read())
                {
                    TextBox1.Text = oku["sayfabaslik"].ToString().Trim();
                    TextBox2.Text = oku["sayfaicerik"].ToString().Trim();
                }
                else
                {
                    Response.Redirect("sayfalar.aspx");
                }
                oku.Close();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int sid = Convert.ToInt32(Request.QueryString["id"]);
            // Veritabanımızın yolu...
            string veritabani = @"Data Source=LENOVA-G580\\SQLEXPRESS;Initial Catalog=Kargo_Otomasyon;Integrated Security=True";
            // Bağlantı nesnemizi tanımlıyoruz.
            SqlConnection baglanti = new SqlConnection(veritabani);
            // Sorgu nesnemizi tanımlıyoruz.
            SqlCommand sorgu = new SqlCommand();
            // Sorgumuzu baglanti nesnesine bağlıyoruz.
            sorgu.Connection = baglanti;
            baglanti.Open();
            // Güncelleme işlemini bu sorgudaki gibi gerçekleştiriyoruz.
            sorgu.CommandText = "UPDATE tbl_sayfalar SET sayfabaslik='" + TextBox1.Text + "', sayfaicerik='" + TextBox2.Text + "' WHERE sayfaid=" + sid;
            sorgu.ExecuteNonQuery();
            Label1.Text = "Sayfa başarıyla güncellendi.";
            baglanti.Close();
        }
    }
}
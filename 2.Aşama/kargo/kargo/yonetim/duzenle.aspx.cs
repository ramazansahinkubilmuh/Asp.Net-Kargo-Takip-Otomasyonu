using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace kargo.yonetim
{
    public partial class duzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["giris"] != "evet")
                Response.Redirect("default.aspx");
            if (!IsPostBack)
            {
                int sid = Convert.ToInt32(Request.QueryString["id"]);
                string CS = "Data Source=LENOVA-G580\\SQLEXPRESS;Initial Catalog=Kargo_Otomasyon;Integrated Security=True";
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tbl_kargo where kargo_no=" + sid, con);
                SqlDataReader oku = cmd.ExecuteReader();
                if (oku.Read())
                {
                    TextBox1.Text = oku["gonderen_adsoyad"].ToString().Trim();
                    TextBox2.Text = oku["gonderen_adres"].ToString().Trim();
                    TextBox3.Text = oku["alici_adsoyad"].ToString().Trim();
                    TextBox4.Text = oku["alici_adres"].ToString().Trim();
                    TextBox5.Text = oku["fiyat"].ToString().Trim();
                    TextBox6.Text = oku["durum"].ToString().Trim();
                    DropDownList1.SelectedValue = oku["kargo_turu"].ToString();
                    DropDownList2.SelectedValue = oku["cikis_subesi"].ToString();
                    DropDownList3.SelectedValue = oku["varis_subesi"].ToString();
                }
                else
                {
                    Response.Redirect("kargolar.aspx");
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
            sorgu.CommandText = "UPDATE tbl_kargo SET gonderen_adsoyad='" + TextBox1.Text + "', gonderen_adres='" + TextBox2.Text + "', alici_adsoyad='" + TextBox3.Text + "', alici_adres='"+TextBox4.Text+"',kargo_turu='"+DropDownList1.SelectedValue+"',cikis_subesi='"+DropDownList2.SelectedValue+"',varis_subesi='"+DropDownList3.SelectedValue+"',fiyat='"+TextBox5.Text+"',durum='"+TextBox6.Text+"' WHERE kargo_no="+sid;
            sorgu.ExecuteNonQuery();
            Label1.Text = "Kargo başarıyla güncellendi.";
            baglanti.Close();
        }
    }
}
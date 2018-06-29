using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace kargo.yonetim
{
    public partial class yenisayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["giris"] != "evet")
                Response.Redirect("default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label1.Text = "Lütfen boş alanları doldurunuz.";
            }
            else
            {
                string CS = "Data Source=LENOVA-G580\\SQLEXPRESS;Initial Catalog=Kargo_Otomasyon;Integrated Security=True";
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand ekle = new SqlCommand("insert into tbl_sayfalar (sayfabaslik,sayfaicerik) values (@sayfabaslik,@sayfaicerik)", con);
                ekle.Parameters.AddWithValue("@sayfabaslik", TextBox1.Text);
                ekle.Parameters.AddWithValue("@sayfaicerik", TextBox2.Text);
                ekle.ExecuteNonQuery();
                Label1.Text = "Sayfa başarıyla eklendi.";
                con.Close();
            }
        }
    }
}
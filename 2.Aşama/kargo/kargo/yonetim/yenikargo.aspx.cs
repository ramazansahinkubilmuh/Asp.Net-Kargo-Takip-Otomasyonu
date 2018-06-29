using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace kargo.yonetim
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["giris"] != "evet")
                Response.Redirect("default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {
                Label1.Text = "Lütfen boş alanları doldurunuz.";
            }
            else
            {
                string CS = "Data Source=LENOVA-G580\\SQLEXPRESS;Initial Catalog=Kargo_Otomasyon;Integrated Security=True";
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand ekle = new SqlCommand("insert into tbl_kargo (gonderen_adsoyad,gonderen_adres,alici_adsoyad,alici_adres,kargo_turu,cikis_subesi,varis_subesi,fiyat,ekleyen,durum) values (@gonderen_adsoyad,@gonderen_adres,@alici_adsoyad,@alici_adres,@kargo_turu,@cikis_subesi,@varis_subesi,@fiyat,@ekleyen,@durum)", con);
                ekle.Parameters.AddWithValue("@gonderen_adsoyad", TextBox1.Text);
                ekle.Parameters.AddWithValue("@gonderen_adres", TextBox2.Text);
                ekle.Parameters.AddWithValue("@alici_adsoyad", TextBox3.Text);
                ekle.Parameters.AddWithValue("@alici_adres", TextBox4.Text);
                ekle.Parameters.AddWithValue("@kargo_turu", DropDownList1.SelectedValue);
                ekle.Parameters.AddWithValue("@cikis_subesi", DropDownList2.SelectedValue);
                ekle.Parameters.AddWithValue("@varis_subesi", DropDownList3.SelectedValue);
                ekle.Parameters.AddWithValue("@fiyat", TextBox5.Text);
                ekle.Parameters.AddWithValue("@ekleyen", Session["kid"]);
                ekle.Parameters.AddWithValue("@durum", TextBox6.Text);
                ekle.ExecuteNonQuery();
                Label1.Text = "Kargo başarıyla eklendi.";
                con.Close();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace kargo.yonetim
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["giris"] == "evet")
                Response.Redirect("yonetim.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (kadi.Text == "")
                Label1.Text = "Lütfen kullanıcı adını girin.";
            else if (parola.Text == "")
                Label1.Text = "Lütfen parolayı girin.";
            else
            {
                string CS = "Data Source=LENOVA-G580\\SQLEXPRESS;Initial Catalog=Kargo_Otomasyon;Integrated Security=True";
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tbl_kullanicilar where kullanici_adi='" + kadi.Text + "' and parola='" +parola.Text+"'", con);
                SqlDataReader oku = cmd.ExecuteReader();
                if (oku.Read())
                {
                    Session["giris"] = "evet";
                    Session["kid"] = oku["kullanici_no"];
                    Response.Redirect("yonetim.aspx");
                }
                else
                {
                    Label1.Text="Girilen bilgiler yanlış.";
                }
                oku.Close();
                con.Close();
            }
        }
    }
}
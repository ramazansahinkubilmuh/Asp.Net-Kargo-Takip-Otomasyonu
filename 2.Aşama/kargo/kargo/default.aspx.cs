using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;

namespace kargo
{
    public partial class _default : System.Web.UI.Page
    {
        public StringBuilder manset = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = "Data Source=LENOVA-G580\\SQLEXPRESS;Initial Catalog=Kargo_Otomasyon;Integrated Security=True";
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbl_duyurular", con);
            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            con.Close();

            string[] klasordekiler = Directory.GetFiles(Server.MapPath("manset"));
            string[] resimler = new string[klasordekiler.Count()];
            for (int i = 0; i < 5; i++)
                manset.Append("<a href=\"##\"><img src=\"manset/" + Path.GetFileName(klasordekiler[i])+"\"></a>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kargosorgu.aspx?id=" + kargono.Text);
        }
    }
}
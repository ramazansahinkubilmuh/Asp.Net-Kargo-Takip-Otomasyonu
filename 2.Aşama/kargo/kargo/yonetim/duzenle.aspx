<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="duzenle.aspx.cs" Inherits="kargo.yonetim.duzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/HTML; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta content="kastamonu, kastamonu kargosu" name="keywords" />
<meta content="Kastamonu Kargo" name="description" />
<title>Kastamonu Kargo</title>
<link href="~/css/stil.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type='text/javascript'>
 $(document).ready(function () {
            $('#menu li').hover(function () {
                $('ul', this).slideDown(100).fadeIn(10000);
            }, function () {
                $('ul', this).slideUp(100).fadeOut(3000);
            }
            );
        });
</script>
</head>
<body>
    <form id="form1" runat="server">
<div id="site">
<div id="ust2">
<div id="ustgovde"></div>
<div id="altgovde">
<div id="menu">
<ul>
    <li><a href="duyurular.aspx">Duyuru Yönetimi</a>
        <ul>
            <li><a href="yeniduyuru.aspx">Yeni Duyuru Ekle</a></li>
        </ul>
    </li>
    <li><a href="sayfalar.aspx">Sayfa Yönetimi</a>
        <ul>
            <li><a href="yenisayfa.aspx">Yeni Sayfa Ekle</a></li>
        </ul>
    </li>
    <li><a href="kargolar.aspx">Kargo Yönetimi</a>
        <ul>
            <li><a href="yenikargo.aspx">Yeni Kargo Ekle</a></li>
        </ul>
    </li>
    <li><a href="kullanicilar.aspx">Kullanıcı Yönetimi</a></li>
    <li><a href="subeler.aspx">Şube Yönetimi</a<li>
    <li><a href="cikis.aspx">Çıkış</a></li>
</ul>
</div>
</div>
</div>
<div class="govde">
<div class="baslik">Kargo Düzenle</div>
<div class="bosluk">
<asp:Label ID="Label1" runat="server"></asp:Label>
        <table class="auto-style1">
        <tr>
            <td class="font">Gönderen Ad Soyad
            </td>
            <td class="font">:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">Gönderen Adres</td>
            <td class="font">:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">Alıcı Ad Soyad</td>
            <td class="font">:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">Alıcı Adres</td>
            <td class="font">:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">Kargo Türü</td>
            <td class="font">:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="kargo_turu" DataValueField="kargoturu_no">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Kargo_OtomasyonConnectionString1 %>" SelectCommand="SELECT * FROM [tbl_kargo_turleri]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="font">Çıkış Şubesi</td>
            <td class="font">:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="sube_adi" DataValueField="sube_no">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="font">Varış Şubesi</td>
            <td class="font">:</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="sube_adi" DataValueField="sube_no">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kargo_OtomasyonConnectionString1 %>" SelectCommand="SELECT [sube_no], [sube_adi] FROM [tbl_subeler]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="font">Fiyat</td>
            <td class="font">:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">Durum</td>
            <td class="font">:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Düzenle" CssClass="button" OnClick="Button1_Click" />
            </td>
        </tr>
        </table>
    </div>
</div>
<div class="govde"><div class="copyright">Copyright © 2015 Kastamonu Kargo | Tasarım: R & R</div></div>
</div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kargolar.aspx.cs" Inherits="kargo.yonetim.kargolar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/HTML; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta content="kastamonu, kastamonu kargosu" name="keywords" />
<meta content="Kastamonu Kargo" name="description" />
<title>Kastamonu Kargo</title>
<link href="~/css/stil.css" rel="stylesheet" type="text/css" />
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
    <li><a href="subeler.aspx">Şube Yönetimi</a></li>
    <li><a href="cikis.aspx">Çıkış</a></li>
</ul>
</div>
</div>
</div>
<div class="govde">
<div class="baslik">Yönetim Paneli</div>
<div class="bosluk">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="font" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="kargo_no" DataSourceID="SqlDataSource1" Width="875px" AllowPaging="True" PageSize="20" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:BoundField DataField="kargo_no" HeaderText="Kargo No" InsertVisible="False" ReadOnly="True" SortExpression="kargo_no" />
            <asp:BoundField DataField="gonderen_adsoyad" HeaderText="Gönderen" SortExpression="gonderen_adsoyad" />
            <asp:BoundField DataField="gonderen_adres" HeaderText="Gönderen Adres" SortExpression="gonderen_adres" />
            <asp:BoundField DataField="alici_adsoyad" HeaderText="Alıcı" SortExpression="alici_adsoyad" />
            <asp:BoundField DataField="alici_adres" HeaderText="Alıcı Adres" SortExpression="alici_adres" />
            <asp:BoundField DataField="fiyat" HeaderText="Fiyat" SortExpression="fiyat" />
            <asp:BoundField DataField="durum" HeaderText="Durum" SortExpression="durum" />
            <asp:CommandField HeaderText="Düzenle" SelectText="Düzenle" ShowSelectButton="True" />
            <asp:CommandField DeleteText="Sil" HeaderText="Sil" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kargo_OtomasyonConnectionString1 %>" SelectCommand="SELECT * FROM [tbl_kargo]"></asp:SqlDataSource>
    </div>
    <div>

    </div>
</div>
<div class="govde"><div class="copyright">Copyright © 2015 Kastamonu Kargo | Tasarım: R & R</div></div>
</div>
    </form>
</body>
</html>

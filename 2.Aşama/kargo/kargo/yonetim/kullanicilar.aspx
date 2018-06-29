<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanicilar.aspx.cs" Inherits="kargo.yonetim.kullanicilar" %>

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
<div class="baslik">Kullanıcı Yönetimi</div>
<div>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CssClass="font" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="kullanici_no" DataSourceID="SqlDataSource1" ForeColor="Black" Width="873px">
        <EditItemTemplate>
            kKullanıcı No:
            <asp:Label ID="kullanici_noLabel1" runat="server" Text='<%# Eval("kullanici_no") %>' />
            <br />
            Kullanıcı Adı:
            <asp:TextBox ID="kullanici_adiTextBox" runat="server" Text='<%# Bind("kullanici_adi") %>' />
            <br />
            Parola:
            <asp:TextBox ID="parolaTextBox" runat="server" Text='<%# Bind("parola") %>' />
            <br />
            Ad Soyad:
            <asp:TextBox ID="adsoyadTextBox" runat="server" Text='<%# Bind("adsoyad") %>' />
            <br />
            E-posta
            <asp:TextBox ID="epostaTextBox" runat="server" Text='<%# Bind("eposta") %>' />
            <br />
            Adres:
            <asp:TextBox ID="adresTextBox" runat="server" Text='<%# Bind("adres") %>' />
            <br />
            Yetki:
            <asp:TextBox ID="yetkiTextBox" runat="server" Text='<%# Bind("yetki") %>' />
            <br />
            Üyelik Tarihi
            <asp:TextBox ID="uyelik_tarihiTextBox" runat="server" Text='<%# Bind("uyelik_tarihi") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <InsertItemTemplate>
            Kullanıcı Adı:
            <asp:TextBox ID="kullanici_adiTextBox" runat="server" Text='<%# Bind("kullanici_adi") %>' />
            <br />
            Parola:
            <asp:TextBox ID="parolaTextBox" runat="server" Text='<%# Bind("parola") %>' />
            <br />
            Ad Soyad:
            <asp:TextBox ID="adsoyadTextBox" runat="server" Text='<%# Bind("adsoyad") %>' />
            <br />
            E-posta
            <asp:TextBox ID="epostaTextBox" runat="server" Text='<%# Bind("eposta") %>' />
            <br />
            Adres:
            <asp:TextBox ID="adresTextBox" runat="server" Text='<%# Bind("adres") %>' />
            <br />
            Yetki:
            <asp:TextBox ID="yetkiTextBox" runat="server" Text='<%# Bind("yetki") %>' />
            <br />
            Üyelik Tarihi
            <asp:TextBox ID="uyelik_tarihiTextBox" runat="server" Text='<%# Bind("uyelik_tarihi") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Kullanıcı No:
            <asp:Label ID="kullanici_noLabel" runat="server" Text='<%# Eval("kullanici_no") %>' />
            <br />
            Kullanıcı Adı:
            <asp:Label ID="kullanici_adiLabel" runat="server" Text='<%# Bind("kullanici_adi") %>' />
            <br />
            Parola:
            <asp:Label ID="parolaLabel" runat="server" Text='<%# Bind("parola") %>' />
            <br />
            Ad Soyad:
            <asp:Label ID="adsoyadLabel" runat="server" Text='<%# Bind("adsoyad") %>' />
            <br />
            E-posta
            <asp:Label ID="epostaLabel" runat="server" Text='<%# Bind("eposta") %>' />
            <br />
            Adres:
            <asp:Label ID="adresLabel" runat="server" Text='<%# Bind("adres") %>' />
            <br />
            Yetki:
            <asp:Label ID="yetkiLabel" runat="server" Text='<%# Bind("yetki") %>' />
            <br />
            Üyelik Tarihi
            <asp:Label ID="uyelik_tarihiLabel" runat="server" Text='<%# Bind("uyelik_tarihi") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Yeni Kullanıcı Ekle" />
        </ItemTemplate>
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kargo_OtomasyonConnectionString1 %>" DeleteCommand="DELETE FROM [tbl_kullanicilar] WHERE [kullanici_no] = @kullanici_no" InsertCommand="INSERT INTO [tbl_kullanicilar] ([kullanici_adi], [parola], [adsoyad], [eposta], [adres], [yetki], [uyelik_tarihi]) VALUES (@kullanici_adi, @parola, @adsoyad, @eposta, @adres, @yetki, @uyelik_tarihi)" SelectCommand="SELECT * FROM [tbl_kullanicilar]" UpdateCommand="UPDATE [tbl_kullanicilar] SET [kullanici_adi] = @kullanici_adi, [parola] = @parola, [adsoyad] = @adsoyad, [eposta] = @eposta, [adres] = @adres, [yetki] = @yetki, [uyelik_tarihi] = @uyelik_tarihi WHERE [kullanici_no] = @kullanici_no">
        <DeleteParameters>
            <asp:Parameter Name="kullanici_no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="kullanici_adi" Type="String" />
            <asp:Parameter Name="parola" Type="String" />
            <asp:Parameter Name="adsoyad" Type="String" />
            <asp:Parameter Name="eposta" Type="String" />
            <asp:Parameter Name="adres" Type="String" />
            <asp:Parameter Name="yetki" Type="Int32" />
            <asp:Parameter Name="uyelik_tarihi" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="kullanici_adi" Type="String" />
            <asp:Parameter Name="parola" Type="String" />
            <asp:Parameter Name="adsoyad" Type="String" />
            <asp:Parameter Name="eposta" Type="String" />
            <asp:Parameter Name="adres" Type="String" />
            <asp:Parameter Name="yetki" Type="Int32" />
            <asp:Parameter Name="uyelik_tarihi" Type="DateTime" />
            <asp:Parameter Name="kullanici_no" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</div>
<div class="govde"><div class="copyright">Copyright © 2015 Kastamonu Kargo | Tasarım: R & R</div></div>
</div>
    </form>
</body>
</html>

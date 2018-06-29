<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subeler.aspx.cs" Inherits="kargo.yonetim.subeler" %>

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
<div class="baslik">Şube Yönetimi</div>
<div class="bosluk">

    <asp:FormView ID="FormView1" runat="server" CssClass="font" AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="sube_no" DataSourceID="SqlDataSource1" ForeColor="Black" Width="876px">
        <EditItemTemplate>
            Şube No:
            <asp:Label ID="sube_noLabel1" runat="server" Text='<%# Eval("sube_no") %>' />
            <br />
            Şube No:
            <asp:TextBox ID="sube_adiTextBox" runat="server" Text='<%# Bind("sube_adi") %>' />
            <br />
            Şube Adres:
            <asp:TextBox ID="sube_adresTextBox" runat="server" Text='<%# Bind("sube_adres") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelle" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Vazgeç" />
        </EditItemTemplate>
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <InsertItemTemplate>
            Şube Adı:
            <asp:TextBox ID="sube_adiTextBox" runat="server" Text='<%# Bind("sube_adi") %>' />
            <br />
            Şube Adres:
            <asp:TextBox ID="sube_adresTextBox" runat="server" Text='<%# Bind("sube_adres") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Ekle" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Vazgeç" />
        </InsertItemTemplate>
        <ItemTemplate>
            Şube No:
            <asp:Label ID="sube_noLabel" runat="server" Text='<%# Eval("sube_no") %>' />
            <br />
            Şube No:
            <asp:Label ID="sube_adiLabel" runat="server" Text='<%# Bind("sube_adi") %>' />
            <br />
            Şube Adres:
            <asp:Label ID="sube_adresLabel" runat="server" Text='<%# Bind("sube_adres") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Yeni Şube Ekle" />
        </ItemTemplate>
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kargo_OtomasyonConnectionString1 %>" DeleteCommand="DELETE FROM [tbl_subeler] WHERE [sube_no] = @sube_no" InsertCommand="INSERT INTO [tbl_subeler] ([sube_adi], [sube_adres]) VALUES (@sube_adi, @sube_adres)" SelectCommand="SELECT * FROM [tbl_subeler]" UpdateCommand="UPDATE [tbl_subeler] SET [sube_adi] = @sube_adi, [sube_adres] = @sube_adres WHERE [sube_no] = @sube_no">
        <DeleteParameters>
            <asp:Parameter Name="sube_no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sube_adi" Type="String" />
            <asp:Parameter Name="sube_adres" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="sube_adi" Type="String" />
            <asp:Parameter Name="sube_adres" Type="String" />
            <asp:Parameter Name="sube_no" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</div>
</div>
<div class="govde"><div class="copyright">Copyright © 2015 Kastamonu Kargo | Tasarım: R & R</div></div>
</div>
    </form>
</body>
</html>

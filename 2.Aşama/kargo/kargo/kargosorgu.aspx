<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kargosorgu.aspx.cs" Inherits="kargo.kargosorgu" %>
<%@ Register Src="~/eklenti/ust.ascx" TagPrefix="uc1" TagName="ust" %>
<%@ Register Src="~/eklenti/alt.ascx" TagPrefix="uc1" TagName="alt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/HTML; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta content="kastamonu, kastamonu kargosu" name="keywords" />
<meta content="Kastamonu Kargo" name="description" />
<title>Kargo Sorgulama - Kastamonu Kargo</title>
<link href="css/stil.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script src="js/slayt.js" type="text/javascript"></script>
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
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 160px;
        }
        .auto-style3 {
            width: 23px;
        }
        .auto-style4 {
            width: 160px;
            height: 30px;
        }
        .auto-style5 {
            width: 23px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="site">
    <uc1:ust runat="server" id="ust" />
<div class="govde">
<div class="baslik">Kargo Sorgulama</div>
<div class="font">

    <table class="auto-style1">
        <tr>
            <td class="auto-style4">Gönderen Ad Soyad</td>
            <td class="auto-style5">:</td>
            <td class="auto-style6"><%Response.Write(g_ad); %></td>
        </tr>
        <tr>
            <td class="auto-style4">Gönderen Adres</td>
            <td class="auto-style5">:</td>
            <td class="auto-style6"><%Response.Write(g_adres); %></td>
        </tr>
        <tr>
            <td class="auto-style4">Alıcı Ad Soyad</td>
            <td class="auto-style5">:</td>
            <td class="auto-style6"><%Response.Write(a_ad); %></td>
        </tr>
        <tr>
            <td class="auto-style4">Alıcı Adres</td>
            <td class="auto-style5">:</td>
            <td class="auto-style6"><%Response.Write(a_adres); %></td>
        </tr>
        <tr>
            <td class="auto-style4">Fiyat</td>
            <td class="auto-style5">:</td>
            <td class="auto-style6"><%Response.Write(fiyat); %></td>
        </tr>
        <tr>
            <td class="auto-style4">Durum</td>
            <td class="auto-style5">:</td>
            <td class="auto-style6"><%Response.Write(durum); %></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</div>
</div>
    <uc1:alt runat="server" id="alt" />
</div>
    </form>
</body>
</html>

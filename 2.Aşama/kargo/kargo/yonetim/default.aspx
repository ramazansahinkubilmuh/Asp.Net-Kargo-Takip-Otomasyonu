<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="kargo.yonetim._default" %>

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
            width: 509px;
        }
        .auto-style2 {
            width: 129px;
        }
        .auto-style3 {
            width: 703px;
        }
        .auto-style4 {
            width: 703px;
            height: 16px;
        }
        .auto-style5 {
            width: 129px;
            height: 16px;
        }
        .auto-style6 {
            height: 16px;
        }
        .auto-style7 {
            width: 703px;
            height: 67px;
        }
        .auto-style8 {
            width: 129px;
            height: 67px;
        }
        .auto-style9 {
            height: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="site">
<div id="ust2">
<div id="ustgovde"></div>
<div id="altgovde">
<div id="menu">
<ul>

</ul>
</div>
</div>
</div>
<div class="govde">
<div class="baslik">Yönetim Paneli Giriş</div>
    <div>
        <table align="center" cellpadding="0" cellspacing="0" class="auto-style1">
        <tr>
            <td class="font">&nbsp;</td>
            <td class="font">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="font">&nbsp;</td>
            <td class="font">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="font">Kullanıcı adı</td>
            <td class="font">:</td>
            <td>
                <asp:TextBox ID="kadi" runat="server" class="input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">&nbsp;</td>
            <td class="font">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="font">Parola&nbsp;</td>
            <td class="font">:</td>
            <td>
                <asp:TextBox ID="parola" runat="server" class="input" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="button" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
            <td class="auto-style9">
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
    </table>
        </div>
</div>
<div class="govde"><div class="copyright">Copyright © 2015 Kastamonu Kargo | Tasarım: R & R</div></div>
</div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="duyuru.aspx.cs" Inherits="kargo.duyuru" %>
<%@ Register Src="~/eklenti/ust.ascx" TagPrefix="uc1" TagName="ust" %>
<%@ Register Src="~/eklenti/alt.ascx" TagPrefix="uc1" TagName="alt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/HTML; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta content="kastamonu, kastamonu kargosu" name="keywords" />
<meta content="Kastamonu Kargo" name="description" />
<title><%Response.Write(sayfabaslik); %> - Kastamonu Kargo</title>
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
</head>
<body>
    <form id="form1" runat="server">
<div id="site">
    <uc1:ust runat="server" id="ust" />
<div class="govde">
<div class="baslik"><%Response.Write(sayfabaslik); %></div>
<div class="font"><%Response.Write(icerik); %></div>
</div>
    <uc1:alt runat="server" id="alt" />
</div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="kargo._default" %>

<%@ Register Src="~/eklenti/ust.ascx" TagPrefix="uc1" TagName="ust" %>
<%@ Register Src="~/eklenti/alt.ascx" TagPrefix="uc1" TagName="alt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/HTML; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta content="kastamonu, kastamonu kargosu" name="keywords" />
<meta content="Kastamonu Kargo" name="description" />
<title>Kastamonu Kargo</title>
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
<div id="sliderFrame"><div id="slider">
<%Response.Write(manset); %>
</div></div>
<div>
<div class="duyurular">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="duyuru"><a href="duyuru.aspx?id=<%#Eval("duyuruid") %>" class="a"><%#Eval("baslik") %></a></div>
        </ItemTemplate>
    </asp:Repeater>
</div>
<div class="kargom">
<div class="bosluk"><asp:TextBox ID="kargono" runat="server" class="input" placeholder="Kargo no girin"></asp:TextBox>
    </div>
<div class="bosluk"><asp:Button ID="Button1" runat="server" Text="SORGULA" class="button" OnClick="Button1_Click" /></div>
    
</div>
<div class="tmz"></div>
</div>
<div class="alt">
<div class="alticon"><img src="resimler/alt/1.png" /></div>
<div class="alticon"><img src="resimler/alt/2.png" /></div>
<div class="alticon"><img src="resimler/alt/3.png" /></div>
<div class="alticon"><img src="resimler/alt/7.png" /></div>
<div class="alticon"><img src="resimler/alt/4.png" /></div>
<div class="alticon"><img src="resimler/alt/5.png" /></div>
<div class="alticon"><img src="resimler/alt/6.png" /></div>
<div class="alticon"><img src="resimler/alt/8.png" /></div>
<div class="tmz"></div>
</div>
</div>
    <uc1:alt runat="server" id="alt" />
</div>
    </form>
</body>
</html>

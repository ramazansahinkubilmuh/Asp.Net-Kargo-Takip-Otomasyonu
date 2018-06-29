<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ust.ascx.cs" Inherits="kargo.eklenti.WebUserControl1" %>
<div id="ust">
<div id="ustgovde"></div>
<div id="altgovde">
<div id="menu">
<ul>
<li><a href="default.aspx">Anasayfa</a></li>
<li><a href="subeler.aspx">Şubeler</a></li>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <li><a href="sayfa.aspx?id=<%#Eval("sayfaid") %>"><%#Eval("sayfabaslik") %></a></li>
        </ItemTemplate>
    </asp:Repeater>
</ul>
</div>
</div>
</div>
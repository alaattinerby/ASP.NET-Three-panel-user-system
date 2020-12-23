<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="OnlineIsArama.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Content/Index.css" />
    <title></title>
</head>
<body>
    <form runat="server">
        <h3><asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#76B852"></asp:Label></h3>
        <h1><asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#76B852"></asp:Label></h1>
        <asp:Button ID="cikis" runat="server" OnClick="cikis_Click" Text="Güvenli Çıkış Yap" />
    </form>
</body>
</html>

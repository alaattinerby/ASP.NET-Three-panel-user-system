<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="OnlineIsArama.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Content/Manager.css" />
    <title></title>
</head>
<body>
        <div class="container">
            <section id="content">
        <form runat="server">
            <h1>Yönetici Paneli</h1>
            <div>
                <input type="text" placeholder="Kullanıcı Adı" required="" runat="server" id="managerUserName" />
            </div>
            <div>
                <input type="password" placeholder="Şifre" required="" runat="server" id="managerPassword" />
            </div>
            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
            <div>
                <asp:Button ID="Giris" runat="server" Text="Giriş Yap" OnClick="Giris_Click"/><br />
            </div>
        </form>
        <div class="button">
            <a>Aranıyor.net | Yönetici Paneli
            </a>
        </div>
    </section>
</div>
</body>
</html>

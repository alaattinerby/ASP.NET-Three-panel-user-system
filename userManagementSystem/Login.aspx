<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineIsArama.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Content/Materialize.css" />
    <link rel="stylesheet" href="Content/Login.css" />
    <title>Aranıyor.net | Hemen Giriş Yap</title>
</head>
<body>
    <div class="container white z-depth-2">
        <form runat="server">
        <ul class="tabs teal">
            <li class="tab col s3"><a class="white-text active">Üye Girişi</a></li>
        </ul>
            <div id="login" class="col s12">
                <div class="form-container">
                    <div class="row"><br />
                        <div class="input-field col s12" style="left: 0px; right: 0px; top: 0px">
                            <input id="userMail" type="email" runat="server" class="validate" required=""/>
                            <label>E-posta</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                        <input id="userPassword" type="password" runat="server" class="validate" required=""/>
                        <label>Şifre</label>
                        </div>
                    </div>
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC3300"></asp:Label><br /><br/>
                    <asp:Button ID="uyeGiris" CssClass="btn teal girisbtn" runat="server" Text="Sisteme Giriş" OnClick="uyeGiris_Click" />
                    <br/>
                    <br/>
                    <span style="margin-left:75px;">Hesabın yok mu? </span><a href="Record.aspx">Kaydol</a>
                </div>
            </div>
        </form>
    </div>
    <script>
        document.body.style.zoom = "90%";
    </script>
<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
<script src='https://code.jquery.com/jquery-2.1.1.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js'></script>
<script src="https://static.codepen.io/assets/editor/iframe/iframeRefreshCSS-e03f509ba0a671350b4b363ff105b2eb009850f34a2b4deaadaa63ed5d970b37.js"></script>
</body>
</html>

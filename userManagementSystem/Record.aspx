<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Record.aspx.cs" Inherits="OnlineIsArama.Record" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Content/Materialize.css" />
    <link rel="stylesheet" href="Content/Record.css" />
    <title>Aranıyor.net | Hemen Üye Ol</title>
</head>
<body>
    <div id="register" class="col s12 white z-depth-2 container">
        <form runat="server">
            <ul class="tabs teal">
                <li class="tab col s3"><a class="white-text active">Kayıt Ol</a></li>
            </ul>
            <div class="form-container">
                <div class="row"><br />
                    <div class="input-field col s6">
                        <input id="userName" type="text" runat="server" class="validate" required=""/>
                        <label>İsim</label>
                    </div>                                  
                    <div class="input-field col s6">
                        <input id="userSurname" type="text" runat="server" class="validate" required=""/>
                        <label>Soyisim</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="userMail" type="email" runat="server" class="validate" required=""/>
                        <label>E-posta Adresi</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="userPassword" type="password" runat="server" class="validate" required=""/>
                        <label for="password">Şifre</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="userPasswordConfirm" type="password" runat="server" class="validate" required=""/>
                        <label>Şifre (Tekrar)</label>
                    </div>
                    &nbsp;&nbsp;
                    <asp:CompareValidator 
                        ID="CompareValidator1" 
                        runat="server"
                        ForeColor="Red"
                        ControlToCompare="userPassword"
                        ControlToValidate="userPasswordConfirm"
                        ErrorMessage="Şifreler Eşleşmiyor !">
                    </asp:CompareValidator>
                </div>
                <asp:Button ID="kayitGiris" CssClass="btn teal kayitbtn" runat="server" Text="Üyeliğini Oluştur" OnClick="kayitGiris_Click" />
                <br/>
                <br/>
                <span style="margin-left:55px;">Zaten üye misin? </span><a href="Login.aspx">Üye girişi yap</a>
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
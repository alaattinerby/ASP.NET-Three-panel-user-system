<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerPanel.aspx.cs" Inherits="OnlineIsArama.ManagerPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background: #DCDDDF;">
    <form runat="server">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="cikis" runat="server" Text="Çıkış Yap" OnClick="cikis_Click" />
        <div style="margin:auto; margin-top:20vh; width:730px;">
            <h1 style="width:auto; text-align:center; color:#333333;">Kullanıcılar</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="730px">
                <Columns>
                    <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" InsertText="Ekle" NewText="Yeni" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Güncelle" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Name], [LastName], [Email], [Password]) VALUES (@Name, @LastName, @Email, @Password)" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [LastName] = @LastName, [Email] = @Email, [Password] = @Password WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <h1 style="width:auto; text-align:center; color:#333333;">Yöneticiler</h1>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Width="730px">
                <Columns>
                    <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" InsertText="Ekle" NewText="Yeni" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Güncelle" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Managers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Managers] ([UserName], [Password]) VALUES (@UserName, @Password)" SelectCommand="SELECT * FROM [Managers]" UpdateCommand="UPDATE [Managers] SET [UserName] = @UserName, [Password] = @Password WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

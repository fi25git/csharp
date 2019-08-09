<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dzallmanzigDatenbank.aspx.cs" Inherits="WebApplication1.dzallmanzigDatenbank" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tbServer" runat="server" Text="LocalHost"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="tbPort" runat="server" Text="3306"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="tbUser" runat="server" Text="root"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="tbPW" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Verbinden" runat="server" OnClick="ClickVerbinden" Text="Verbinden" />
        </div>
    </form>
</body>
</html>

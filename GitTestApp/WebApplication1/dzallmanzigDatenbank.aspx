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
            <asp:TextBox ID="tbServer" runat="server"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="tbPort" runat="server"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="tbPW" runat="server"></asp:TextBox>
            <br /><br />
            <input type="submit" value="Verbinden"/>
        </div>
    </form>
</body>
</html>

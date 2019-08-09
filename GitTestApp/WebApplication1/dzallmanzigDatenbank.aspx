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
            <input type="text" id="Server"/> : Server <br /><br />
            <input type="text" id="Port"/> : Port <br /><br />
            <input type="text" id="User"/> : User <br /><br />
            <input type="text" id="Passwort"/> : Passwort <br /><br />
            <input type="submit" value="Verbinden"/>
        </div>
    </form>
</body>
</html>

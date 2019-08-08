<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asperling.aspx.cs" Inherits="WebApplication1.asperling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <h1><%Response.Write("Farbverlauf-Tabelle"); %></h1>

    <table border="1">
        <%
        int red = 0;
        int green = 0;
        int blue = 0;
        for (int i = 0; i < 20; i++){
        %>
        <tr>
            <%for (int j = 0; j < 20; j++){
                  blue += 12;
            %>
            <td style='width: 50px; height: 20px; background-color: rgb(<% Response.Write(red+","+green+","+blue); %>);'></td>
            <%}%>
        </tr>
        <%
                blue = 0;
                red += 12;
            }
        %>
    </table>
</body>
</html>

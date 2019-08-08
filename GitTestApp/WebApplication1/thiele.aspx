<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thiele.aspx.cs" Inherits="WebApplication1.thiele" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <h1><%Response.Write("Farbverlauf-Beispiel-Tabelle"); %></h1>

    <table border="1">
        <%
            int rot = 255;
            int gruen = 0;
            int blau = 0;

            for (int i = 0; i < 20; i++)
            {
           %> <tr>
           <% for (int j = 0; j < 20; j++)
                {
                    blau += 12; %>
            <td style='width: 50px; background-color: rgb(<% Response.Write(rot+","+gruen+","+blau); %>);'>&nbsp;</td>
            <%}%>
           </tr>
        <%
                blau = 0;
                rot = 12;
            }
        %>
    </table>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asperling-2.aspx.cs" Inherits="WebApplication1.asperling_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Farbverlauf-Tabelle</h1>
    <form id="form1" runat="server" method="post" action="asperling-2">
        <label for="anzahl">Anzahl</label>
        <input type="text" id="anzahl" name="anzahl" size="10" /><br />
        <input type="submit" name="senden" value="generieren" />
    </form>
    <%
        if (Request["senden"] == "generieren")
        {
            if (Request["anzahl"] != "")
            {
                string anzahl = Request["anzahl"]; %>
                <table border="1">
                <%
                int red = 0;
                int green = 0;
                int blue = 0;
                for (int i = 0; i < Convert.ToInt32(anzahl); i++){
                %>
                <tr>
                    <%for (int j = 0; j < Convert.ToInt32(anzahl); j++){
                          blue += 250/Convert.ToInt32(anzahl);
                    %>
                    <td style='width: 50px; background-color: rgb(<% Response.Write(red+","+green+","+blue); %>);'>&nbsp;</td>
                    <%}%>
                </tr>
                <%
                        blue = 0;
                        red += 250/Convert.ToInt32(anzahl);
                    }
                %>
            </table>
            <%} else
            {
                Response.Write("Bitte geben Sie eine Zahl ein");
            }

        }

    %>
</body>
</html>

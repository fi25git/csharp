<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asperling-2.aspx.cs" Inherits="WebApplication1.asperling_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Farbverlauf-Tabelle</h1>
    <form id="form1" runat="server" method="post" action="asperling-2" style="width: 300px;">
        <fieldset>
            <legend>Startfarbe</legend>
            <label for="red">Rot</label>
            <select id="red" name="red">
                <%for (int i = 0; i < 100; i++){%>
                    <option><%Response.Write(i); %></option>
                <%} %>
            </select>&nbsp;
            <label for="green">Grün</label>
            <select id="green" name="green">
                <%for (int i = 0; i < 100; i++){%>
                    <option><%Response.Write(i); %></option>
                <%} %>
            </select>&nbsp;
            <label for="blue">Blau</label>
            <select id="blue" name="blue">
                <%for (int i = 0; i < 100; i++){%>
                    <option><%Response.Write(i); %></option>
                <%} %>
            </select>
        </fieldset><br />
        

        <label for="anzahl">Anzahl Farben</label>
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
                int red = Convert.ToInt32(Request["red"]);
                int green = Convert.ToInt32(Request["green"]);
                int blue = Convert.ToInt32(Request["blue"]);
                for (int i = 0; i < Convert.ToInt32(anzahl); i++){
                %>
                <tr>
                    <%for (int j = 0; j < Convert.ToInt32(anzahl); j++){
                            blue += 250/Convert.ToInt32(anzahl);
                            if (blue >= 255)
                            {
                                blue = 0;
                            }
                    %>
                    <td style='width: 50px; background-color: rgb(<% Response.Write(red+","+green+","+blue); %>);'>&nbsp;</td>
                    <%}%>
                </tr>
                <%
                        blue = 0;
                        red += 250/Convert.ToInt32(anzahl);
                        if (red >= 255)
                        {
                            red = 0;
                        }
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

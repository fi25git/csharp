<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thiele2.aspx.cs" Inherits="WebApplication1.thiele2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <h1><%Response.Write("Farbverlauf-Beispiel-Tabelle"); %></h1>
    
        Anzahl: <input type="text" id="anzahl" runat="server"><br>
        <button type="button" onclick="generieren()">generieren</button><br> 
        <%
            string name = anzahl.Value.ToString();

           void generieren()
                {%>
                    <table border="1">
                   <% 
                    int rot = 255;
                    int gruen = 0;
                    int blau = 0;
                        for (int i = 0; i < Convert.ToInt32(name); i++)
            {
            
            for (int j = 0; j < Convert.ToInt32(name); j++)
                {
                    blau += 12; %>
            <td style='width: 50px; background-color: rgb( Response.Write(rot+","+gruen+","+blau); );
           <%  }                   
                blau = 0;
                rot = 12;
            }%>
        
    </table>
            }

            
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="klann.aspx.cs" Inherits="WebApplication1.klann" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     
        <table border="1">
            <%
                int R = 0;
                int G = 0;
                int B = 0;
                for (int i = 0; i < 10; i++)
                {
                    R += 10;
                    G += 10;
                    B = 0;
                    
                    Response.Write("<tr>");
                    for (int j = 0; j < 10; j++)
                    {
                        B += 10;
                        G -= 10;
                        Response.Write("<td bgcolor=" + "'" + "rgb(" + R + "%," + G + "%," + B + "%)" + "'" + ">...</td>");
                    }
                    Response.Write("</tr>");
                }
                %>
        </table>
        
</body>
</html>

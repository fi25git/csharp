<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="klann.aspx.cs" Inherits="WebApplication1.klann" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     
        <table width=100% height=1000 border="0" cellspacing="0">
            <%
                int R = 0;
                int G = 0;
                int B = 0;
                for (int i = 0; i < 20; i++)
                {
                    R += 5;
                    G += 5;
                    B = 0;
                    
                    Response.Write("<tr>");
                    for (int j = 0; j < 20; j++)
                    {
                        B += 5;
                        G -= 5;
                        Response.Write("<td width=5% height=5% bgcolor=" + "'" + "rgb(" + R + "%," + G + "%," + B + "%)" + "'" + "></td>");
                    }
                    Response.Write("</tr>");
                }
            %>
        </table>
        
</body>
</html>

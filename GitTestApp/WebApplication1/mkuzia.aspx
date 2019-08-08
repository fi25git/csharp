<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mkuzia.aspx.cs" Inherits="WebApplication1.mkuzia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <table border="1">
    <%      int rot = 0;
        int blau = 0;
        for (int i = 0; i<10;i++)
        {
            blau = 0;
            Response.Write("<tr>");
            for(int j = 0; j<10; j++)
            {

                Response.Write("<td style=\"background-color: rgb(" + rot +",0," + blau + ");\"> ... </td>");
                blau += 40;
            }
            Response.Write("</tr>");
            rot += 40;
        }
        %>
</table>
</body>
</html>

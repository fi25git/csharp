<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mkuzia.aspx.cs" Inherits="WebApplication1.mkuzia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <table  >
    <%     
        int rot = 0;
        for (int i = 0; i<20;i++)
        {
            int blau = 0;
            Response.Write("<tr>");
            for(int j = 0; j<20; j++)
            {
                Response.Write("<td width=\"25\" height=\"25\" style=\"background-color: rgb(" + rot +",0," + blau + ");\">  </td>");
                blau += 12;
            }
            Response.Write("</tr>");
            rot += 12;
        }
        %>
</table>
</body>
</html>

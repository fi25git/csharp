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
        for (int i = 0; i < 10; i++)
        {
            Response.Write("<tr></tr>");
            for (int j = 0; j < 10; j++)
            {
                Response.Write("<td bgcolor=#000000>...</td>");
            }
            //Response.Write("<br>");
        }
                %>
        </table>
        
</body>
</html>

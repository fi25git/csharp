<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="klann.aspx.cs" Inherits="WebApplication1.klann" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <% 
        for (int i = 0; i < 20; i++)
        {
            Response.Write("<tr></tr>");
            for (int j = 0; i < 20; i++)
            {
                Response.Write("<td></td>");
            }
            Response.Write("<br>");
        }
        %>
</body>
</html>

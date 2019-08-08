<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eckart.aspx.cs" Inherits="WebApplication1.eckart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <%Response.Write("Hallo Asp"); %>
    <i>Was ist?</i>
    <%
        for (int i = 0; i < 20; i++)
        {
            for (int j = 0; j < 20; j++)
            {
                Response.Write(i);
            }
            Response.Write("<br>");
            
        } %>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dzallmanzig.aspx.cs" Inherits="WebApplication1.dzallmanzig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <table border="1">
    <%
        int R = 255;
        int G = 0;
        int B = 0;
        for (int i = 0; i < 255; i++)
        {
            R++;
            G++;
            B++;
            Response.Write("<tr></tr>");
            for (int j = 0; j < 255; j++)
            {
                Response.Write("<td bgcolor=R:"+R+",G:"+G+",B:"+B+">.</td>");
            }
        }


    %> 
    </table>
</body>
</html>

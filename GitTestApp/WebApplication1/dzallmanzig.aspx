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
        int R = 0;
        int G = 255;
        int B = 0;

        for (int i = 0; i < 25; i++)
        {
            Response.Write("<tr>");
            
            for (int j = 0; j < 25; j++)
            {
                //Response.Write("<td bgcolor=rgb("+R+","+G+","+B+")>....</td>");
                Response.Write("<td bgcolor=#" + (((i*10)<<16)|(G<<8)|(j*10)).ToString("X6") + ">....</td>");
                
            }
            
            Response.Write("</tr>");
        }


    %> 
    </table>
</body>
</html>

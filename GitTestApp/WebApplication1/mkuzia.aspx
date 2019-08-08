<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mkuzia.aspx.cs" Inherits="WebApplication1.mkuzia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <%        
        for (int i = 0; i<10;i++)
        {
            Response.Write("<tr>");
            for(int j = 0; j<10; j++)
            {
                Response.Write("<th> ... </th>");
            }
            Response.Write("</tr><br>");
        }
        %>

</body>
</html>

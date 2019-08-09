<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mkuzia.aspx.cs" Inherits="WebApplication1.mkuzia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Farbverlauf Tabelle</h1>
                <p>
            <asp:Label ID="Label1" runat="server" Text="Rotanteil"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="96px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Grünanteil"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="96px"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Blauanteil"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="96px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" name="sender" runat="server" Height="26px" Text="Farbverlauf" />
        </p>
    <table  >
    <%     
        if(Request["Button1"] == "Farbverlauf")
        {
            if (Request["TextBox1"] != "" && Request["TextBox2"] != "" && Request["TextBox3"] != "")
            {
                int rot = Convert.ToInt32(Request["TextBox1"]);
                int grün = Convert.ToInt32(Request["TextBox2"]);
                int blau = Convert.ToInt32(Request["TextBox3"]);
                
                for (int i = 0; i < 20; i++)
                {
                   int temp = blau;
                    Response.Write("<tr>");
                    for (int j = 0; j < 20; j++)
                    {
                        Response.Write("<td width=\"25\" height=\"25\" style=\"background-color: rgb(" + rot + ", " + grün + "," + temp + ");\">  </td>");
                        temp += 12;
                    }
                    Response.Write("</tr>");
                    rot += 12;
                }
            }
        }
        %>
</table>
    </form>
</body>
</html>

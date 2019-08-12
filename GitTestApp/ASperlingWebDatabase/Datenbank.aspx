<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datenbank.aspx.cs" Inherits="ASperlingWebDatabase.Datenbank" %>
<%@ Import Namespace="ASperlingWebDatabase" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        table tr td:last-child {
            text-align: right;
        }
        .form_row {
            margin-bottom:7px;
        }
        label {
            display: inline-block;
            width: 80px;
        }
    </style>
</head>
<body>
    <h1>Datenbank mit .aspx</h1>
    <div style="float:left; width:30%;">
        <form id="form1" runat="server">
            <fieldset>
                <legend>Verbindung zur Datenbank</legend>
                <div class="form_row">
                    <label for="dbserver">Server:</label>
                    <asp:TextBox ID="dbserver" runat="server" Text="localhost"></asp:TextBox>
                </div>
                <div class="form_row">
                    <label for="port">Port:</label>
                    <asp:TextBox ID="dbport" runat="server" Text="3306"></asp:TextBox>
                </div>
                <div class="form_row">
                    <label for="dbname">Name:</label>
                    <asp:TextBox ID="dbname" runat="server" Text="simplefilm"></asp:TextBox>
                </div>
                <div class="form_row">
                    <label for="dbuser">User:</label>
                    <asp:TextBox ID="dbuser" runat="server" Text="root"></asp:TextBox>
                </div>
                <div class="form_row">
                    <label for="dbpwd">Password:</label>
                    <asp:TextBox ID="dbpwd" runat="server" Text=""></asp:TextBox>
                </div>
            </fieldset>
            <asp:Button ID="dbverbinden" runat="server" OnClick="dbVerbinden" Text="Verbinden" />
        </form><br /><br />

        <% if (DBConnect.verbindung) { %>
        <form id="form2" name="form2" method="post" action="Datenbank">
            <fieldset>
                <legend>DB-Tabellen</legend>
                <%
                List<string> tabellen = DBConnect.DBTables();
                if (tabellen[0].Equals("Zugriff zur Datenbank fehlgeschlagen"))
                {
                    Response.Write("<h3>" + tabellen[0] + "</h3>");
                    Response.Write("<p>" + tabellen[1] + "</p>");
                }
                else
                {
                %>
                    <label for="tables">Tabellen:</label>
                    <select name="tables" id="tables">
                       <option value="">Bitte wählen</option>

                <%
                foreach (string item in tabellen)
                {
                    Response.Write("<option>" + item + "</option>");
                }
                %>
                </select>
            </fieldset>
            <input type="submit" name="anfrage" value="Tabelle zeigen" />
            <% } %>
        </form>
        <% } %>
    
        <%
            string tabelle = "";
            if (Request["anfrage"] == "Tabelle zeigen")
            {
                if (Request["tables"] !="")
                {
                    tabelle = Request["tables"];
                } else
                {
                    Response.Write("<br><strong>Wählen Sie bitte eine Tabelle</strong>");
                }
            }
        %>
    </div>
    <div style="float:right; width:65%;">
        <%
            if (tabelle != "")
            {
                Response.Write("<h2>Tabelle: " + tabelle + "</h2>");
                Response.Write(DBConnect.showTabelle(tabelle));
            }
        %>
    </div>
    <div style="clear:both;"></div>
</body>
</html>

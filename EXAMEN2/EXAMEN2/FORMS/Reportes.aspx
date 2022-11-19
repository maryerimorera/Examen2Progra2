<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="EXAMEN2.FORMS.Reportes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
        .auto-style2 {
            margin-left: 315px;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF6699;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1">
                <strong><em>Registro de todas las ventas
                <br />
                </em></strong>
                <br />
            </div>
            <div>
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" Width="575px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>

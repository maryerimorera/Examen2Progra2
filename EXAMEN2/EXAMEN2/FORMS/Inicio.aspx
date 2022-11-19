<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="EXAMEN2.FORMS.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
        }
        .auto-style3 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            color: #CC33FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style4"><strong><em>SISTEMA DE REGISTRO DE VENTAS</em></strong> </span>
            <br class="auto-style3" />
            <br class="auto-style2" />
            <span class="auto-style2">Por favor ingrese los siguientes datos:
            </span>
            <br class="auto-style2" />
            <br class="auto-style2" />
            <span class="auto-style2">Nombre del cajero:
            </span>
            <asp:TextBox ID="TnombreC" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br class="auto-style2" />
            <br class="auto-style2" />
            <span class="auto-style2">Nombre del producto:
            </span>
            <asp:TextBox ID="TnombreP" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br class="auto-style2" />
            <br class="auto-style2" />
            <span class="auto-style2">Precio:
            </span>
            <asp:TextBox ID="Tprecio" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br class="auto-style2" />
            <br class="auto-style2" />
            <span class="auto-style2">Piso:
            </span>
            <asp:TextBox ID="Tpiso" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br class="auto-style2" />
            <br class="auto-style2" />
            <asp:Button ID="Bguardar" runat="server" Text="Guardar" OnClick="Bguardar_Click" CssClass="auto-style2" />
            <br class="auto-style2" />
            <br class="auto-style2" />
            <br class="auto-style2" />
        </div>
        <p class="auto-style1">
            <asp:Label ID="lmensaje" runat="server" Text=" "></asp:Label>

            <asp:Button ID="Bregistro" runat="server" Text="Ver Registro" OnClick="Bregistro_Click" CssClass="auto-style2" />
        </p>
    </form>
</body>
</html>

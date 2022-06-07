<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #formulario{
            width:25%;
            margin:auto;
            padding:5%;
            padding-top:1%;
            border: 1px solid black;
            background-color:white;
        }
        body{
            background-color:whitesmoke;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div id="formulario">
            <h3 style="text-align:center">PIZZERIA ITALIA</h3>
            <asp:Label ID="Label1" runat="server" Text="Seleccione tamaño"></asp:Label>

            <br />
            <asp:RadioButtonList ID="rBtnTamano" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem Value="3500" Selected="True">Individual</asp:ListItem>
                <asp:ListItem Value="8500">Familiar</asp:ListItem>
                <asp:ListItem Value="15000">Extra Grande</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Cantidad a pagar: $"></asp:Label>
            <asp:Label ID="txtCantidad" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Seleccione ingrediente adicional ($1.500)"></asp:Label>
            <asp:CheckBoxList ID="cbIngredientes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cbIngredientes_SelectedIndexChanged">
                <asp:ListItem Value="1500">Mozzarella</asp:ListItem>
                <asp:ListItem Value="1500">Jamon</asp:ListItem>
                <asp:ListItem Value="1500">Salame</asp:ListItem>
                <asp:ListItem Value="1500">Champiñones</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Usted selecciono: "></asp:Label>
            
            <asp:TextBox ID="tBoxIngredientes" runat="server" text="" ReadOnly="True" TextMode="MultiLine" Wrap="False" AutoPostBack="True" OnTextChanged="tBoxIngredientes_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Extras "></asp:Label>
            <asp:DropDownList ID="ddExtras" runat="server" AutoPostBack="True">
                <asp:ListItem Value="2400">Bebida ($2400)</asp:ListItem>
                <asp:ListItem Value="1200">Cerveza ($1200)</asp:ListItem>
                <asp:ListItem Value="3800">Ensalada ($3800)</asp:ListItem>
                <asp:ListItem Value="2000">Papas fritas ($2000)</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="TOTAL A PAGAR: "></asp:Label>
            <asp:Label ID="txtTotal" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
        </div>
    </form>
</body>
</html>

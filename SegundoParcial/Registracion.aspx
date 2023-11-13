<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="SegundoParcial.Registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <link href="estilosFormulario1.css" rel="stylesheet" />
    <style type="text/css">
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="tabla1" >
  <tr>
    <td class="t1">
        <asp:Label ID="Label1" runat="server" Text="Label">Mail:</asp:Label>  </td><td  >
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar una dirección de mail." ForeColor="#FF3300" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="La dirección de mail ingresada no es válida." ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
      </td>
  </tr>
  <tr>
      <td class="t1">
    <asp:Label ID="Label2" runat="server" Text="Label">Usuario:</asp:Label>  </td><td class="auto-style1">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar un nombre de usuario." ForeColor="#FF3300" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
      </td>
  </tr>
        <tr>
    <td class="t1">
  <asp:Label ID="Label3" runat="server" Text="Label">Edad:</asp:Label>  </td><td class="auto-style1">
  <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar su edad." ForeColor="#FF3300" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Debe ser mayor de 15 años para ingresar." ForeColor="#FF3300" MaximumValue="150" MinimumValue="15" Type="Integer">*</asp:RangeValidator>
            </td>
</tr>
                <tr>
    <td class="t1">
  <asp:Label ID="Label4" runat="server" Text="Label">Contraseña:</asp:Label>  </td><td class="auto-style1">
  <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar contraseña." ForeColor="#FF3300" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    </td>
</tr>
                        <tr>
    <td class="t1">
  <asp:Label ID="Label5" runat="server" Text="Label">Repita la Contraseña:</asp:Label>  </td><td class="auto-style1">
  <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>  
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe repetir la contraseña ingresada." ForeColor="#FF3300" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Las contraseñas ingresadas son diferentes." ForeColor="#FF3300">*</asp:CompareValidator>
                            </td>
</tr>
              
        </table>
    <table id="tabla2">
                        <tr>
    <td class="t2">
    <asp:Button ID="Button1" runat="server" Text="Aceptar" OnClick="Button1_Click" />

    </td>
</tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
            </td>
        </tr>
</table>
    <br />
</asp:Content>

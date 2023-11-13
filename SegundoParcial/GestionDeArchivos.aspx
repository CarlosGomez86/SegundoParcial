<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="GestionDeArchivos.aspx.cs" Inherits="SegundoParcial.GestionDeArchivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="estilosFormulario2.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<br />
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Italic="True" Font-Bold="True">Subir archivo</asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
            </td>
        </tr>
        <tr>

            <td>
                <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>

            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Descargar" HeaderText="Descargar" ShowHeader="True" Text="Descargar" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
    </table>



</asp:Content>

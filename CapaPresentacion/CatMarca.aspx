<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="CatMarca.aspx.cs" Inherits="CapaPresentacion.CatMarca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Cátalogo marcas (catálogo primario)</h1>
        <div class="form-group">
            <label>Nombre marca</label>
            <asp:TextBox Id="txtNombreMarca" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button Id="btnGuardar" CssClass="btn btn-danger" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />&nbsp 
            <asp:Button Id="btnVerMarcas" CssClass="btn btn-success" runat="server" Text="Ver catálogos" OnClick="btnVerMarcas_Click" />
        </div>
    </div>

</asp:Content>

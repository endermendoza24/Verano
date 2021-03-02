<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="catProveedores.aspx.cs" Inherits="CapaPresentacion.catalogos.catProveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Registrar proveedor</h2>
        <div class="form-group">
            <label>Nombre proveedor</label>
            <asp:TextBox ID="txtNombreProveedor" CssClass="form-control" placeholder="Nombre proveedor" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Correo</label>
            <input type="email" id="txtCorreo" class="form-control" placeholder="Correo" runat="server" />
        </div>
        <div class="form-group">
            <label>Teléfono</label>
            <input type="tel" id="txtTele" class="form-control" placeholder="Teléfono" runat="server" />
        </div>
        <div class="form-group">
            <label>Ciudad</label>
            <asp:TextBox ID="txtCiudad" placeholder="Ciudad" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="btnGuardar" CssClass="btn btn-danger" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />&nbsp
        <asp:Button ID="btnVerProveedores" runat="server" Text="Ver´proveedores" CssClass="btn btn-success" OnClick="btnVerProveedores_Click" />

    </div>
</asp:Content>

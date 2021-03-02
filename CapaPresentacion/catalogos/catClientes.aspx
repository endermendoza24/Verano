<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="catClientes.aspx.cs" Inherits="CapaPresentacion.catalogos.catClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Clientes</h2>
        <div class="form-group">
            <label>Clientes</label>
            <asp:TextBox ID="txtNumCedula" CssClass="form-control" placeholder="Número de cédula" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Nombre</label>
            <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Apellido</label>
            <asp:TextBox ID="txtApelido" CssClass="form-control" placeholder="Apellido" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="btnGuardar" CssClass="btn btn-danger" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />&nbsp
        <asp:Button ID="btnVerCLientes" CssClass="btn btn-success" runat="server" Text="Ver clientes" OnClick="btnVerCLientes_Click" />
    </div>
</asp:Content>
